; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_evsel.c_perf_evsel__alloc_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_evsel.c_perf_evsel__alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32*, i32*, i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__alloc_id(%struct.perf_evsel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %57

14:                                               ; preds = %10
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %16 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32* @xyarray__new(i32 %21, i32 %22, i32 4)
  %24 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %25 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %27 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %57

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32* @zalloc(i32 %39)
  %41 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %42 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %44 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %33
  %48 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %49 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @xyarray__delete(i32* %50)
  %52 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %53 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %47, %30, %13
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32* @xyarray__new(i32, i32, i32) #1

declare dso_local i32* @zalloc(i32) #1

declare dso_local i32 @xyarray__delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
