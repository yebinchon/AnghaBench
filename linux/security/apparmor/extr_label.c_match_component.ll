; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_match_component.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_match_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_profile*, i32)* @match_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_component(%struct.aa_profile* %0, %struct.aa_profile* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %5, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %10 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %13 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %18 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %23 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @aa_dfa_match(i32 %20, i32 %21, i8* %25)
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %29 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %32 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @aa_ns_name(i64 %30, i64 %33, i32 1)
  store i8* %34, i8** %8, align 8
  %35 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %36 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @aa_dfa_match_len(i32 %38, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %42 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @aa_dfa_match(i32 %44, i32 %45, i8* %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %49 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @aa_dfa_match_len(i32 %51, i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %55 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %60 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @aa_dfa_match(i32 %57, i32 %58, i8* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %27, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @aa_dfa_match(i32, i32, i8*) #1

declare dso_local i8* @aa_ns_name(i64, i64, i32) #1

declare dso_local i32 @aa_dfa_match_len(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
