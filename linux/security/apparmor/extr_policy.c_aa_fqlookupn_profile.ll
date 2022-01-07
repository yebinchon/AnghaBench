; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_fqlookupn_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_fqlookupn_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_ns = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_profile* @aa_fqlookupn_profile(%struct.aa_label* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.aa_profile*, align 8
  %9 = alloca %struct.aa_ns*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i8* @aa_splitn_fqname(i8* %13, i64 %14, i8** %11, i64* %12)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %20 = call i32 @labels_ns(%struct.aa_label* %19)
  %21 = load i8*, i8** %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call %struct.aa_ns* @aa_lookupn_ns(i32 %20, i8* %21, i64 %22)
  store %struct.aa_ns* %23, %struct.aa_ns** %9, align 8
  %24 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %25 = icmp ne %struct.aa_ns* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store %struct.aa_profile* null, %struct.aa_profile** %4, align 8
  br label %60

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %30 = call i32 @labels_ns(%struct.aa_label* %29)
  %31 = call %struct.aa_ns* @aa_get_ns(i32 %30)
  store %struct.aa_ns* %31, %struct.aa_ns** %9, align 8
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sub i64 %38, %43
  %45 = call %struct.aa_profile* @aa_lookupn_profile(%struct.aa_ns* %36, i8* %37, i64 %44)
  store %struct.aa_profile* %45, %struct.aa_profile** %8, align 8
  br label %56

46:                                               ; preds = %32
  %47 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %48 = icmp ne %struct.aa_ns* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %51 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.aa_profile* @aa_get_newest_profile(i32 %52)
  store %struct.aa_profile* %53, %struct.aa_profile** %8, align 8
  br label %55

54:                                               ; preds = %46
  store %struct.aa_profile* null, %struct.aa_profile** %8, align 8
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55, %35
  %57 = load %struct.aa_ns*, %struct.aa_ns** %9, align 8
  %58 = call i32 @aa_put_ns(%struct.aa_ns* %57)
  %59 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  store %struct.aa_profile* %59, %struct.aa_profile** %4, align 8
  br label %60

60:                                               ; preds = %56, %26
  %61 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  ret %struct.aa_profile* %61
}

declare dso_local i8* @aa_splitn_fqname(i8*, i64, i8**, i64*) #1

declare dso_local %struct.aa_ns* @aa_lookupn_ns(i32, i8*, i64) #1

declare dso_local i32 @labels_ns(%struct.aa_label*) #1

declare dso_local %struct.aa_ns* @aa_get_ns(i32) #1

declare dso_local %struct.aa_profile* @aa_lookupn_profile(%struct.aa_ns*, i8*, i64) #1

declare dso_local %struct.aa_profile* @aa_get_newest_profile(i32) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
