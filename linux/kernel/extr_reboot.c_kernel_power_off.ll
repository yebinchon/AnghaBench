; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_reboot.c_kernel_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_reboot.c_kernel_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEM_POWER_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Power down\0A\00", align 1
@KMSG_DUMP_POWEROFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_power_off() #0 {
  %1 = load i32, i32* @SYSTEM_POWER_OFF, align 4
  %2 = call i32 @kernel_shutdown_prepare(i32 %1)
  br i1 true, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @pm_power_off_prepare()
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @migrate_to_reboot_cpu()
  %7 = call i32 (...) @syscore_shutdown()
  %8 = call i32 @pr_emerg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @KMSG_DUMP_POWEROFF, align 4
  %10 = call i32 @kmsg_dump(i32 %9)
  %11 = call i32 (...) @machine_power_off()
  ret void
}

declare dso_local i32 @kernel_shutdown_prepare(i32) #1

declare dso_local i32 @pm_power_off_prepare(...) #1

declare dso_local i32 @migrate_to_reboot_cpu(...) #1

declare dso_local i32 @syscore_shutdown(...) #1

declare dso_local i32 @pr_emerg(i8*) #1

declare dso_local i32 @kmsg_dump(i32) #1

declare dso_local i32 @machine_power_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
