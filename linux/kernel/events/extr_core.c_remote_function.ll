; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_remote_function.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_remote_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.remote_function_call = type { i32, i32 (i32)*, i32, %struct.task_struct* }

@ESRCH = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.remote_function_call*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.remote_function_call*
  store %struct.remote_function_call* %6, %struct.remote_function_call** %3, align 8
  %7 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %8 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %7, i32 0, i32 3
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  store %struct.task_struct* %9, %struct.task_struct** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = call i64 @task_cpu(%struct.task_struct* %13)
  %15 = call i64 (...) @smp_processor_id()
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %38

18:                                               ; preds = %12
  %19 = load i32, i32* @ESRCH, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %22 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %25 = icmp ne %struct.task_struct* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %38

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %30 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %29, i32 0, i32 1
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %33 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34)
  %36 = load %struct.remote_function_call*, %struct.remote_function_call** %3, align 8
  %37 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %28, %26, %17
  ret void
}

declare dso_local i64 @task_cpu(%struct.task_struct*) #1

declare dso_local i64 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
