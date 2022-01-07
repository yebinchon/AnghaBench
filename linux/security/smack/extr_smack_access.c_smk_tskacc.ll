; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_tskacc.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_tskacc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_smack = type { i32 }
%struct.smack_known = type { i32 }
%struct.smk_audit_info = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@CAP_MAC_OVERRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smk_tskacc(%struct.task_smack* %0, %struct.smack_known* %1, i32 %2, %struct.smk_audit_info* %3) #0 {
  %5 = alloca %struct.task_smack*, align 8
  %6 = alloca %struct.smack_known*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smk_audit_info*, align 8
  %9 = alloca %struct.smack_known*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.task_smack* %0, %struct.task_smack** %5, align 8
  store %struct.smack_known* %1, %struct.smack_known** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.smk_audit_info* %3, %struct.smk_audit_info** %8, align 8
  %12 = load %struct.task_smack*, %struct.task_smack** %5, align 8
  %13 = call %struct.smack_known* @smk_of_task(%struct.task_smack* %12)
  store %struct.smack_known* %13, %struct.smack_known** %9, align 8
  %14 = load %struct.smack_known*, %struct.smack_known** %9, align 8
  %15 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @smk_access(%struct.smack_known* %14, %struct.smack_known* %15, i32 %16, i32* null)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %4
  %21 = load %struct.smack_known*, %struct.smack_known** %9, align 8
  %22 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %25 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.task_smack*, %struct.task_smack** %5, align 8
  %28 = getelementptr inbounds %struct.task_smack, %struct.task_smack* %27, i32 0, i32 0
  %29 = call i32 @smk_access_entry(i32 %23, i32 %26, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %52

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %52

40:                                               ; preds = %33
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @CAP_MAC_OVERRIDE, align 4
  %48 = call i64 @smack_privileged(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %50, %46, %43
  br label %52

52:                                               ; preds = %51, %39, %32
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local %struct.smack_known* @smk_of_task(%struct.task_smack*) #1

declare dso_local i32 @smk_access(%struct.smack_known*, %struct.smack_known*, i32, i32*) #1

declare dso_local i32 @smk_access_entry(i32, i32, i32*) #1

declare dso_local i64 @smack_privileged(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
