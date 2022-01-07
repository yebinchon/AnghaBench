; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___lookup_replace.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___lookup_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32 }
%struct.aa_profile = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"profile can not be replaced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ns*, i8*, i32, %struct.aa_profile**, i8**)* @__lookup_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lookup_replace(%struct.aa_ns* %0, i8* %1, i32 %2, %struct.aa_profile** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_ns*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.aa_profile**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.aa_ns* %0, %struct.aa_ns** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.aa_profile** %3, %struct.aa_profile*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %14 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %13, i32 0, i32 0
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @__lookup_profile(i32* %14, i8* %15)
  %17 = call %struct.aa_profile* @aa_get_profile(i32 %16)
  %18 = load %struct.aa_profile**, %struct.aa_profile*** %10, align 8
  store %struct.aa_profile* %17, %struct.aa_profile** %18, align 8
  %19 = load %struct.aa_profile**, %struct.aa_profile*** %10, align 8
  %20 = load %struct.aa_profile*, %struct.aa_profile** %19, align 8
  %21 = icmp ne %struct.aa_profile* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load %struct.aa_profile**, %struct.aa_profile*** %10, align 8
  %24 = load %struct.aa_profile*, %struct.aa_profile** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i8**, i8*** %11, align 8
  %27 = call i32 @replacement_allowed(%struct.aa_profile* %24, i32 %25, i8** %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %5
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.aa_profile* @aa_get_profile(i32) #1

declare dso_local i32 @__lookup_profile(i32*, i8*) #1

declare dso_local i32 @replacement_allowed(%struct.aa_profile*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
