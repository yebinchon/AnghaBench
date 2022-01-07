; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_write_svg_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_write_svg_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32, i64, i32, i32, i32, i32, i32, i64, i64 }

@BYTES_THRESH = common dso_local global i32 0, align 4
@TIME_THRESH = common dso_local global i32 0, align 4
@process_filter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*, i8*)* @write_svg_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_svg_file(%struct.timechart* %0, i8* %1) #0 {
  %3 = alloca %struct.timechart*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timechart* %0, %struct.timechart** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.timechart*, %struct.timechart** %3, align 8
  %9 = getelementptr inbounds %struct.timechart, %struct.timechart* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @BYTES_THRESH, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @TIME_THRESH, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %7, align 4
  %18 = load %struct.timechart*, %struct.timechart** %3, align 8
  %19 = getelementptr inbounds %struct.timechart, %struct.timechart* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.timechart*, %struct.timechart** %3, align 8
  %24 = getelementptr inbounds %struct.timechart, %struct.timechart* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %61, %25
  %27 = load i64, i64* @process_filter, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.timechart*, %struct.timechart** %3, align 8
  %31 = call i32 @determine_display_tasks_filtered(%struct.timechart* %30)
  store i32 %31, i32* %6, align 4
  br label %46

32:                                               ; preds = %26
  %33 = load %struct.timechart*, %struct.timechart** %3, align 8
  %34 = getelementptr inbounds %struct.timechart, %struct.timechart* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.timechart*, %struct.timechart** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @determine_display_io_tasks(%struct.timechart* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.timechart*, %struct.timechart** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @determine_display_tasks(%struct.timechart* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, 10
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @process_filter, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.timechart*, %struct.timechart** %3, align 8
  %58 = getelementptr inbounds %struct.timechart, %struct.timechart* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br label %61

61:                                               ; preds = %55, %52, %49
  %62 = phi i1 [ false, %52 ], [ false, %49 ], [ %60, %55 ]
  br i1 %62, label %26, label %63

63:                                               ; preds = %61
  %64 = load %struct.timechart*, %struct.timechart** %3, align 8
  %65 = getelementptr inbounds %struct.timechart, %struct.timechart* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load %struct.timechart*, %struct.timechart** %3, align 8
  %71 = getelementptr inbounds %struct.timechart, %struct.timechart* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.timechart*, %struct.timechart** %3, align 8
  %78 = getelementptr inbounds %struct.timechart, %struct.timechart* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.timechart*, %struct.timechart** %3, align 8
  %81 = getelementptr inbounds %struct.timechart, %struct.timechart* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @open_svg(i8* %75, i64 0, i32 %76, i32 %79, i32 %82)
  %84 = call i32 @svg_time_grid(double 5.000000e-01)
  %85 = call i32 (...) @svg_io_legenda()
  %86 = load %struct.timechart*, %struct.timechart** %3, align 8
  %87 = call i32 @draw_io_bars(%struct.timechart* %86)
  br label %148

88:                                               ; preds = %69
  %89 = load i8*, i8** %4, align 8
  %90 = load %struct.timechart*, %struct.timechart** %3, align 8
  %91 = getelementptr inbounds %struct.timechart, %struct.timechart* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.timechart*, %struct.timechart** %3, align 8
  %95 = getelementptr inbounds %struct.timechart, %struct.timechart* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.timechart*, %struct.timechart** %3, align 8
  %98 = getelementptr inbounds %struct.timechart, %struct.timechart* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @open_svg(i8* %89, i64 %92, i32 %93, i32 %96, i32 %99)
  %101 = call i32 @svg_time_grid(double 0.000000e+00)
  %102 = call i32 (...) @svg_legenda()
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %118, %88
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.timechart*, %struct.timechart** %3, align 8
  %106 = getelementptr inbounds %struct.timechart, %struct.timechart* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.timechart*, %struct.timechart** %3, align 8
  %112 = getelementptr inbounds %struct.timechart, %struct.timechart* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.timechart*, %struct.timechart** %3, align 8
  %115 = getelementptr inbounds %struct.timechart, %struct.timechart* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @svg_cpu_box(i64 %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i64, i64* %5, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %103

121:                                              ; preds = %103
  %122 = load %struct.timechart*, %struct.timechart** %3, align 8
  %123 = call i32 @draw_cpu_usage(%struct.timechart* %122)
  %124 = load %struct.timechart*, %struct.timechart** %3, align 8
  %125 = getelementptr inbounds %struct.timechart, %struct.timechart* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.timechart*, %struct.timechart** %3, align 8
  %130 = call i32 @draw_process_bars(%struct.timechart* %129)
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.timechart*, %struct.timechart** %3, align 8
  %133 = getelementptr inbounds %struct.timechart, %struct.timechart* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load %struct.timechart*, %struct.timechart** %3, align 8
  %138 = call i32 @draw_c_p_states(%struct.timechart* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load %struct.timechart*, %struct.timechart** %3, align 8
  %141 = getelementptr inbounds %struct.timechart, %struct.timechart* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.timechart*, %struct.timechart** %3, align 8
  %146 = call i32 @draw_wakeups(%struct.timechart* %145)
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %147, %74
  %149 = call i32 (...) @svg_close()
  ret void
}

declare dso_local i32 @determine_display_tasks_filtered(%struct.timechart*) #1

declare dso_local i32 @determine_display_io_tasks(%struct.timechart*, i32) #1

declare dso_local i32 @determine_display_tasks(%struct.timechart*, i32) #1

declare dso_local i32 @open_svg(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @svg_time_grid(double) #1

declare dso_local i32 @svg_io_legenda(...) #1

declare dso_local i32 @draw_io_bars(%struct.timechart*) #1

declare dso_local i32 @svg_legenda(...) #1

declare dso_local i32 @svg_cpu_box(i64, i32, i32) #1

declare dso_local i32 @draw_cpu_usage(%struct.timechart*) #1

declare dso_local i32 @draw_process_bars(%struct.timechart*) #1

declare dso_local i32 @draw_c_p_states(%struct.timechart*) #1

declare dso_local i32 @draw_wakeups(%struct.timechart*) #1

declare dso_local i32 @svg_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
