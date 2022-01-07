; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_tep_plugin_add_options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_tep_plugin_add_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registered_plugin_options = type { %struct.tep_plugin_option*, %struct.registered_plugin_options* }
%struct.tep_plugin_option = type { i64 }

@registered_options = common dso_local global %struct.registered_plugin_options* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_plugin_add_options(i8* %0, %struct.tep_plugin_option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tep_plugin_option*, align 8
  %6 = alloca %struct.registered_plugin_options*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tep_plugin_option* %1, %struct.tep_plugin_option** %5, align 8
  %7 = call %struct.registered_plugin_options* @malloc(i32 16)
  store %struct.registered_plugin_options* %7, %struct.registered_plugin_options** %6, align 8
  %8 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %6, align 8
  %9 = icmp ne %struct.registered_plugin_options* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** @registered_options, align 8
  %13 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %6, align 8
  %14 = getelementptr inbounds %struct.registered_plugin_options, %struct.registered_plugin_options* %13, i32 0, i32 1
  store %struct.registered_plugin_options* %12, %struct.registered_plugin_options** %14, align 8
  %15 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %16 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %6, align 8
  %17 = getelementptr inbounds %struct.registered_plugin_options, %struct.registered_plugin_options* %16, i32 0, i32 0
  store %struct.tep_plugin_option* %15, %struct.tep_plugin_option** %17, align 8
  %18 = load %struct.registered_plugin_options*, %struct.registered_plugin_options** %6, align 8
  store %struct.registered_plugin_options* %18, %struct.registered_plugin_options** @registered_options, align 8
  br label %19

19:                                               ; preds = %24, %11
  %20 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %21 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %27 = call i32 @update_option(i8* %25, %struct.tep_plugin_option* %26)
  %28 = load %struct.tep_plugin_option*, %struct.tep_plugin_option** %5, align 8
  %29 = getelementptr inbounds %struct.tep_plugin_option, %struct.tep_plugin_option* %28, i32 1
  store %struct.tep_plugin_option* %29, %struct.tep_plugin_option** %5, align 8
  br label %19

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.registered_plugin_options* @malloc(i32) #1

declare dso_local i32 @update_option(i8*, %struct.tep_plugin_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
