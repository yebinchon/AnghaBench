; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_reboot.c_kernel_restart.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_reboot.c_kernel_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Restarting system\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Restarting system with command '%s'\0A\00", align 1
@KMSG_DUMP_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_restart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @kernel_restart_prepare(i8* %3)
  %5 = call i32 (...) @migrate_to_reboot_cpu()
  %6 = call i32 (...) @syscore_shutdown()
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %9
  %15 = load i32, i32* @KMSG_DUMP_RESTART, align 4
  %16 = call i32 @kmsg_dump(i32 %15)
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @machine_restart(i8* %17)
  ret void
}

declare dso_local i32 @kernel_restart_prepare(i8*) #1

declare dso_local i32 @migrate_to_reboot_cpu(...) #1

declare dso_local i32 @syscore_shutdown(...) #1

declare dso_local i32 @pr_emerg(i8*, ...) #1

declare dso_local i32 @kmsg_dump(i32) #1

declare dso_local i32 @machine_restart(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
