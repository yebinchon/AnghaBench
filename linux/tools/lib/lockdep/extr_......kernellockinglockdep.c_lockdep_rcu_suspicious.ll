; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lockdep_rcu_suspicious.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lockdep_rcu_suspicious.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"=============================\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"WARNING: suspicious RCU usage\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"-----------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s:%d %s!\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\0Aother info that might help us debug this:\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\0A%srcu_scheduler_active = %d, debug_locks = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"RCU used illegally from offline CPU!\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"RCU used illegally from idle CPU!\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rcu_scheduler_active = common dso_local global i32 0, align 4
@debug_locks = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"RCU used illegally from extended quiescent state!\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"\0Astack backtrace:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lockdep_rcu_suspicious(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %7, align 8
  %9 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 (...) @print_kernel_ident()
  %13 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %14, i32 %15, i8* %16)
  %18 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 (...) @rcu_lockdep_current_cpu_online()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %28

22:                                               ; preds = %3
  %23 = call i32 (...) @rcu_is_watching()
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  br label %28

28:                                               ; preds = %22, %21
  %29 = phi i8* [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), %21 ], [ %27, %22 ]
  %30 = load i32, i32* @rcu_scheduler_active, align 4
  %31 = load i32, i32* @debug_locks, align 4
  %32 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %29, i32 %30, i32 %31)
  %33 = call i32 (...) @rcu_is_watching()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  %38 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %39 = call i32 @lockdep_print_held_locks(%struct.task_struct* %38)
  %40 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %41 = call i32 (...) @dump_stack()
  ret void
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @print_kernel_ident(...) #1

declare dso_local i32 @rcu_lockdep_current_cpu_online(...) #1

declare dso_local i32 @rcu_is_watching(...) #1

declare dso_local i32 @lockdep_print_held_locks(%struct.task_struct*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
