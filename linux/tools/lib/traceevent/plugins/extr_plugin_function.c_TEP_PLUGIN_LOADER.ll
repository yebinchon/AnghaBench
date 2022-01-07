; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_function.c_TEP_PLUGIN_LOADER.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_function.c_TEP_PLUGIN_LOADER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ftrace\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@function_handler = common dso_local global i32 0, align 4
@plugin_options = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TEP_PLUGIN_LOADER(%struct.tep_handle* %0) #0 {
  %2 = alloca %struct.tep_handle*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %2, align 8
  %3 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %4 = load i32, i32* @function_handler, align 4
  %5 = call i32 @tep_register_event_handler(%struct.tep_handle* %3, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32* null)
  %6 = load i32, i32* @plugin_options, align 4
  %7 = call i32 @tep_plugin_add_options(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret i32 0
}

declare dso_local i32 @tep_register_event_handler(%struct.tep_handle*, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @tep_plugin_add_options(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
