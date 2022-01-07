; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c___perf_evsel__config_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c___perf_evsel__config_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.record_opts = type { i64, i32, i64, i64 }
%struct.callchain_param = type { i64, i32, i32 }

@CALLCHAIN = common dso_local global i32 0, align 4
@CALLCHAIN_LBR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [106 x i8] c"LBR callstack option is only available to get user callchain information. Falling back to framepointers.\0A\00", align 1
@BRANCH_STACK = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_CALL_STACK = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_NO_CYCLES = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_NO_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Cannot use LBR callstack with branch stack. Falling back to framepointers.\0A\00", align 1
@CALLCHAIN_DWARF = common dso_local global i64 0, align 8
@REGS_USER = common dso_local global i32 0, align 4
@STACK_USER = common dso_local global i32 0, align 4
@DWARF_MINIMAL_REGS = common dso_local global i32 0, align 4
@PERF_REGS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [212 x i8] c"WARNING: The use of --call-graph=dwarf may require all the user registers, specifying a subset with --user-regs may render DWARF unwinding unreliable, so the minimal registers set (IP, SP) is explicitly forced.\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"Cannot use DWARF unwind for function trace event, falling back to framepointers.\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Disabling user space callchains for function trace event.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*, %struct.record_opts*, %struct.callchain_param*)* @__perf_evsel__config_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_evsel__config_callchain(%struct.evsel* %0, %struct.record_opts* %1, %struct.callchain_param* %2) #0 {
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.record_opts*, align 8
  %6 = alloca %struct.callchain_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event_attr*, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.record_opts* %1, %struct.record_opts** %5, align 8
  store %struct.callchain_param* %2, %struct.callchain_param** %6, align 8
  %9 = load %struct.evsel*, %struct.evsel** %4, align 8
  %10 = call i32 @perf_evsel__is_function_event(%struct.evsel* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.evsel*, %struct.evsel** %4, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.perf_event_attr* %13, %struct.perf_event_attr** %8, align 8
  %14 = load %struct.evsel*, %struct.evsel** %4, align 8
  %15 = load i32, i32* @CALLCHAIN, align 4
  %16 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %14, i32 %15)
  %17 = load %struct.callchain_param*, %struct.callchain_param** %6, align 8
  %18 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %23 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %28 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %31 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %36 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.callchain_param*, %struct.callchain_param** %6, align 8
  %39 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CALLCHAIN_LBR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %45 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %43
  %49 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %50 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @pr_warning(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0))
  br label %68

55:                                               ; preds = %48
  %56 = load %struct.evsel*, %struct.evsel** %4, align 8
  %57 = load i32, i32* @BRANCH_STACK, align 4
  %58 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %56, i32 %57)
  %59 = load i32, i32* @PERF_SAMPLE_BRANCH_USER, align 4
  %60 = load i32, i32* @PERF_SAMPLE_BRANCH_CALL_STACK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PERF_SAMPLE_BRANCH_NO_CYCLES, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @PERF_SAMPLE_BRANCH_NO_FLAGS, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %67 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %55, %53
  br label %71

69:                                               ; preds = %43
  %70 = call i32 @pr_warning(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %68
  br label %72

72:                                               ; preds = %71, %37
  %73 = load %struct.callchain_param*, %struct.callchain_param** %6, align 8
  %74 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CALLCHAIN_DWARF, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %120

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %117, label %81

81:                                               ; preds = %78
  %82 = load %struct.evsel*, %struct.evsel** %4, align 8
  %83 = load i32, i32* @REGS_USER, align 4
  %84 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %82, i32 %83)
  %85 = load %struct.evsel*, %struct.evsel** %4, align 8
  %86 = load i32, i32* @STACK_USER, align 4
  %87 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %85, i32 %86)
  %88 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %89 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %81
  %93 = load i32, i32* @DWARF_MINIMAL_REGS, align 4
  %94 = load i32, i32* @PERF_REGS_MASK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32, i32* @DWARF_MINIMAL_REGS, align 4
  %98 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %99 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = call i32 @pr_warning(i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.2, i64 0, i64 0))
  br label %109

103:                                              ; preds = %92, %81
  %104 = load i32, i32* @PERF_REGS_MASK, align 4
  %105 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %106 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %96
  %110 = load %struct.callchain_param*, %struct.callchain_param** %6, align 8
  %111 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %114 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %116 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %119

117:                                              ; preds = %78
  %118 = call i32 @pr_info(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %109
  br label %120

120:                                              ; preds = %119, %72
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %125 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %126 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %120
  ret void
}

declare dso_local i32 @perf_evsel__is_function_event(%struct.evsel*) #1

declare dso_local i32 @perf_evsel__set_sample_bit(%struct.evsel*, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
