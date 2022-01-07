; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c___aa_lookupn_ns.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c___aa_lookupn_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_ns* @__aa_lookupn_ns(%struct.aa_ns* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.aa_ns*, align 8
  %5 = alloca %struct.aa_ns*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.aa_ns*, align 8
  %9 = alloca i8*, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  store %struct.aa_ns* %10, %struct.aa_ns** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i8* @strnstr(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %12)
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %19 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %18, i32 0, i32 0
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = call %struct.aa_ns* @__aa_findn_ns(i32* %19, i8* %20, i64 %25)
  store %struct.aa_ns* %26, %struct.aa_ns** %8, align 8
  %27 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %28 = icmp ne %struct.aa_ns* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  store %struct.aa_ns* null, %struct.aa_ns** %4, align 8
  br label %55

30:                                               ; preds = %17
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %30
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i8* @strnstr(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i8* %44, i8** %9, align 8
  br label %14

45:                                               ; preds = %14
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %50 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %49, i32 0, i32 0
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call %struct.aa_ns* @__aa_findn_ns(i32* %50, i8* %51, i64 %52)
  store %struct.aa_ns* %53, %struct.aa_ns** %4, align 8
  br label %55

54:                                               ; preds = %45
  store %struct.aa_ns* null, %struct.aa_ns** %4, align 8
  br label %55

55:                                               ; preds = %54, %48, %29
  %56 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  ret %struct.aa_ns* %56
}

declare dso_local i8* @strnstr(i8*, i8*, i64) #1

declare dso_local %struct.aa_ns* @__aa_findn_ns(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
