; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kernel_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kernel_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@kexec_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@kexec_image = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@kexec_in_progress = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Starting new kernel\0A\00", align 1
@PMSG_FREEZE = common dso_local global i32 0, align 4
@PMSG_RESTORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_kexec() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @mutex_trylock(i32* @kexec_mutex)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @EBUSY, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %25

8:                                                ; preds = %0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kexec_image, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %8
  store i32 1, i32* @kexec_in_progress, align 4
  %15 = call i32 @kernel_restart_prepare(i32* null)
  %16 = call i32 (...) @migrate_to_reboot_cpu()
  %17 = call i32 (...) @cpu_hotplug_enable()
  %18 = call i32 @pr_emerg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @machine_shutdown()
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kexec_image, align 8
  %21 = call i32 @machine_kexec(%struct.TYPE_3__* %20)
  br label %22

22:                                               ; preds = %14, %11
  %23 = call i32 @mutex_unlock(i32* @kexec_mutex)
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %22, %5
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @kernel_restart_prepare(i32*) #1

declare dso_local i32 @migrate_to_reboot_cpu(...) #1

declare dso_local i32 @cpu_hotplug_enable(...) #1

declare dso_local i32 @pr_emerg(i8*) #1

declare dso_local i32 @machine_shutdown(...) #1

declare dso_local i32 @machine_kexec(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
