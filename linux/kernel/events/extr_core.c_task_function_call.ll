; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_task_function_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_task_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.remote_function_call = type { i8*, i32, i32, %struct.task_struct* }

@EAGAIN = common dso_local global i32 0, align 4
@remote_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i8*)* @task_function_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_function_call(%struct.task_struct* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.remote_function_call, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %7, i32 0, i32 0
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %7, i32 0, i32 1
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 8
  %14 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %7, i32 0, i32 2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %7, i32 0, i32 3
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %17, %struct.task_struct** %16, align 8
  br label %18

18:                                               ; preds = %29, %3
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = call i32 @task_cpu(%struct.task_struct* %19)
  %21 = load i32, i32* @remote_function, align 4
  %22 = call i32 @smp_call_function_single(i32 %20, i32 %21, %struct.remote_function_call* %7, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.remote_function_call, %struct.remote_function_call* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %18, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.remote_function_call*, i32) #1

declare dso_local i32 @task_cpu(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
