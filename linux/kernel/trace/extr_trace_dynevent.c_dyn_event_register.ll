; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_dynevent.c_dyn_event_register.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_dynevent.c_dyn_event_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_event_operations = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@dyn_event_ops_mutex = common dso_local global i32 0, align 4
@dyn_event_ops_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dyn_event_register(%struct.dyn_event_operations* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dyn_event_operations*, align 8
  store %struct.dyn_event_operations* %0, %struct.dyn_event_operations** %3, align 8
  %4 = load %struct.dyn_event_operations*, %struct.dyn_event_operations** %3, align 8
  %5 = icmp ne %struct.dyn_event_operations* %4, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load %struct.dyn_event_operations*, %struct.dyn_event_operations** %3, align 8
  %8 = getelementptr inbounds %struct.dyn_event_operations, %struct.dyn_event_operations* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load %struct.dyn_event_operations*, %struct.dyn_event_operations** %3, align 8
  %13 = getelementptr inbounds %struct.dyn_event_operations, %struct.dyn_event_operations* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.dyn_event_operations*, %struct.dyn_event_operations** %3, align 8
  %18 = getelementptr inbounds %struct.dyn_event_operations, %struct.dyn_event_operations* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.dyn_event_operations*, %struct.dyn_event_operations** %3, align 8
  %23 = getelementptr inbounds %struct.dyn_event_operations, %struct.dyn_event_operations* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.dyn_event_operations*, %struct.dyn_event_operations** %3, align 8
  %28 = getelementptr inbounds %struct.dyn_event_operations, %struct.dyn_event_operations* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %21, %16, %11, %6, %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %43

34:                                               ; preds = %26
  %35 = load %struct.dyn_event_operations*, %struct.dyn_event_operations** %3, align 8
  %36 = getelementptr inbounds %struct.dyn_event_operations, %struct.dyn_event_operations* %35, i32 0, i32 0
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = call i32 @mutex_lock(i32* @dyn_event_ops_mutex)
  %39 = load %struct.dyn_event_operations*, %struct.dyn_event_operations** %3, align 8
  %40 = getelementptr inbounds %struct.dyn_event_operations, %struct.dyn_event_operations* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %40, i32* @dyn_event_ops_list)
  %42 = call i32 @mutex_unlock(i32* @dyn_event_ops_mutex)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %31
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
