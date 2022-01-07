; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_free_func_handle.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_free_func_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_function_handler = type { %struct.tep_function_handler*, %struct.tep_function_handler*, %struct.tep_function_handler* }
%struct.func_params = type { %struct.func_params*, %struct.func_params*, %struct.func_params* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_function_handler*)* @free_func_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_func_handle(%struct.tep_function_handler* %0) #0 {
  %2 = alloca %struct.tep_function_handler*, align 8
  %3 = alloca %struct.func_params*, align 8
  store %struct.tep_function_handler* %0, %struct.tep_function_handler** %2, align 8
  %4 = load %struct.tep_function_handler*, %struct.tep_function_handler** %2, align 8
  %5 = getelementptr inbounds %struct.tep_function_handler, %struct.tep_function_handler* %4, i32 0, i32 2
  %6 = load %struct.tep_function_handler*, %struct.tep_function_handler** %5, align 8
  %7 = call i32 @free(%struct.tep_function_handler* %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.tep_function_handler*, %struct.tep_function_handler** %2, align 8
  %10 = getelementptr inbounds %struct.tep_function_handler, %struct.tep_function_handler* %9, i32 0, i32 1
  %11 = load %struct.tep_function_handler*, %struct.tep_function_handler** %10, align 8
  %12 = icmp ne %struct.tep_function_handler* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.tep_function_handler*, %struct.tep_function_handler** %2, align 8
  %15 = getelementptr inbounds %struct.tep_function_handler, %struct.tep_function_handler* %14, i32 0, i32 1
  %16 = load %struct.tep_function_handler*, %struct.tep_function_handler** %15, align 8
  %17 = bitcast %struct.tep_function_handler* %16 to %struct.func_params*
  store %struct.func_params* %17, %struct.func_params** %3, align 8
  %18 = load %struct.func_params*, %struct.func_params** %3, align 8
  %19 = getelementptr inbounds %struct.func_params, %struct.func_params* %18, i32 0, i32 0
  %20 = load %struct.func_params*, %struct.func_params** %19, align 8
  %21 = bitcast %struct.func_params* %20 to %struct.tep_function_handler*
  %22 = load %struct.tep_function_handler*, %struct.tep_function_handler** %2, align 8
  %23 = getelementptr inbounds %struct.tep_function_handler, %struct.tep_function_handler* %22, i32 0, i32 1
  store %struct.tep_function_handler* %21, %struct.tep_function_handler** %23, align 8
  %24 = load %struct.func_params*, %struct.func_params** %3, align 8
  %25 = bitcast %struct.func_params* %24 to %struct.tep_function_handler*
  %26 = call i32 @free(%struct.tep_function_handler* %25)
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.tep_function_handler*, %struct.tep_function_handler** %2, align 8
  %29 = call i32 @free(%struct.tep_function_handler* %28)
  ret void
}

declare dso_local i32 @free(%struct.tep_function_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
