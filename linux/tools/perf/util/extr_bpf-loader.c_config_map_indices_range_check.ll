; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_config_map_indices_range_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_config_map_indices_range_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_term = type { %struct.parse_events_array }
%struct.parse_events_array = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.bpf_map = type { i32 }
%struct.bpf_map_def = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"ERROR: map %s: array->nr_ranges is %d but range array is NULL\0A\00", align 1
@BPF_LOADER_ERRNO__INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"ERROR: Unable to get map definition from '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ERROR: index %d too large\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_IDX2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_events_term*, %struct.bpf_map*, i8*)* @config_map_indices_range_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_map_indices_range_check(%struct.parse_events_term* %0, %struct.bpf_map* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_events_term*, align 8
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.parse_events_array*, align 8
  %9 = alloca %struct.bpf_map_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.parse_events_term* %0, %struct.parse_events_term** %5, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.parse_events_term*, %struct.parse_events_term** %5, align 8
  %15 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %14, i32 0, i32 0
  store %struct.parse_events_array* %15, %struct.parse_events_array** %8, align 8
  %16 = load %struct.parse_events_array*, %struct.parse_events_array** %8, align 8
  %17 = getelementptr inbounds %struct.parse_events_array, %struct.parse_events_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

21:                                               ; preds = %3
  %22 = load %struct.parse_events_array*, %struct.parse_events_array** %8, align 8
  %23 = getelementptr inbounds %struct.parse_events_array, %struct.parse_events_array* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.parse_events_array*, %struct.parse_events_array** %8, align 8
  %29 = getelementptr inbounds %struct.parse_events_array, %struct.parse_events_array* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30)
  %32 = load i32, i32* @BPF_LOADER_ERRNO__INTERNAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %90

34:                                               ; preds = %21
  %35 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %36 = call %struct.bpf_map_def* @bpf_map__def(%struct.bpf_map* %35)
  store %struct.bpf_map_def* %36, %struct.bpf_map_def** %9, align 8
  %37 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %38 = call i64 @IS_ERR(%struct.bpf_map_def* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @BPF_LOADER_ERRNO__INTERNAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %90

45:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %86, %45
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.parse_events_array*, %struct.parse_events_array** %8, align 8
  %49 = getelementptr inbounds %struct.parse_events_array, %struct.parse_events_array* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %46
  %53 = load %struct.parse_events_array*, %struct.parse_events_array** %8, align 8
  %54 = getelementptr inbounds %struct.parse_events_array, %struct.parse_events_array* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %11, align 4
  %61 = load %struct.parse_events_array*, %struct.parse_events_array** %8, align 8
  %62 = getelementptr inbounds %struct.parse_events_array, %struct.parse_events_array* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %70, %71
  %73 = sub i64 %72, 1
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.bpf_map_def*, %struct.bpf_map_def** %9, align 8
  %77 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp uge i32 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %52
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_IDX2BIG, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %90

85:                                               ; preds = %52
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %46

89:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %80, %40, %26, %20
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.bpf_map_def* @bpf_map__def(%struct.bpf_map*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
