; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_process_bars.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_process_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32, %struct.per_pid* }
%struct.per_pid = type { i32, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i8*, i32, %struct.per_pidcomm*, i32, %struct.cpu_sample*, i32, i32 }
%struct.cpu_sample = type { i64, %struct.cpu_sample*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"process\00", align 1
@TYPE_RUNNING = common dso_local global i64 0, align 8
@TYPE_BLOCKED = common dso_local global i64 0, align 8
@TYPE_WAITING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%s:%i (%2.2fs)\00", align 1
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%s:%i (%3.1fms)\00", align 1
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*)* @draw_process_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_process_bars(%struct.timechart* %0) #0 {
  %2 = alloca %struct.timechart*, align 8
  %3 = alloca %struct.per_pid*, align 8
  %4 = alloca %struct.per_pidcomm*, align 8
  %5 = alloca %struct.cpu_sample*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store %struct.timechart* %0, %struct.timechart** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.timechart*, %struct.timechart** %2, align 8
  %9 = getelementptr inbounds %struct.timechart, %struct.timechart* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 %11, 2
  store i32 %12, i32* %6, align 4
  %13 = load %struct.timechart*, %struct.timechart** %2, align 8
  %14 = getelementptr inbounds %struct.timechart, %struct.timechart* %13, i32 0, i32 1
  %15 = load %struct.per_pid*, %struct.per_pid** %14, align 8
  store %struct.per_pid* %15, %struct.per_pid** %3, align 8
  br label %16

16:                                               ; preds = %178, %1
  %17 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %18 = icmp ne %struct.per_pid* %17, null
  br i1 %18, label %19, label %182

19:                                               ; preds = %16
  %20 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %21 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %20, i32 0, i32 2
  %22 = load %struct.per_pidcomm*, %struct.per_pidcomm** %21, align 8
  store %struct.per_pidcomm* %22, %struct.per_pidcomm** %4, align 8
  br label %23

23:                                               ; preds = %169, %31, %19
  %24 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %25 = icmp ne %struct.per_pidcomm* %24, null
  br i1 %25, label %26, label %178

26:                                               ; preds = %23
  %27 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %28 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %33 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %35 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %34, i32 0, i32 3
  %36 = load %struct.per_pidcomm*, %struct.per_pidcomm** %35, align 8
  store %struct.per_pidcomm* %36, %struct.per_pidcomm** %4, align 8
  br label %23

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %40 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %43 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @svg_box(i32 %38, i32 %41, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %47 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %46, i32 0, i32 5
  %48 = load %struct.cpu_sample*, %struct.cpu_sample** %47, align 8
  store %struct.cpu_sample* %48, %struct.cpu_sample** %5, align 8
  br label %49

49:                                               ; preds = %115, %37
  %50 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %51 = icmp ne %struct.cpu_sample* %50, null
  br i1 %51, label %52, label %119

52:                                               ; preds = %49
  %53 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %54 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TYPE_RUNNING, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %61 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %64 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %67 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %70 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @svg_running(i32 %59, i32 %62, i32 %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %58, %52
  %74 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %75 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TYPE_BLOCKED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %82 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %85 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %88 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %91 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @svg_blocked(i32 %80, i32 %83, i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %79, %73
  %95 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %96 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TYPE_WAITING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %103 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %106 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %109 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %112 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @svg_waiting(i32 %101, i32 %104, i32 %107, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %100, %94
  %116 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %117 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %116, i32 0, i32 1
  %118 = load %struct.cpu_sample*, %struct.cpu_sample** %117, align 8
  store %struct.cpu_sample* %118, %struct.cpu_sample** %5, align 8
  br label %49

119:                                              ; preds = %49
  %120 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %121 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %169

124:                                              ; preds = %119
  %125 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %126 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = icmp sgt i64 %128, 5000000000
  br i1 %129, label %130, label %146

130:                                              ; preds = %124
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %132 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %133 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %136 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %139 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sitofp i32 %140 to double
  %142 = load i64, i64* @NSEC_PER_SEC, align 8
  %143 = sitofp i64 %142 to double
  %144 = fdiv double %141, %143
  %145 = call i32 @sprintf(i8* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %134, i32 %137, double %144)
  br label %162

146:                                              ; preds = %124
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %148 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %149 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %152 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %155 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sitofp i32 %156 to double
  %158 = load i64, i64* @NSEC_PER_MSEC, align 8
  %159 = sitofp i64 %158 to double
  %160 = fdiv double %157, %159
  %161 = call i32 @sprintf(i8* %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %150, i32 %153, double %160)
  br label %162

162:                                              ; preds = %146, %130
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %165 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %168 = call i32 @svg_text(i32 %163, i32 %166, i8* %167)
  br label %169

169:                                              ; preds = %162, %119
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %172 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  %175 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %176 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %175, i32 0, i32 3
  %177 = load %struct.per_pidcomm*, %struct.per_pidcomm** %176, align 8
  store %struct.per_pidcomm* %177, %struct.per_pidcomm** %4, align 8
  br label %23

178:                                              ; preds = %23
  %179 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %180 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %179, i32 0, i32 1
  %181 = load %struct.per_pid*, %struct.per_pid** %180, align 8
  store %struct.per_pid* %181, %struct.per_pid** %3, align 8
  br label %16

182:                                              ; preds = %16
  ret void
}

declare dso_local i32 @svg_box(i32, i32, i32, i8*) #1

declare dso_local i32 @svg_running(i32, i32, i32, i32, i32) #1

declare dso_local i32 @svg_blocked(i32, i32, i32, i32, i32) #1

declare dso_local i32 @svg_waiting(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, double) #1

declare dso_local i32 @svg_text(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
