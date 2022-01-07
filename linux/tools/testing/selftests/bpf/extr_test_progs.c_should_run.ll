; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_should_run.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_should_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_selector = type { i32, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_selector*, i32, i8*)* @should_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_run(%struct.test_selector* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_selector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.test_selector* %0, %struct.test_selector** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.test_selector*, %struct.test_selector** %5, align 8
  %9 = getelementptr inbounds %struct.test_selector, %struct.test_selector* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.test_selector*, %struct.test_selector** %5, align 8
  %14 = getelementptr inbounds %struct.test_selector, %struct.test_selector* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.test_selector*, %struct.test_selector** %5, align 8
  %22 = getelementptr inbounds %struct.test_selector, %struct.test_selector* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @strstr(i8* %20, i64* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %51

27:                                               ; preds = %19, %12, %3
  %28 = load %struct.test_selector*, %struct.test_selector** %5, align 8
  %29 = getelementptr inbounds %struct.test_selector, %struct.test_selector* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %51

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.test_selector*, %struct.test_selector** %5, align 8
  %36 = getelementptr inbounds %struct.test_selector, %struct.test_selector* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.test_selector*, %struct.test_selector** %5, align 8
  %41 = getelementptr inbounds %struct.test_selector, %struct.test_selector* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %39, %33
  %49 = phi i1 [ false, %33 ], [ %47, %39 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %32, %26
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @strstr(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
