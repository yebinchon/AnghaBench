; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c___bpf_map__config_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c___bpf_map__config_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.parse_events_term = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bpf_map_op = type { i64, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bpf_map_def = type { i64, i32, i32, %struct.TYPE_3__, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unable to get map definition from '%s'\0A\00", align 1
@BPF_LOADER_ERRNO__INTERNAL = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Map %s type is not BPF_MAP_TYPE_ARRAY\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Map %s has incorrect key size\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_KEYSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Map %s has incorrect value size\0A\00", align 1
@BPF_LOADER_ERRNO__OBJCONF_MAP_VALUESIZE = common dso_local global i32 0, align 4
@BPF_MAP_OP_SET_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, %struct.parse_events_term*)* @__bpf_map__config_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_map__config_value(%struct.bpf_map* %0, %struct.parse_events_term* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca %struct.parse_events_term*, align 8
  %6 = alloca %struct.bpf_map_op*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bpf_map_def*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store %struct.parse_events_term* %1, %struct.parse_events_term** %5, align 8
  %9 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %10 = call i8* @bpf_map__name(%struct.bpf_map* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %12 = call %struct.bpf_map_op* @bpf_map__def(%struct.bpf_map* %11)
  %13 = bitcast %struct.bpf_map_op* %12 to %struct.bpf_map_def*
  store %struct.bpf_map_def* %13, %struct.bpf_map_def** %8, align 8
  %14 = load %struct.bpf_map_def*, %struct.bpf_map_def** %8, align 8
  %15 = bitcast %struct.bpf_map_def* %14 to %struct.bpf_map_op*
  %16 = call i64 @IS_ERR(%struct.bpf_map_op* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @BPF_LOADER_ERRNO__INTERNAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %2
  %24 = load %struct.bpf_map_def*, %struct.bpf_map_def** %8, align 8
  %25 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BPF_MAP_TYPE_ARRAY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_TYPE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %23
  %35 = load %struct.bpf_map_def*, %struct.bpf_map_def** %8, align 8
  %36 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_KEYSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %76

45:                                               ; preds = %34
  %46 = load %struct.bpf_map_def*, %struct.bpf_map_def** %8, align 8
  %47 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %50 [
    i32 1, label %49
    i32 2, label %49
    i32 4, label %49
    i32 8, label %49
  ]

49:                                               ; preds = %45, %45, %45, %45
  br label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @BPF_LOADER_ERRNO__OBJCONF_MAP_VALUESIZE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %76

55:                                               ; preds = %49
  %56 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %57 = load %struct.parse_events_term*, %struct.parse_events_term** %5, align 8
  %58 = call %struct.bpf_map_op* @bpf_map__add_newop(%struct.bpf_map* %56, %struct.parse_events_term* %57)
  store %struct.bpf_map_op* %58, %struct.bpf_map_op** %6, align 8
  %59 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  %60 = call i64 @IS_ERR(%struct.bpf_map_op* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  %64 = call i32 @PTR_ERR(%struct.bpf_map_op* %63)
  store i32 %64, i32* %3, align 4
  br label %76

65:                                               ; preds = %55
  %66 = load i32, i32* @BPF_MAP_OP_SET_VALUE, align 4
  %67 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  %68 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.parse_events_term*, %struct.parse_events_term** %5, align 8
  %70 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bpf_map_op*, %struct.bpf_map_op** %6, align 8
  %74 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %65, %62, %50, %40, %29, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @bpf_map__name(%struct.bpf_map*) #1

declare dso_local %struct.bpf_map_op* @bpf_map__def(%struct.bpf_map*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map_op*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local %struct.bpf_map_op* @bpf_map__add_newop(%struct.bpf_map*, %struct.parse_events_term*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_map_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
