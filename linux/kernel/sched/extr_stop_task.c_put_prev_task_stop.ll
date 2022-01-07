; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_stop_task.c_put_prev_task_stop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_stop_task.c_put_prev_task_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.task_struct* }
%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*)* @put_prev_task_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_prev_task_stop(%struct.rq* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i8*, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load %struct.rq*, %struct.rq** %3, align 8
  %8 = getelementptr inbounds %struct.rq, %struct.rq* %7, i32 0, i32 0
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  store %struct.task_struct* %9, %struct.task_struct** %5, align 8
  %10 = load %struct.rq*, %struct.rq** %3, align 8
  %11 = call i8* @rq_clock_task(%struct.rq* %10)
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %11 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @max(i32 %37, i8* %38)
  %40 = call i32 @schedstat_set(i32 %32, i32 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %41, i64 %46
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @account_group_exec_runtime(%struct.task_struct* %49, i8* %50)
  %52 = load %struct.rq*, %struct.rq** %3, align 8
  %53 = call i8* @rq_clock_task(%struct.rq* %52)
  %54 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @cgroup_account_cputime(%struct.task_struct* %57, i8* %58)
  ret void
}

declare dso_local i8* @rq_clock_task(%struct.rq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedstat_set(i32, i32) #1

declare dso_local i32 @max(i32, i8*) #1

declare dso_local i32 @account_group_exec_runtime(%struct.task_struct*, i8*) #1

declare dso_local i32 @cgroup_account_cputime(%struct.task_struct*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
