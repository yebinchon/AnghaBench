; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_TEP_PLUGIN_UNLOADER.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_TEP_PLUGIN_UNLOADER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sched_switch\00", align 1
@sched_switch_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"sched_wakeup\00", align 1
@sched_wakeup_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"sched_wakeup_new\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TEP_PLUGIN_UNLOADER(%struct.tep_handle* %0) #0 {
  %2 = alloca %struct.tep_handle*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %2, align 8
  %3 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %4 = load i32, i32* @sched_switch_handler, align 4
  %5 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %3, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32* null)
  %6 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %7 = load i32, i32* @sched_wakeup_handler, align 4
  %8 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %6, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32* null)
  %9 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %10 = load i32, i32* @sched_wakeup_handler, align 4
  %11 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %9, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %10, i32* null)
  ret void
}

declare dso_local i32 @tep_unregister_event_handler(%struct.tep_handle*, i32, i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
