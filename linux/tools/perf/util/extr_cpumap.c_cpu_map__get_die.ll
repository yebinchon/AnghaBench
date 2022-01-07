; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__get_die.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__get_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"The die id number is too big.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"The socket id number is too big.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_map__get_die(%struct.perf_cpu_map* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_cpu_map* %0, %struct.perf_cpu_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %13 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %19 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @cpu_map__get_die_id(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @cpu_map__get_socket(%struct.perf_cpu_map* %31, i32 %32, i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %56

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 8
  %41 = call i64 @WARN_ONCE(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %56

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 8
  %47 = call i64 @WARN_ONCE(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 255
  %55 = or i32 %52, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %49, %43, %37, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @cpu_map__get_die_id(i32) #1

declare dso_local i32 @cpu_map__get_socket(%struct.perf_cpu_map*, i32, i8*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
