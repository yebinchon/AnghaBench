; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf__config_obj.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf__config_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }
%struct.parse_events_term = type { i32 }
%struct.evlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"map:\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_OPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf__config_obj(%struct.bpf_object* %0, %struct.parse_events_term* %1, %struct.evlist* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca %struct.parse_events_term*, align 8
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %6, align 8
  store %struct.parse_events_term* %1, %struct.parse_events_term** %7, align 8
  store %struct.evlist* %2, %struct.evlist** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %13 = icmp ne %struct.bpf_object* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.parse_events_term*, %struct.parse_events_term** %7, align 8
  %16 = icmp ne %struct.parse_events_term* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.parse_events_term*, %struct.parse_events_term** %7, align 8
  %19 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %14, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %47

25:                                               ; preds = %17
  %26 = load %struct.parse_events_term*, %struct.parse_events_term** %7, align 8
  %27 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strstarts(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  store i32 4, i32* %10, align 4
  %32 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %33 = load %struct.parse_events_term*, %struct.parse_events_term** %7, align 8
  %34 = load %struct.evlist*, %struct.evlist** %8, align 8
  %35 = call i32 @bpf__obj_config_map(%struct.bpf_object* %32, %struct.parse_events_term* %33, %struct.evlist* %34, i32* %10)
  store i32 %35, i32* %11, align 4
  br label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_OPT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %22
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @strstarts(i32, i8*) #1

declare dso_local i32 @bpf__obj_config_map(%struct.bpf_object*, %struct.parse_events_term*, %struct.evlist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
