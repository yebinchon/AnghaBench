; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_sample_value_as_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_sample_value_as_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample_read_value = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"couldn't create Python tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sample_read_value*)* @get_sample_value_as_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_sample_value_as_tuple(%struct.sample_read_value* %0) #0 {
  %2 = alloca %struct.sample_read_value*, align 8
  %3 = alloca i32*, align 8
  store %struct.sample_read_value* %0, %struct.sample_read_value** %2, align 8
  %4 = call i32* @PyTuple_New(i32 2)
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.sample_read_value*, %struct.sample_read_value** %2, align 8
  %12 = getelementptr inbounds %struct.sample_read_value, %struct.sample_read_value* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PyLong_FromUnsignedLongLong(i32 %13)
  %15 = call i32 @PyTuple_SetItem(i32* %10, i32 0, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.sample_read_value*, %struct.sample_read_value** %2, align 8
  %18 = getelementptr inbounds %struct.sample_read_value, %struct.sample_read_value* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PyLong_FromUnsignedLongLong(i32 %19)
  %21 = call i32 @PyTuple_SetItem(i32* %16, i32 1, i32 %20)
  %22 = load i32*, i32** %3, align 8
  ret i32* %22
}

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i32 @PyTuple_SetItem(i32*, i32, i32) #1

declare dso_local i32 @PyLong_FromUnsignedLongLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
