; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_get_tracepoint_field_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_get_tracepoint_field_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_ctf_field_type = type { i32 }
%struct.ctf_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type* }
%struct.tep_format_field = type { i64, i32 }

@TEP_FIELD_IS_STRING = common dso_local global i64 0, align 8
@TEP_FIELD_IS_SIGNED = common dso_local global i64 0, align 8
@TEP_FIELD_IS_LONG = common dso_local global i64 0, align 8
@TEP_FIELD_IS_POINTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_ctf_field_type* (%struct.ctf_writer*, %struct.tep_format_field*)* @get_tracepoint_field_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bt_ctf_field_type* @get_tracepoint_field_type(%struct.ctf_writer* %0, %struct.tep_format_field* %1) #0 {
  %3 = alloca %struct.bt_ctf_field_type*, align 8
  %4 = alloca %struct.ctf_writer*, align 8
  %5 = alloca %struct.tep_format_field*, align 8
  %6 = alloca i64, align 8
  store %struct.ctf_writer* %0, %struct.ctf_writer** %4, align 8
  store %struct.tep_format_field* %1, %struct.tep_format_field** %5, align 8
  %7 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %8 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @TEP_FIELD_IS_STRING, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %16 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %17, align 8
  store %struct.bt_ctf_field_type* %18, %struct.bt_ctf_field_type** %3, align 8
  br label %75

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @TEP_FIELD_IS_SIGNED, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @TEP_FIELD_IS_LONG, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @TEP_FIELD_IS_POINTER, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %24
  %35 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %36 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %37, align 8
  store %struct.bt_ctf_field_type* %38, %struct.bt_ctf_field_type** %3, align 8
  br label %75

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @TEP_FIELD_IS_SIGNED, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %47 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %52 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %53, align 8
  store %struct.bt_ctf_field_type* %54, %struct.bt_ctf_field_type** %3, align 8
  br label %75

55:                                               ; preds = %45
  %56 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %57 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %58, align 8
  store %struct.bt_ctf_field_type* %59, %struct.bt_ctf_field_type** %3, align 8
  br label %75

60:                                               ; preds = %40
  %61 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %62 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %67 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %68, align 8
  store %struct.bt_ctf_field_type* %69, %struct.bt_ctf_field_type** %3, align 8
  br label %75

70:                                               ; preds = %60
  %71 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %72 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %73, align 8
  store %struct.bt_ctf_field_type* %74, %struct.bt_ctf_field_type** %3, align 8
  br label %75

75:                                               ; preds = %70, %65, %55, %50, %34, %14
  %76 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %3, align 8
  ret %struct.bt_ctf_field_type* %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
