; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_stop_script.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_stop_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tables = type { i32 }

@tables_global = common dso_local global %struct.tables zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"trace_end\00", align 1
@main_dict = common dso_local global i32 0, align 4
@main_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @python_stop_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @python_stop_script() #0 {
  %1 = alloca %struct.tables*, align 8
  store %struct.tables* @tables_global, %struct.tables** %1, align 8
  %2 = call i32 @try_call_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  %3 = load %struct.tables*, %struct.tables** %1, align 8
  %4 = getelementptr inbounds %struct.tables, %struct.tables* %3, i32 0, i32 0
  %5 = call i32 @db_export__exit(i32* %4)
  %6 = load i32, i32* @main_dict, align 4
  %7 = call i32 @Py_XDECREF(i32 %6)
  %8 = load i32, i32* @main_module, align 4
  %9 = call i32 @Py_XDECREF(i32 %8)
  %10 = call i32 (...) @Py_Finalize()
  ret i32 0
}

declare dso_local i32 @try_call_object(i8*, i32*) #1

declare dso_local i32 @db_export__exit(i32*) #1

declare dso_local i32 @Py_XDECREF(i32) #1

declare dso_local i32 @Py_Finalize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
