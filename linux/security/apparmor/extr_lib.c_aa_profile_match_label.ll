; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_profile_match_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_profile_match_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.aa_label = type { i32 }
%struct.aa_perms = type { i32 }

@AA_CLASS_LABEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_profile_match_label(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, i32 %3, %struct.aa_perms* %4) #0 {
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aa_perms*, align 8
  %11 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %6, align 8
  store %struct.aa_label* %1, %struct.aa_label** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.aa_perms* %4, %struct.aa_perms** %10, align 8
  %12 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %13 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %17 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @AA_CLASS_LABEL, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @aa_dfa_next(i32 %15, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %26 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.aa_perms*, %struct.aa_perms** %10, align 8
  %30 = call i32 @aa_label_match(%struct.aa_profile* %25, %struct.aa_label* %26, i32 %27, i32 0, i32 %28, %struct.aa_perms* %29)
  ret void
}

declare dso_local i32 @aa_dfa_next(i32, i32, i32) #1

declare dso_local i32 @aa_label_match(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, %struct.aa_perms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
