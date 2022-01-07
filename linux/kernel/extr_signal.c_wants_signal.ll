; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_wants_signal.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_wants_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }

@PF_EXITING = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @wants_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wants_signal(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 1
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @sigismember(i32* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PF_EXITING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SIGKILL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %42

25:                                               ; preds = %20
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = call i64 @task_is_stopped_or_traced(%struct.task_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %42

30:                                               ; preds = %25
  %31 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %32 = call i64 @task_curr(%struct.task_struct* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %36 = call i32 @signal_pending(%struct.task_struct* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ true, %30 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %29, %24, %19, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i64 @task_is_stopped_or_traced(%struct.task_struct*) #1

declare dso_local i64 @task_curr(%struct.task_struct*) #1

declare dso_local i32 @signal_pending(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
