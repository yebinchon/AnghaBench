; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c___change_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c___change_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32* }
%struct.pid = type { i32* }

@PIDTYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.pid*)* @__change_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__change_pid(%struct.task_struct* %0, i32 %1, %struct.pid* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pid*, align 8
  %7 = alloca %struct.pid**, align 8
  %8 = alloca %struct.pid*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pid* %2, %struct.pid** %6, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.pid** @task_pid_ptr(%struct.task_struct* %10, i32 %11)
  store %struct.pid** %12, %struct.pid*** %7, align 8
  %13 = load %struct.pid**, %struct.pid*** %7, align 8
  %14 = load %struct.pid*, %struct.pid** %13, align 8
  store %struct.pid* %14, %struct.pid** %8, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @hlist_del_rcu(i32* %20)
  %22 = load %struct.pid*, %struct.pid** %6, align 8
  %23 = load %struct.pid**, %struct.pid*** %7, align 8
  store %struct.pid* %22, %struct.pid** %23, align 8
  %24 = load i32, i32* @PIDTYPE_MAX, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %39, %3
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.pid*, %struct.pid** %8, align 8
  %31 = getelementptr inbounds %struct.pid, %struct.pid* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @hlist_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %43

39:                                               ; preds = %29
  br label %25

40:                                               ; preds = %25
  %41 = load %struct.pid*, %struct.pid** %8, align 8
  %42 = call i32 @free_pid(%struct.pid* %41)
  br label %43

43:                                               ; preds = %40, %38
  ret void
}

declare dso_local %struct.pid** @task_pid_ptr(%struct.task_struct*, i32) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @free_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
