; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy.h_PROFILE_MEDIATES_AF.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy.h_PROFILE_MEDIATES_AF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AA_CLASS_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, i32)* @PROFILE_MEDIATES_AF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROFILE_MEDIATES_AF(%struct.aa_profile* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %9 = load i32, i32* @AA_CLASS_NET, align 4
  %10 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cpu_to_be16(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %18 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = bitcast i32* %7 to i8*
  %23 = call i32 @aa_dfa_match_len(i32 %20, i32 %21, i8* %22, i32 2)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @aa_dfa_match_len(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
