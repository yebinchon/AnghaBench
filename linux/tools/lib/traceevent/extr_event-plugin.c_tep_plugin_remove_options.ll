; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_tep_plugin_remove_options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_tep_plugin_remove_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registered_plugin_options = type { %struct.registered_plugin_options*, %struct.tep_plugin_option* }
%struct.tep_plugin_option = type { i32 }

@registered_options = common dso_local global %struct.registered_plugin_options* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tep_plugin_remove_options(%struct.tep_plugin_option* %0) #0 {
  %2 = alloca %struct.tep_plugin_option*, align 8
  %3 = alloca %struct.registered_plugin_options**, align 8
  %4 = alloca %struct.registered_plugin_options*, align 8
  store %struct.tep_plugin_option* %0, %struct.tep_plugin_option** %2, align 8
  store %struct.registered_plugin_options** @registered_options, %struct.registered_plugin_options*** %3, align 8
  br label %5

5:                                                ; preds = %26, %1
  %6 = load %struct.registered_plugin_options**, %struct.registered_plugin_options*** %3, align 8
  %7 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %6, align 8
  %8 = icmp ne %struct.registered_plugin_options* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.registered_plugin_options**, %struct.registered_plugin_options*** %3, align 8
  %11 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %10, align 8
  %12 = getelementptr inbounds %struct.registered_plugin_options, %struct.registered_plugin_options* %11, i32 0, i32 1
  %13 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %12, align 8
  %14 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %2, align 8
  %15 = icmp eq %struct.tep_plugin_option* %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.registered_plugin_options**, %struct.registered_plugin_options*** %3, align 8
  %18 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %17, align 8
  store %struct.registered_plugin_options* %18, %struct.registered_plugin_options** %4, align 8
  %19 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %4, align 8
  %20 = getelementptr inbounds %struct.registered_plugin_options, %struct.registered_plugin_options* %19, i32 0, i32 0
  %21 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %20, align 8
  %22 = load %struct.registered_plugin_options**, %struct.registered_plugin_options*** %3, align 8
  store %struct.registered_plugin_options* %21, %struct.registered_plugin_options** %22, align 8
  %23 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %4, align 8
  %24 = call i32 @free(%struct.registered_plugin_options* %23)
  br label %30

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.registered_plugin_options**, %struct.registered_plugin_options*** %3, align 8
  %28 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %27, align 8
  %29 = getelementptr inbounds %struct.registered_plugin_options, %struct.registered_plugin_options* %28, i32 0, i32 0
  store %struct.registered_plugin_options** %29, %struct.registered_plugin_options*** %3, align 8
  br label %5

30:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @free(%struct.registered_plugin_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
