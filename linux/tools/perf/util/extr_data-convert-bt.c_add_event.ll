; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { i32 }
%struct.evsel = type { %struct.evsel_priv*, %struct.TYPE_4__ }
%struct.evsel_priv = type { %struct.bt_ctf_event_class* }
%struct.bt_ctf_event_class = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Adding event '%s' (type %d)\0A\00", align 1
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to add event class into stream.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to add event '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.evsel*)* @add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_event(%struct.ctf_writer* %0, %struct.evsel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctf_writer*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.bt_ctf_event_class*, align 8
  %7 = alloca %struct.evsel_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  %10 = load %struct.evsel*, %struct.evsel** %5, align 8
  %11 = call i8* @perf_evsel__name(%struct.evsel* %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.evsel*, %struct.evsel** %5, align 8
  %14 = getelementptr inbounds %struct.evsel, %struct.evsel* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @pr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = call %struct.bt_ctf_event_class* @bt_ctf_event_class_create(i8* %19)
  store %struct.bt_ctf_event_class* %20, %struct.bt_ctf_event_class** %6, align 8
  %21 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %6, align 8
  %22 = icmp ne %struct.bt_ctf_event_class* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %88

24:                                               ; preds = %2
  %25 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %26 = load %struct.evsel*, %struct.evsel** %5, align 8
  %27 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %6, align 8
  %28 = call i32 @add_generic_types(%struct.ctf_writer* %25, %struct.evsel* %26, %struct.bt_ctf_event_class* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %83

32:                                               ; preds = %24
  %33 = load %struct.evsel*, %struct.evsel** %5, align 8
  %34 = getelementptr inbounds %struct.evsel, %struct.evsel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %42 = load %struct.evsel*, %struct.evsel** %5, align 8
  %43 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %6, align 8
  %44 = call i32 @add_tracepoint_types(%struct.ctf_writer* %41, %struct.evsel* %42, %struct.bt_ctf_event_class* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %83

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.evsel*, %struct.evsel** %5, align 8
  %51 = call i64 @perf_evsel__is_bpf_output(%struct.evsel* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %55 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %6, align 8
  %56 = call i32 @add_bpf_output_types(%struct.ctf_writer* %54, %struct.bt_ctf_event_class* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %83

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %49
  %62 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %63 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %6, align 8
  %66 = call i32 @bt_ctf_stream_class_add_event_class(i32 %64, %struct.bt_ctf_event_class* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 (i8*, ...) @pr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %83

71:                                               ; preds = %61
  %72 = call %struct.evsel_priv* @malloc(i32 8)
  store %struct.evsel_priv* %72, %struct.evsel_priv** %7, align 8
  %73 = load %struct.evsel_priv*, %struct.evsel_priv** %7, align 8
  %74 = icmp ne %struct.evsel_priv* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %83

76:                                               ; preds = %71
  %77 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %6, align 8
  %78 = load %struct.evsel_priv*, %struct.evsel_priv** %7, align 8
  %79 = getelementptr inbounds %struct.evsel_priv, %struct.evsel_priv* %78, i32 0, i32 0
  store %struct.bt_ctf_event_class* %77, %struct.bt_ctf_event_class** %79, align 8
  %80 = load %struct.evsel_priv*, %struct.evsel_priv** %7, align 8
  %81 = load %struct.evsel*, %struct.evsel** %5, align 8
  %82 = getelementptr inbounds %struct.evsel, %struct.evsel* %81, i32 0, i32 0
  store %struct.evsel_priv* %80, %struct.evsel_priv** %82, align 8
  store i32 0, i32* %3, align 4
  br label %88

83:                                               ; preds = %75, %69, %59, %47, %31
  %84 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %6, align 8
  %85 = call i32 @bt_ctf_event_class_put(%struct.bt_ctf_event_class* %84)
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  store i32 -1, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %76, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @perf_evsel__name(%struct.evsel*) #1

declare dso_local i32 @pr(i8*, ...) #1

declare dso_local %struct.bt_ctf_event_class* @bt_ctf_event_class_create(i8*) #1

declare dso_local i32 @add_generic_types(%struct.ctf_writer*, %struct.evsel*, %struct.bt_ctf_event_class*) #1

declare dso_local i32 @add_tracepoint_types(%struct.ctf_writer*, %struct.evsel*, %struct.bt_ctf_event_class*) #1

declare dso_local i64 @perf_evsel__is_bpf_output(%struct.evsel*) #1

declare dso_local i32 @add_bpf_output_types(%struct.ctf_writer*, %struct.bt_ctf_event_class*) #1

declare dso_local i32 @bt_ctf_stream_class_add_event_class(i32, %struct.bt_ctf_event_class*) #1

declare dso_local %struct.evsel_priv* @malloc(i32) #1

declare dso_local i32 @bt_ctf_event_class_put(%struct.bt_ctf_event_class*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
