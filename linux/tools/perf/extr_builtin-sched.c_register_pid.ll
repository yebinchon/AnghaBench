; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_register_pid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_register_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_desc = type { i64, i64, i32 }
%struct.perf_sched = type { i64, %struct.task_desc**, %struct.task_desc** }

@register_pid.pid_max = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"kernel/pid_max\00", align 1
@MAX_PID = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"registered task #%ld, PID %ld (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_desc* (%struct.perf_sched*, i64, i8*)* @register_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_desc* @register_pid(%struct.perf_sched* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.task_desc*, align 8
  %5 = alloca %struct.perf_sched*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.task_desc*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %10 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %9, i32 0, i32 2
  %11 = load %struct.task_desc**, %struct.task_desc*** %10, align 8
  %12 = icmp eq %struct.task_desc** %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = call i64 @sysctl__read_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* @register_pid.pid_max)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @MAX_PID, align 4
  store i32 %17, i32* @register_pid.pid_max, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* @register_pid.pid_max, align 4
  %20 = call %struct.task_desc** @calloc(i32 %19, i32 8)
  %21 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %22 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %21, i32 0, i32 2
  store %struct.task_desc** %20, %struct.task_desc*** %22, align 8
  %23 = icmp eq %struct.task_desc** %20, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @register_pid.pid_max, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %27, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %33 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %32, i32 0, i32 2
  %34 = load %struct.task_desc**, %struct.task_desc*** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i8* @realloc(%struct.task_desc** %34, i32 %38)
  %40 = bitcast i8* %39 to %struct.task_desc**
  %41 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %42 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %41, i32 0, i32 2
  store %struct.task_desc** %40, %struct.task_desc*** %42, align 8
  %43 = icmp eq %struct.task_desc** %40, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  br label %46

46:                                               ; preds = %51, %31
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @register_pid.pid_max, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %53 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %52, i32 0, i32 2
  %54 = load %struct.task_desc**, %struct.task_desc*** %53, align 8
  %55 = load i32, i32* @register_pid.pid_max, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @register_pid.pid_max, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %54, i64 %57
  store %struct.task_desc* null, %struct.task_desc** %58, align 8
  br label %46

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %62 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %61, i32 0, i32 2
  %63 = load %struct.task_desc**, %struct.task_desc*** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %63, i64 %64
  %66 = load %struct.task_desc*, %struct.task_desc** %65, align 8
  store %struct.task_desc* %66, %struct.task_desc** %8, align 8
  %67 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %68 = icmp ne %struct.task_desc* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  store %struct.task_desc* %70, %struct.task_desc** %4, align 8
  br label %138

71:                                               ; preds = %60
  %72 = call %struct.task_desc* @zalloc(i32 24)
  store %struct.task_desc* %72, %struct.task_desc** %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %75 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %77 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %80 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %82 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strcpy(i32 %83, i8* %84)
  %86 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %87 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %88 = call i32 @add_sched_event_sleep(%struct.perf_sched* %86, %struct.task_desc* %87, i32 0, i32 0)
  %89 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %90 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %91 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %90, i32 0, i32 2
  %92 = load %struct.task_desc**, %struct.task_desc*** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %92, i64 %93
  store %struct.task_desc* %89, %struct.task_desc** %94, align 8
  %95 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %96 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %100 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %99, i32 0, i32 1
  %101 = load %struct.task_desc**, %struct.task_desc*** %100, align 8
  %102 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %103 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = mul i64 %104, 8
  %106 = trunc i64 %105 to i32
  %107 = call i8* @realloc(%struct.task_desc** %101, i32 %106)
  %108 = bitcast i8* %107 to %struct.task_desc**
  %109 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %110 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %109, i32 0, i32 1
  store %struct.task_desc** %108, %struct.task_desc*** %110, align 8
  %111 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %112 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %111, i32 0, i32 1
  %113 = load %struct.task_desc**, %struct.task_desc*** %112, align 8
  %114 = icmp ne %struct.task_desc** %113, null
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i32 @BUG_ON(i32 %116)
  %118 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %119 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %120 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %119, i32 0, i32 1
  %121 = load %struct.task_desc**, %struct.task_desc*** %120, align 8
  %122 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %123 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %121, i64 %124
  store %struct.task_desc* %118, %struct.task_desc** %125, align 8
  %126 = load i64, i64* @verbose, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %71
  %129 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %130 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %132, i64 %133, i8* %134)
  br label %136

136:                                              ; preds = %128, %71
  %137 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  store %struct.task_desc* %137, %struct.task_desc** %4, align 8
  br label %138

138:                                              ; preds = %136, %69
  %139 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  ret %struct.task_desc* %139
}

declare dso_local i64 @sysctl__read_int(i8*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.task_desc** @calloc(i32, i32) #1

declare dso_local i8* @realloc(%struct.task_desc**, i32) #1

declare dso_local %struct.task_desc* @zalloc(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @add_sched_event_sleep(%struct.perf_sched*, %struct.task_desc*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
