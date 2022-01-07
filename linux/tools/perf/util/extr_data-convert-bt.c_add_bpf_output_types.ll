; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_bpf_output_types.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_bpf_output_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type* }
%struct.bt_ctf_field_type = type { i32 }
%struct.bt_ctf_event_class = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"raw_len\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"raw_data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.bt_ctf_event_class*)* @add_bpf_output_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bpf_output_types(%struct.ctf_writer* %0, %struct.bt_ctf_event_class* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctf_writer*, align 8
  %5 = alloca %struct.bt_ctf_event_class*, align 8
  %6 = alloca %struct.bt_ctf_field_type*, align 8
  %7 = alloca %struct.bt_ctf_field_type*, align 8
  %8 = alloca %struct.bt_ctf_field_type*, align 8
  %9 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %4, align 8
  store %struct.bt_ctf_event_class* %1, %struct.bt_ctf_event_class** %5, align 8
  %10 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %11 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %12, align 8
  store %struct.bt_ctf_field_type* %13, %struct.bt_ctf_field_type** %6, align 8
  %14 = load %struct.ctf_writer*, %struct.ctf_writer** %4, align 8
  %15 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %16, align 8
  store %struct.bt_ctf_field_type* %17, %struct.bt_ctf_field_type** %7, align 8
  %18 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %5, align 8
  %19 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %6, align 8
  %20 = call i32 @bt_ctf_event_class_add_field(%struct.bt_ctf_event_class* %18, %struct.bt_ctf_field_type* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %7, align 8
  %27 = call %struct.bt_ctf_field_type* @bt_ctf_field_type_sequence_create(%struct.bt_ctf_field_type* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.bt_ctf_field_type* %27, %struct.bt_ctf_field_type** %8, align 8
  %28 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %29 = icmp ne %struct.bt_ctf_field_type* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %35

31:                                               ; preds = %25
  %32 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %5, align 8
  %33 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %34 = call i32 @bt_ctf_event_class_add_field(%struct.bt_ctf_event_class* %32, %struct.bt_ctf_field_type* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %30, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @bt_ctf_event_class_add_field(%struct.bt_ctf_event_class*, %struct.bt_ctf_field_type*, i8*) #1

declare dso_local %struct.bt_ctf_field_type* @bt_ctf_field_type_sequence_create(%struct.bt_ctf_field_type*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
