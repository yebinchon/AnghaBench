; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_replacement_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_replacement_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FLAG_IMMUTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot replace immutible profile\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"profile already exists\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, i32, i8**)* @replacement_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replacement_allowed(%struct.aa_profile* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %9 = icmp ne %struct.aa_profile* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %12 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FLAG_IMMUTIBLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %32

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30, %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %25, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
