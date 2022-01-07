; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_hist.c_hpp__fmt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_hist.c_hpp__fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.perf_hpp_fmt = type { i32, i64 }
%struct.perf_hpp = type { i32 }
%struct.hist_entry = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpp__fmt(%struct.perf_hpp_fmt* %0, %struct.perf_hpp* %1, %struct.hist_entry* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_hpp_fmt*, align 8
  %10 = alloca %struct.perf_hpp*, align 8
  %11 = alloca %struct.hist_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.perf_hpp_fmt* %0, %struct.perf_hpp_fmt** %9, align 8
  store %struct.perf_hpp* %1, %struct.perf_hpp** %10, align 8
  store %struct.hist_entry* %2, %struct.hist_entry** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %9, align 8
  %18 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %27

22:                                               ; preds = %7
  %23 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %9, align 8
  %24 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %22, %21
  %28 = phi i64 [ %19, %21 ], [ %26, %22 ]
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.perf_hpp*, %struct.perf_hpp** %10, align 8
  %34 = load %struct.hist_entry*, %struct.hist_entry** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @__hpp__fmt(%struct.perf_hpp* %33, %struct.hist_entry* %34, i32 %35, i8* %36, i32 1, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %58

40:                                               ; preds = %27
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %16, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.perf_hpp*, %struct.perf_hpp** %10, align 8
  %51 = load %struct.hist_entry*, %struct.hist_entry** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @__hpp__fmt(%struct.perf_hpp* %50, %struct.hist_entry* %51, i32 %52, i8* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %49, %32
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @__hpp__fmt(%struct.perf_hpp*, %struct.hist_entry*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
