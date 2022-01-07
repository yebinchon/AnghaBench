; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__new_by_pid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__new_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread_map = type { i32, i32 }
%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"/proc/%d/task\00", align 1
@filter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_thread_map* @thread_map__new_by_pid(i32 %0) #0 {
  %2 = alloca %struct.perf_thread_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_thread_map*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.dirent**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dirent** null, %struct.dirent*** %7, align 8
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = load i32, i32* @filter, align 4
  %14 = call i32 @scandir(i8* %12, %struct.dirent*** %7, i32 %13, i32* null)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.perf_thread_map* null, %struct.perf_thread_map** %2, align 8
  br label %68

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.perf_thread_map* @thread_map__alloc(i32 %19)
  store %struct.perf_thread_map* %20, %struct.perf_thread_map** %4, align 8
  %21 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %22 = icmp ne %struct.perf_thread_map* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dirent*, %struct.dirent** %31, i64 %33
  %35 = load %struct.dirent*, %struct.dirent** %34, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @atoi(i32 %37)
  %39 = call i32 @perf_thread_map__set_pid(%struct.perf_thread_map* %29, i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %46 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %48 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %47, i32 0, i32 1
  %49 = call i32 @refcount_set(i32* %48, i32 1)
  br label %50

50:                                               ; preds = %43, %18
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %61, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dirent*, %struct.dirent** %56, i64 %58
  %60 = call i32 @zfree(%struct.dirent** %59)
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %51

64:                                               ; preds = %51
  %65 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %66 = call i32 @free(%struct.dirent** %65)
  %67 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  store %struct.perf_thread_map* %67, %struct.perf_thread_map** %2, align 8
  br label %68

68:                                               ; preds = %64, %17
  %69 = load %struct.perf_thread_map*, %struct.perf_thread_map** %2, align 8
  ret %struct.perf_thread_map* %69
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @scandir(i8*, %struct.dirent***, i32, i32*) #1

declare dso_local %struct.perf_thread_map* @thread_map__alloc(i32) #1

declare dso_local i32 @perf_thread_map__set_pid(%struct.perf_thread_map*, i32, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @zfree(%struct.dirent**) #1

declare dso_local i32 @free(%struct.dirent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
