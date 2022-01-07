; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map__config_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map__config_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.parse_events_term = type { i64, i32 }
%struct.evlist = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Config value not set\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_CONF = common dso_local global i32 0, align 4
@PARSE_EVENTS__TERM_TYPE_STR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ERROR: wrong value type for 'event'\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, %struct.parse_events_term*, %struct.evlist*)* @bpf_map__config_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_map__config_event(%struct.bpf_map* %0, %struct.parse_events_term* %1, %struct.evlist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca %struct.parse_events_term*, align 8
  %7 = alloca %struct.evlist*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store %struct.parse_events_term* %1, %struct.parse_events_term** %6, align 8
  store %struct.evlist* %2, %struct.evlist** %7, align 8
  %8 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %9 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_CONF, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %18 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PARSE_EVENTS__TERM_TYPE_STR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_VALUE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %16
  %27 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %28 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %29 = load %struct.evlist*, %struct.evlist** %7, align 8
  %30 = call i32 @__bpf_map__config_event(%struct.bpf_map* %27, %struct.parse_events_term* %28, %struct.evlist* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %22, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @__bpf_map__config_event(%struct.bpf_map*, %struct.parse_events_term*, %struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
