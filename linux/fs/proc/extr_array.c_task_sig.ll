; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_array.c_task_sig.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_array.c_task_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.task_struct = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@RLIMIT_SIGPENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Threads:\09\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\0ASigQ:\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0ASigPnd:\09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ShdPnd:\09\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SigBlk:\09\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SigIgn:\09\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"SigCgt:\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.task_struct*)* @task_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_sig(%struct.seq_file* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %14 = call i32 @sigemptyset(i32* %6)
  %15 = call i32 @sigemptyset(i32* %7)
  %16 = call i32 @sigemptyset(i32* %8)
  %17 = call i32 @sigemptyset(i32* %9)
  %18 = call i32 @sigemptyset(i32* %10)
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = call i64 @lock_task_sighand(%struct.task_struct* %19, i64* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %2
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = call i32 @collect_sigign_sigcatch(%struct.task_struct* %36, i32* %9, i32* %10)
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = call i32 @get_nr_threads(%struct.task_struct* %38)
  store i32 %39, i32* %11, align 4
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = call %struct.TYPE_10__* @__task_cred(%struct.task_struct* %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = call i32 @atomic_read(i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %49 = load i32, i32* @RLIMIT_SIGPENDING, align 4
  %50 = call i64 @task_rlimit(%struct.task_struct* %48, i32 %49)
  store i64 %50, i64* %13, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %52 = call i32 @unlock_task_sighand(%struct.task_struct* %51, i64* %5)
  br label %53

53:                                               ; preds = %22, %2
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @seq_put_decimal_ull(%struct.seq_file* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = call i32 @seq_put_decimal_ull(%struct.seq_file* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @seq_put_decimal_ull(%struct.seq_file* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = call i32 @render_sigset_t(%struct.seq_file* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = call i32 @render_sigset_t(%struct.seq_file* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = call i32 @render_sigset_t(%struct.seq_file* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = call i32 @render_sigset_t(%struct.seq_file* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 @render_sigset_t(%struct.seq_file* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %10)
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @collect_sigign_sigcatch(%struct.task_struct*, i32*, i32*) #1

declare dso_local i32 @get_nr_threads(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_10__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @task_rlimit(%struct.task_struct*, i32) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @seq_put_decimal_ull(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @render_sigset_t(%struct.seq_file*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
