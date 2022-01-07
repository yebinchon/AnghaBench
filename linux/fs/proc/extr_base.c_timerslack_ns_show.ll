; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_timerslack_ns_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_timerslack_ns_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.seq_file = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @timerslack_ns_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timerslack_ns_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.task_struct* @get_proc_task(%struct.inode* %12)
  store %struct.task_struct* %13, %struct.task_struct** %7, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ESRCH, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %22 = icmp ne %struct.task_struct* %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %26 = call %struct.TYPE_2__* @__task_cred(%struct.task_struct* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAP_SYS_NICE, align 4
  %30 = call i32 @ns_capable(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = call i32 (...) @rcu_read_unlock()
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %54

36:                                               ; preds = %23
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %39 = call i32 @security_task_getscheduler(%struct.task_struct* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %54

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %46 = call i32 @task_lock(%struct.task_struct* %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %53 = call i32 @task_unlock(%struct.task_struct* %52)
  br label %54

54:                                               ; preds = %44, %42, %32
  %55 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %56 = call i32 @put_task_struct(%struct.task_struct* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_2__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @security_task_getscheduler(%struct.task_struct*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
