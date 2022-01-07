; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values__findnew_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values__findnew_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32, i64*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_read_values*, i64, i8*)* @perf_read_values__findnew_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_read_values__findnew_counter(%struct.perf_read_values* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_read_values*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_read_values* %0, %struct.perf_read_values** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %12 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %17 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %68

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %33 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %36 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %41 = call i32 @perf_read_values__enlarge_counters(%struct.perf_read_values* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %68

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %49 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %54 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %52, i64* %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strdup(i8* %59)
  %61 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %62 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %47, %44, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @perf_read_values__enlarge_counters(%struct.perf_read_values*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
