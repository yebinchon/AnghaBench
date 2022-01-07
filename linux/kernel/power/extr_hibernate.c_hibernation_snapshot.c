
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_message_t ;


 int PMSG_FREEZE ;
 int PMSG_RECOVER ;
 int PMSG_RESTORE ;
 int PMSG_THAW ;
 int TEST_DEVICES ;
 int TEST_FREEZER ;
 int create_image (int) ;
 int dpm_complete (int ) ;
 int dpm_prepare (int ) ;
 int dpm_resume (int ) ;
 int dpm_suspend (int ) ;
 int freeze_kernel_threads () ;
 int freezer_test_done ;
 int hibernate_preallocate_memory () ;
 scalar_t__ hibernation_test (int ) ;
 scalar_t__ in_suspend ;
 int platform_begin (int) ;
 int platform_end (int) ;
 int platform_recover (int) ;
 int pm_restore_gfp_mask () ;
 int pm_restrict_gfp_mask () ;
 int pm_suspend_clear_flags () ;
 int resume_console () ;
 int suspend_console () ;
 int swsusp_free () ;
 int thaw_kernel_threads () ;

int hibernation_snapshot(int platform_mode)
{
 pm_message_t msg;
 int error;

 pm_suspend_clear_flags();
 error = platform_begin(platform_mode);
 if (error)
  goto Close;


 error = hibernate_preallocate_memory();
 if (error)
  goto Close;

 error = freeze_kernel_threads();
 if (error)
  goto Cleanup;

 if (hibernation_test(TEST_FREEZER)) {





  freezer_test_done = 1;
  goto Thaw;
 }

 error = dpm_prepare(PMSG_FREEZE);
 if (error) {
  dpm_complete(PMSG_RECOVER);
  goto Thaw;
 }

 suspend_console();
 pm_restrict_gfp_mask();

 error = dpm_suspend(PMSG_FREEZE);

 if (error || hibernation_test(TEST_DEVICES))
  platform_recover(platform_mode);
 else
  error = create_image(platform_mode);
 if (error || !in_suspend)
  swsusp_free();

 msg = in_suspend ? (error ? PMSG_RECOVER : PMSG_THAW) : PMSG_RESTORE;
 dpm_resume(msg);

 if (error || !in_suspend)
  pm_restore_gfp_mask();

 resume_console();
 dpm_complete(msg);

 Close:
 platform_end(platform_mode);
 return error;

 Thaw:
 thaw_kernel_threads();
 Cleanup:
 swsusp_free();
 goto Close;
}
