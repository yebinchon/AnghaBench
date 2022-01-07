; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_translate_pid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_translate_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32 }
%struct.file_lock = type { i32 }
%struct.pid = type { i32 }

@init_pid_ns = common dso_local global %struct.pid_namespace zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.pid_namespace*)* @locks_translate_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locks_translate_pid(%struct.file_lock* %0, %struct.pid_namespace* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.pid_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pid*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %4, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %5, align 8
  %8 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %9 = call i64 @IS_OFDLCK(%struct.file_lock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %14 = call i64 @IS_REMOTELCK(%struct.file_lock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %12
  %21 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %22 = icmp eq %struct.pid_namespace* %21, @init_pid_ns
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %20
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.pid* @find_pid_ns(i32 %31, %struct.pid_namespace* @init_pid_ns)
  store %struct.pid* %32, %struct.pid** %7, align 8
  %33 = load %struct.pid*, %struct.pid** %7, align 8
  %34 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %35 = call i32 @pid_nr_ns(%struct.pid* %33, %struct.pid_namespace* %34)
  store i32 %35, i32* %6, align 4
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %27, %23, %16, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @IS_OFDLCK(%struct.file_lock*) #1

declare dso_local i64 @IS_REMOTELCK(%struct.file_lock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @find_pid_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @pid_nr_ns(%struct.pid*, %struct.pid_namespace*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
