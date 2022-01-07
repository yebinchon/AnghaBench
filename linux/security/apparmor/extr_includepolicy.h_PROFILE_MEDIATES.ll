; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy.h_PROFILE_MEDIATES.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy.h_PROFILE_MEDIATES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@AA_CLASS_LAST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, i8)* @PROFILE_MEDIATES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROFILE_MEDIATES(%struct.aa_profile* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca i8, align 1
  store %struct.aa_profile* %0, %struct.aa_profile** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @AA_CLASS_LAST, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sle i32 %7, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %13 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %22 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %26 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @aa_dfa_match_len(i32 %24, i32 %30, i8* %5, i32 1)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %20, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @aa_dfa_match_len(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
