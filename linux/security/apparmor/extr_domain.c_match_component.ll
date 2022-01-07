; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_match_component.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_match_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_profile*, i32, i32)* @match_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_component(%struct.aa_profile* %0, %struct.aa_profile* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %6, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %15 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @aa_dfa_match(i32 %17, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %13, %4
  %21 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %22 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %25 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %30 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %35 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @aa_dfa_match(i32 %32, i32 %33, i8* %37)
  store i32 %38, i32* %5, align 4
  br label %76

39:                                               ; preds = %20
  %40 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %41 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %44 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @aa_ns_name(i64 %42, i64 %45, i32 1)
  store i8* %46, i8** %10, align 8
  %47 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %48 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @aa_dfa_match_len(i32 %50, i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %54 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @aa_dfa_match(i32 %56, i32 %57, i8* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %61 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @aa_dfa_match_len(i32 %63, i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %67 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %72 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @aa_dfa_match(i32 %69, i32 %70, i8* %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %39, %28
  %77 = load i32, i32* %5, align 4
  ret i32 %77
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
