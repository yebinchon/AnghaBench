; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_open_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_open_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s/header\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_data*)* @open_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_dir(%struct.perf_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_data*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_data* %0, %struct.perf_data** %3, align 8
  %5 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %6 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %9 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @asprintf(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %16 = call i64 @perf_data__is_write(%struct.perf_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %20 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S_IRWXU, align 4
  %23 = call i64 @mkdir(i32 %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %42

26:                                               ; preds = %18, %14
  %27 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %28 = call i32 @open_file(%struct.perf_data* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %33 = call i64 @perf_data__is_write(%struct.perf_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %37 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rm_rf_perf_data(i32 %38)
  br label %40

40:                                               ; preds = %35, %31, %26
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %25, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @asprintf(i32*, i8*, i32) #1

declare dso_local i64 @perf_data__is_write(%struct.perf_data*) #1

declare dso_local i64 @mkdir(i32, i32) #1

declare dso_local i32 @open_file(%struct.perf_data*) #1

declare dso_local i32 @rm_rf_perf_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
