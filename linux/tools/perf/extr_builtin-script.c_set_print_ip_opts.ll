; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_set_print_ip_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_set_print_ip_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_event_attr = type { i32 }

@output = common dso_local global %struct.TYPE_2__* null, align 8
@IP = common dso_local global i32 0, align 4
@EVSEL__PRINT_IP = common dso_local global i32 0, align 4
@SYM = common dso_local global i32 0, align 4
@EVSEL__PRINT_SYM = common dso_local global i32 0, align 4
@DSO = common dso_local global i32 0, align 4
@EVSEL__PRINT_DSO = common dso_local global i32 0, align 4
@SYMOFFSET = common dso_local global i32 0, align 4
@EVSEL__PRINT_SYMOFFSET = common dso_local global i32 0, align 4
@SRCLINE = common dso_local global i32 0, align 4
@EVSEL__PRINT_SRCLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_attr*)* @set_print_ip_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_print_ip_opts(%struct.perf_event_attr* %0) #0 {
  %2 = alloca %struct.perf_event_attr*, align 8
  %3 = alloca i32, align 4
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %2, align 8
  %4 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %5 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @output_type(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @IP, align 4
  %14 = call i64 @PRINT_FIELD(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @EVSEL__PRINT_IP, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %17
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %16, %1
  %26 = load i32, i32* @SYM, align 4
  %27 = call i64 @PRINT_FIELD(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* @EVSEL__PRINT_SYM, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %30
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %25
  %39 = load i32, i32* @DSO, align 4
  %40 = call i64 @PRINT_FIELD(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* @EVSEL__PRINT_DSO, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %43
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %42, %38
  %52 = load i32, i32* @SYMOFFSET, align 4
  %53 = call i64 @PRINT_FIELD(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* @EVSEL__PRINT_SYMOFFSET, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %58 = load i32, i32* %3, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %56
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %55, %51
  %65 = load i32, i32* @SRCLINE, align 4
  %66 = call i64 @PRINT_FIELD(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* @EVSEL__PRINT_SRCLINE, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %69
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %68, %64
  ret void
}

declare dso_local i32 @output_type(i32) #1

declare dso_local i64 @PRINT_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
