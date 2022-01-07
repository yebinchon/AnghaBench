; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_check_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_check_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_data*)* @check_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pipe(%struct.perf_data* %0) #0 {
  %2 = alloca %struct.perf_data*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_data* %0, %struct.perf_data** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %7 = call i64 @perf_data__is_read(%struct.perf_data* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @STDIN_FILENO, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @STDOUT_FILENO, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %5, align 4
  %15 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %16 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @fstat(i32 %20, %struct.stat* %3)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISFIFO(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %23, %19
  br label %38

30:                                               ; preds = %13
  %31 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %32 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %30
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %44 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %49 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret i32 %47
}

declare dso_local i64 @perf_data__is_read(%struct.perf_data*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
