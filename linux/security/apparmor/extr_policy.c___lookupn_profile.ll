; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___lookupn_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___lookupn_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.aa_policy }
%struct.aa_policy = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_profile* (%struct.aa_policy*, i8*, i64)* @__lookupn_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_profile* @__lookupn_profile(%struct.aa_policy* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca %struct.aa_policy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.aa_profile*, align 8
  %9 = alloca i8*, align 8
  store %struct.aa_policy* %0, %struct.aa_policy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.aa_profile* null, %struct.aa_profile** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i8* @strnstr(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %11)
  store i8* %12, i8** %9, align 8
  br label %13

13:                                               ; preds = %42, %3
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load %struct.aa_policy*, %struct.aa_policy** %5, align 8
  %18 = getelementptr inbounds %struct.aa_policy, %struct.aa_policy* %17, i32 0, i32 0
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = call %struct.aa_profile* @__strn_find_child(i32* %18, i8* %19, i64 %24)
  store %struct.aa_profile* %25, %struct.aa_profile** %8, align 8
  %26 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %27 = icmp ne %struct.aa_profile* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store %struct.aa_profile* null, %struct.aa_profile** %4, align 8
  br label %56

29:                                               ; preds = %16
  %30 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %31 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %30, i32 0, i32 0
  store %struct.aa_policy* %31, %struct.aa_policy** %5, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %29
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i8* @strnstr(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i8* %45, i8** %9, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.aa_policy*, %struct.aa_policy** %5, align 8
  %51 = getelementptr inbounds %struct.aa_policy, %struct.aa_policy* %50, i32 0, i32 0
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call %struct.aa_profile* @__strn_find_child(i32* %51, i8* %52, i64 %53)
  store %struct.aa_profile* %54, %struct.aa_profile** %4, align 8
  br label %56

55:                                               ; preds = %46
  store %struct.aa_profile* null, %struct.aa_profile** %4, align 8
  br label %56

56:                                               ; preds = %55, %49, %28
  %57 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  ret %struct.aa_profile* %57
}

declare dso_local i8* @strnstr(i8*, i8*, i64) #1

declare dso_local %struct.aa_profile* @__strn_find_child(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
