; ModuleID = '/home/carl/AnghaBench/linux/security/safesetid/extr_lsm.c_safesetid_task_fix_setuid.c'
source_filename = "/home/carl/AnghaBench/linux/security/safesetid/extr_lsm.c_safesetid_task_fix_setuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, i32, i32 }

@INVALID_UID = common dso_local global i32 0, align 4
@SIDPOL_DEFAULT = common dso_local global i64 0, align 8
@SIGKILL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*, i32)* @safesetid_task_fix_setuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safesetid_task_fix_setuid(%struct.cred* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.cred*, %struct.cred** %6, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @INVALID_UID, align 4
  %12 = call i64 @setuid_policy_lookup(i32 %10, i32 %11)
  %13 = load i64, i64* @SIDPOL_DEFAULT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load %struct.cred*, %struct.cred** %6, align 8
  %18 = load %struct.cred*, %struct.cred** %5, align 8
  %19 = getelementptr inbounds %struct.cred, %struct.cred* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @uid_permitted_for_cred(%struct.cred* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.cred*, %struct.cred** %6, align 8
  %25 = load %struct.cred*, %struct.cred** %5, align 8
  %26 = getelementptr inbounds %struct.cred, %struct.cred* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @uid_permitted_for_cred(%struct.cred* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.cred*, %struct.cred** %6, align 8
  %32 = load %struct.cred*, %struct.cred** %5, align 8
  %33 = getelementptr inbounds %struct.cred, %struct.cred* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @uid_permitted_for_cred(%struct.cred* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.cred*, %struct.cred** %6, align 8
  %39 = load %struct.cred*, %struct.cred** %5, align 8
  %40 = getelementptr inbounds %struct.cred, %struct.cred* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @uid_permitted_for_cred(%struct.cred* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %50

45:                                               ; preds = %37, %30, %23, %16
  %46 = load i32, i32* @SIGKILL, align 4
  %47 = call i32 @force_sig(i32 %46)
  %48 = load i32, i32* @EACCES, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %44, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @setuid_policy_lookup(i32, i32) #1

declare dso_local i64 @uid_permitted_for_cred(%struct.cred*, i32) #1

declare dso_local i32 @force_sig(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
