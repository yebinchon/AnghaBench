; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_comm_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_comm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't resolve comm name for pid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_thread_map*, i32)* @comm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comm_init(%struct.perf_thread_map* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_thread_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.perf_thread_map* %0, %struct.perf_thread_map** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @perf_thread_map__pid(%struct.perf_thread_map* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %15 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %13, i8** %20, align 8
  br label %37

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @get_comm(i8** %6, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %31 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %29, i8** %36, align 8
  br label %37

37:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @perf_thread_map__pid(%struct.perf_thread_map*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @get_comm(i8**, i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
