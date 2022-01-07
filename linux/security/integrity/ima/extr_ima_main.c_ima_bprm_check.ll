; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_bprm_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_bprm_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@BPRM_CHECK = common dso_local global i32 0, align 4
@CREDS_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_bprm_check(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @security_task_getsecid(i32 %6, i32* %5)
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (...) @current_cred()
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAY_EXEC, align 4
  %14 = load i32, i32* @BPRM_CHECK, align 4
  %15 = call i32 @process_measurement(i32 %10, i32 %11, i32 %12, i32* null, i32 0, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %22 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @security_cred_getsecid(i32 %23, i32* %5)
  %25 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %26 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %29 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MAY_EXEC, align 4
  %33 = load i32, i32* @CREDS_CHECK, align 4
  %34 = call i32 @process_measurement(i32 %27, i32 %30, i32 %31, i32* null, i32 0, i32 %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %20, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @security_task_getsecid(i32, i32*) #1

declare dso_local i32 @process_measurement(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @security_cred_getsecid(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
