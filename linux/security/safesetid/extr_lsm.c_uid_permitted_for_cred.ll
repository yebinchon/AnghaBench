; ModuleID = '/home/carl/AnghaBench/linux/security/safesetid/extr_lsm.c_uid_permitted_for_cred.c'
source_filename = "/home/carl/AnghaBench/linux/security/safesetid/extr_lsm.c_uid_permitted_for_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, i32 }

@SIDPOL_CONSTRAINED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"UID transition ((%d,%d,%d) -> %d) blocked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, i32)* @uid_permitted_for_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uid_permitted_for_cred(%struct.cred* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cred*, %struct.cred** %4, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @uid_eq(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.cred*, %struct.cred** %4, align 8
  %16 = getelementptr inbounds %struct.cred, %struct.cred* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @uid_eq(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cred*, %struct.cred** %4, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @uid_eq(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %13, %2
  store i32 1, i32* %3, align 4
  br label %57

28:                                               ; preds = %20
  %29 = load %struct.cred*, %struct.cred** %4, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @setuid_policy_lookup(i32 %31, i32 %32)
  %34 = load i64, i64* @SIDPOL_CONSTRAINED, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %28
  %40 = load %struct.cred*, %struct.cred** %4, align 8
  %41 = getelementptr inbounds %struct.cred, %struct.cred* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__kuid_val(i32 %42)
  %44 = load %struct.cred*, %struct.cred** %4, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__kuid_val(i32 %46)
  %48 = load %struct.cred*, %struct.cred** %4, align 8
  %49 = getelementptr inbounds %struct.cred, %struct.cred* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__kuid_val(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @__kuid_val(i32 %52)
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %47, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %39, %28
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %27
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @setuid_policy_lookup(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @__kuid_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
