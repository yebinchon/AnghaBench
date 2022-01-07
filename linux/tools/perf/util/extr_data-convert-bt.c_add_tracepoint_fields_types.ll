; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_tracepoint_fields_types.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_tracepoint_fields_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { i32 }
%struct.tep_format_field = type { i64, i32, i32, %struct.tep_format_field* }
%struct.bt_ctf_event_class = type { i32 }
%struct.bt_ctf_field_type = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"  field '%s'\0A\00", align 1
@TEP_FIELD_IS_STRING = common dso_local global i64 0, align 8
@TEP_FIELD_IS_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to add field '%s': %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.tep_format_field*, %struct.bt_ctf_event_class*)* @add_tracepoint_fields_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint_fields_types(%struct.ctf_writer* %0, %struct.tep_format_field* %1, %struct.bt_ctf_event_class* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctf_writer*, align 8
  %6 = alloca %struct.tep_format_field*, align 8
  %7 = alloca %struct.bt_ctf_event_class*, align 8
  %8 = alloca %struct.tep_format_field*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bt_ctf_field_type*, align 8
  %11 = alloca i64, align 8
  store %struct.ctf_writer* %0, %struct.ctf_writer** %5, align 8
  store %struct.tep_format_field* %1, %struct.tep_format_field** %6, align 8
  store %struct.bt_ctf_event_class* %2, %struct.bt_ctf_event_class** %7, align 8
  %12 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  store %struct.tep_format_field* %12, %struct.tep_format_field** %8, align 8
  br label %13

13:                                               ; preds = %73, %3
  %14 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %15 = icmp ne %struct.tep_format_field* %14, null
  br i1 %15, label %16, label %77

16:                                               ; preds = %13
  %17 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %18 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %21 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ctf_writer*, %struct.ctf_writer** %5, align 8
  %25 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %26 = call %struct.bt_ctf_field_type* @get_tracepoint_field_type(%struct.ctf_writer* %24, %struct.tep_format_field* %25)
  store %struct.bt_ctf_field_type* %26, %struct.bt_ctf_field_type** %10, align 8
  %27 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %10, align 8
  %28 = icmp ne %struct.bt_ctf_field_type* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %78

30:                                               ; preds = %16
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @TEP_FIELD_IS_STRING, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i64, i64* @TEP_FIELD_IS_ARRAY, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %11, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @TEP_FIELD_IS_ARRAY, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %10, align 8
  %47 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %48 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.bt_ctf_field_type* @bt_ctf_field_type_array_create(%struct.bt_ctf_field_type* %46, i32 %49)
  store %struct.bt_ctf_field_type* %50, %struct.bt_ctf_field_type** %10, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %53 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %10, align 8
  %54 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %55 = call i32 @event_class_add_field(%struct.bt_ctf_event_class* %52, %struct.bt_ctf_field_type* %53, %struct.tep_format_field* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @TEP_FIELD_IS_ARRAY, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %10, align 8
  %62 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %61)
  br label %63

63:                                               ; preds = %60, %51
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %68 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  store i32 -1, i32* %4, align 4
  br label %78

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %75 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %74, i32 0, i32 3
  %76 = load %struct.tep_format_field*, %struct.tep_format_field** %75, align 8
  store %struct.tep_format_field* %76, %struct.tep_format_field** %8, align 8
  br label %13

77:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %66, %29
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @pr2(i8*, i32) #1

declare dso_local %struct.bt_ctf_field_type* @get_tracepoint_field_type(%struct.ctf_writer*, %struct.tep_format_field*) #1

declare dso_local %struct.bt_ctf_field_type* @bt_ctf_field_type_array_create(%struct.bt_ctf_field_type*, i32) #1

declare dso_local i32 @event_class_add_field(%struct.bt_ctf_event_class*, %struct.bt_ctf_field_type*, %struct.tep_format_field*) #1

declare dso_local i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
