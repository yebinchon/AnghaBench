; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_set_sample_datasrc_in_dict.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_set_sample_datasrc_in_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32 }
%struct.mem_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"datasrc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"datasrc_decode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.perf_sample*)* @set_sample_datasrc_in_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sample_datasrc_in_dict(i32* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %struct.mem_info, align 4
  %6 = alloca [100 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %4, align 8
  %7 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %10 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PyLong_FromUnsignedLongLong(i32 %15)
  %17 = call i32 @pydict_set_item_string_decref(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %19 = call i32 @perf_script__meminfo_scnprintf(i8* %18, i32 100, %struct.mem_info* %5)
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %22 = call i32 @_PyUnicode_FromString(i8* %21)
  %23 = call i32 @pydict_set_item_string_decref(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i32 @pydict_set_item_string_decref(i32*, i8*, i32) #1

declare dso_local i32 @PyLong_FromUnsignedLongLong(i32) #1

declare dso_local i32 @perf_script__meminfo_scnprintf(i8*, i32, %struct.mem_info*) #1

declare dso_local i32 @_PyUnicode_FromString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
