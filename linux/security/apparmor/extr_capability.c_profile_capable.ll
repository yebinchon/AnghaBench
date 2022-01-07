; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_capability.c_profile_capable.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_capability.c_profile_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_4__ = type { i8* }

@EPERM = common dso_local global i32 0, align 4
@CAP_OPT_NOAUDIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"optional: no audit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, i32, i32, %struct.common_audit_data*)* @profile_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_capable(%struct.aa_profile* %0, i32 %1, i32 %2, %struct.common_audit_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.common_audit_data*, align 8
  %10 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %9, align 8
  %11 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %12 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @cap_raised(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %20 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @cap_raised(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %30

27:                                               ; preds = %18, %4
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CAP_OPT_NOAUDIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %37 = call i32 @COMPLAIN_MODE(%struct.aa_profile* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %51

41:                                               ; preds = %35
  %42 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %43 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %30
  %46 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %47 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @audit_caps(%struct.common_audit_data* %46, %struct.aa_profile* %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @cap_raised(i32, i32) #1

declare dso_local i32 @COMPLAIN_MODE(%struct.aa_profile*) #1

declare dso_local %struct.TYPE_4__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @audit_caps(%struct.common_audit_data*, %struct.aa_profile*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
