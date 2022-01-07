; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_output_field_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_output_field_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_dimension = type { i32 }
%struct.perf_hpp_list = type { i32 }
%struct.hpp_dimension = type { i32 }

@common_sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@hpp_sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@bstack_sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@memory_sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @output_field_add(%struct.perf_hpp_list* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_hpp_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sort_dimension*, align 8
  %8 = alloca %struct.hpp_dimension*, align 8
  %9 = alloca %struct.sort_dimension*, align 8
  %10 = alloca %struct.sort_dimension*, align 8
  store %struct.perf_hpp_list* %0, %struct.perf_hpp_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.sort_dimension*, %struct.sort_dimension** @common_sort_dimensions, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.sort_dimension*, %struct.sort_dimension** @common_sort_dimensions, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %17, i64 %19
  store %struct.sort_dimension* %20, %struct.sort_dimension** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.sort_dimension*, %struct.sort_dimension** %7, align 8
  %23 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i64 @strncasecmp(i8* %21, i32 %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %34

30:                                               ; preds = %16
  %31 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %32 = load %struct.sort_dimension*, %struct.sort_dimension** %7, align 8
  %33 = call i32 @__sort_dimension__add_output(%struct.perf_hpp_list* %31, %struct.sort_dimension* %32)
  store i32 %33, i32* %3, align 4
  br label %123

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %11

37:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sort_dimension*, %struct.sort_dimension** @hpp_sort_dimensions, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %40)
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load %struct.sort_dimension*, %struct.sort_dimension** @hpp_sort_dimensions, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %44, i64 %46
  %48 = bitcast %struct.sort_dimension* %47 to %struct.hpp_dimension*
  store %struct.hpp_dimension* %48, %struct.hpp_dimension** %8, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.hpp_dimension*, %struct.hpp_dimension** %8, align 8
  %51 = getelementptr inbounds %struct.hpp_dimension, %struct.hpp_dimension* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i64 @strncasecmp(i8* %49, i32 %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %63

58:                                               ; preds = %43
  %59 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %60 = load %struct.hpp_dimension*, %struct.hpp_dimension** %8, align 8
  %61 = bitcast %struct.hpp_dimension* %60 to %struct.sort_dimension*
  %62 = call i32 @__hpp_dimension__add_output(%struct.perf_hpp_list* %59, %struct.sort_dimension* %61)
  store i32 %62, i32* %3, align 4
  br label %123

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %38

66:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.sort_dimension*, %struct.sort_dimension** @bstack_sort_dimensions, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %69)
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = load %struct.sort_dimension*, %struct.sort_dimension** @bstack_sort_dimensions, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %73, i64 %75
  store %struct.sort_dimension* %76, %struct.sort_dimension** %9, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.sort_dimension*, %struct.sort_dimension** %9, align 8
  %79 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = call i64 @strncasecmp(i8* %77, i32 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %90

86:                                               ; preds = %72
  %87 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %88 = load %struct.sort_dimension*, %struct.sort_dimension** %9, align 8
  %89 = call i32 @__sort_dimension__add_output(%struct.perf_hpp_list* %87, %struct.sort_dimension* %88)
  store i32 %89, i32* %3, align 4
  br label %123

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %67

93:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %117, %93
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.sort_dimension*, %struct.sort_dimension** @memory_sort_dimensions, align 8
  %97 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %96)
  %98 = icmp ult i32 %95, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %94
  %100 = load %struct.sort_dimension*, %struct.sort_dimension** @memory_sort_dimensions, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %100, i64 %102
  store %struct.sort_dimension* %103, %struct.sort_dimension** %10, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.sort_dimension*, %struct.sort_dimension** %10, align 8
  %106 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = call i64 @strncasecmp(i8* %104, i32 %107, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %117

113:                                              ; preds = %99
  %114 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %115 = load %struct.sort_dimension*, %struct.sort_dimension** %10, align 8
  %116 = call i32 @__sort_dimension__add_output(%struct.perf_hpp_list* %114, %struct.sort_dimension* %115)
  store i32 %116, i32* %3, align 4
  br label %123

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %94

120:                                              ; preds = %94
  %121 = load i32, i32* @ESRCH, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %113, %86, %58, %30
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @ARRAY_SIZE(%struct.sort_dimension*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__sort_dimension__add_output(%struct.perf_hpp_list*, %struct.sort_dimension*) #1

declare dso_local i32 @__hpp_dimension__add_output(%struct.perf_hpp_list*, %struct.sort_dimension*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
