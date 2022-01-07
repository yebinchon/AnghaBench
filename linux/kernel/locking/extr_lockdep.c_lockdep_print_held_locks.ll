; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_lockdep_print_held_locks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_lockdep_print_held_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"no locks held by %s/%d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%d lock%s held by %s/%d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TASK_RUNNING = common dso_local global i64 0, align 8
@current = common dso_local global %struct.task_struct* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c" #%d: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @lockdep_print_held_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lockdep_print_held_locks(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @READ_ONCE(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %16 = call i32 @task_pid_nr(%struct.task_struct* %15)
  %17 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16)
  br label %30

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = call i32 @task_pid_nr(%struct.task_struct* %27)
  %29 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8* %23, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %18, %11
  %31 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TASK_RUNNING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %39 = icmp ne %struct.task_struct* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %59

41:                                               ; preds = %36, %30
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @print_lock(i64 %54)
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %42

59:                                               ; preds = %40, %42
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @task_pid_nr(%struct.task_struct*) #1

declare dso_local i32 @print_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
