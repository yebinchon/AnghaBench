; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_hist.c_perf_hpp__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_hist.c_perf_hpp__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_fmt = type { i8*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@PERF_HPP__MAX_INDEX = common dso_local global i32 0, align 4
@perf_hpp__format = common dso_local global %struct.perf_hpp_fmt* null, align 8
@field_order = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PERF_HPP__OVERHEAD_ACC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Self\00", align 1
@PERF_HPP__OVERHEAD = common dso_local global i64 0, align 8
@PERF_HPP__OVERHEAD_SYS = common dso_local global i64 0, align 8
@PERF_HPP__OVERHEAD_US = common dso_local global i64 0, align 8
@perf_guest = common dso_local global i64 0, align 8
@PERF_HPP__OVERHEAD_GUEST_SYS = common dso_local global i64 0, align 8
@PERF_HPP__OVERHEAD_GUEST_US = common dso_local global i64 0, align 8
@PERF_HPP__SAMPLES = common dso_local global i64 0, align 8
@PERF_HPP__PERIOD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_hpp__init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.perf_hpp_fmt*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @PERF_HPP__MAX_INDEX, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** @perf_hpp__format, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %8, i64 %10
  store %struct.perf_hpp_fmt* %11, %struct.perf_hpp_fmt** %2, align 8
  %12 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %2, align 8
  %13 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %12, i32 0, i32 2
  %14 = call i32 @INIT_LIST_HEAD(%struct.TYPE_4__* %13)
  %15 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %2, align 8
  %16 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %2, align 8
  %22 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(%struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %20, %7
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %3

28:                                               ; preds = %3
  %29 = load i32, i32* @field_order, align 4
  %30 = call i64 @is_strict_order(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %73

33:                                               ; preds = %28
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 3), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i64, i64* @PERF_HPP__OVERHEAD_ACC, align 8
  %38 = call i32 @hpp_dimension__add_output(i64 %37)
  %39 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** @perf_hpp__format, align 8
  %40 = load i64, i64* @PERF_HPP__OVERHEAD, align 8
  %41 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %39, i64 %40
  %42 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i64, i64* @PERF_HPP__OVERHEAD, align 8
  %45 = call i32 @hpp_dimension__add_output(i64 %44)
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 2), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i64, i64* @PERF_HPP__OVERHEAD_SYS, align 8
  %50 = call i32 @hpp_dimension__add_output(i64 %49)
  %51 = load i64, i64* @PERF_HPP__OVERHEAD_US, align 8
  %52 = call i32 @hpp_dimension__add_output(i64 %51)
  %53 = load i64, i64* @perf_guest, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i64, i64* @PERF_HPP__OVERHEAD_GUEST_SYS, align 8
  %57 = call i32 @hpp_dimension__add_output(i64 %56)
  %58 = load i64, i64* @PERF_HPP__OVERHEAD_GUEST_US, align 8
  %59 = call i32 @hpp_dimension__add_output(i64 %58)
  br label %60

60:                                               ; preds = %55, %48
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 1), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* @PERF_HPP__SAMPLES, align 8
  %66 = call i32 @hpp_dimension__add_output(i64 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 0), align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* @PERF_HPP__PERIOD, align 8
  %72 = call i32 @hpp_dimension__add_output(i64 %71)
  br label %73

73:                                               ; preds = %32, %70, %67
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.TYPE_4__*) #1

declare dso_local i64 @is_strict_order(i32) #1

declare dso_local i32 @hpp_dimension__add_output(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
