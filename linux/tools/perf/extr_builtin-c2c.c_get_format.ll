; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_fmt = type { %struct.perf_hpp_fmt, %struct.c2c_dimension* }
%struct.perf_hpp_fmt = type { i8*, i32, i32, i32, i32, i32, i32*, i8*, i8*, i32, i32 }
%struct.c2c_dimension = type { i8*, i64, i32, i32* }

@c2c_se_cmp = common dso_local global i8* null, align 8
@c2c_se_entry = common dso_local global i32 0, align 4
@c2c_header = common dso_local global i32 0, align 4
@c2c_width = common dso_local global i32 0, align 4
@c2c_se_collapse = common dso_local global i8* null, align 8
@fmt_equal = common dso_local global i32 0, align 4
@fmt_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c2c_fmt* (i8*)* @get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c2c_fmt* @get_format(i8* %0) #0 {
  %2 = alloca %struct.c2c_fmt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.c2c_dimension*, align 8
  %5 = alloca %struct.c2c_fmt*, align 8
  %6 = alloca %struct.perf_hpp_fmt*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.c2c_dimension* @get_dimension(i8* %7)
  store %struct.c2c_dimension* %8, %struct.c2c_dimension** %4, align 8
  %9 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %10 = icmp ne %struct.c2c_dimension* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.c2c_fmt* null, %struct.c2c_fmt** %2, align 8
  br label %111

12:                                               ; preds = %1
  %13 = call %struct.c2c_fmt* @zalloc(i32 72)
  store %struct.c2c_fmt* %13, %struct.c2c_fmt** %5, align 8
  %14 = load %struct.c2c_fmt*, %struct.c2c_fmt** %5, align 8
  %15 = icmp ne %struct.c2c_fmt* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store %struct.c2c_fmt* null, %struct.c2c_fmt** %2, align 8
  br label %111

17:                                               ; preds = %12
  %18 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %19 = load %struct.c2c_fmt*, %struct.c2c_fmt** %5, align 8
  %20 = getelementptr inbounds %struct.c2c_fmt, %struct.c2c_fmt* %19, i32 0, i32 1
  store %struct.c2c_dimension* %18, %struct.c2c_dimension** %20, align 8
  %21 = load %struct.c2c_fmt*, %struct.c2c_fmt** %5, align 8
  %22 = getelementptr inbounds %struct.c2c_fmt, %struct.c2c_fmt* %21, i32 0, i32 0
  store %struct.perf_hpp_fmt* %22, %struct.perf_hpp_fmt** %6, align 8
  %23 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %24 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %23, i32 0, i32 10
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %27 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %26, i32 0, i32 9
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %30 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i8*, i8** @c2c_se_cmp, align 8
  br label %39

35:                                               ; preds = %17
  %36 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %37 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i8* [ %34, %33 ], [ %38, %35 ]
  %41 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %42 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %44 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i8*, i8** @c2c_se_cmp, align 8
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %51 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i8* [ %48, %47 ], [ %52, %49 ]
  %55 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %56 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %58 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %64 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  br label %66

66:                                               ; preds = %62, %61
  %67 = phi i32* [ null, %61 ], [ %65, %62 ]
  %68 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %69 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %68, i32 0, i32 6
  store i32* %67, i32** %69, align 8
  %70 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %71 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @c2c_se_entry, align 4
  br label %80

76:                                               ; preds = %66
  %77 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %78 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i32 [ %75, %74 ], [ %79, %76 ]
  %82 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %83 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @c2c_header, align 4
  %85 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %86 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @c2c_width, align 4
  %88 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %89 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %91 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = load i8*, i8** @c2c_se_collapse, align 8
  br label %100

96:                                               ; preds = %80
  %97 = load %struct.c2c_dimension*, %struct.c2c_dimension** %4, align 8
  %98 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i8* [ %95, %94 ], [ %99, %96 ]
  %102 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %103 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @fmt_equal, align 4
  %105 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %106 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @fmt_free, align 4
  %108 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %109 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.c2c_fmt*, %struct.c2c_fmt** %5, align 8
  store %struct.c2c_fmt* %110, %struct.c2c_fmt** %2, align 8
  br label %111

111:                                              ; preds = %100, %16, %11
  %112 = load %struct.c2c_fmt*, %struct.c2c_fmt** %2, align 8
  ret %struct.c2c_fmt* %112
}

declare dso_local %struct.c2c_dimension* @get_dimension(i8*) #1

declare dso_local %struct.c2c_fmt* @zalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
