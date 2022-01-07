; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.task_struct = type { i32 }

@KDB_ARGCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@kdb_initial_cpu = common dso_local global i32 0, align 4
@KDB_BADINT = common dso_local global i32 0, align 4
@init_pid_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No task with pid=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"KDB current process is %s(pid=%d)\0A\00", align 1
@kdb_current_task = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @kdb_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_pid(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @KDB_ARGCOUNT, align 4
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @kdb_initial_cpu, align 4
  %24 = call %struct.task_struct* @KDB_TSK(i32 %23)
  store %struct.task_struct* %24, %struct.task_struct** %6, align 8
  br label %45

25:                                               ; preds = %16
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @kdbgetularg(i8* %28, i64* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @KDB_BADINT, align 4
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %25
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = call %struct.task_struct* @find_task_by_pid_ns(i32 %36, i32* @init_pid_ns)
  store %struct.task_struct* %37, %struct.task_struct** %6, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %39 = icmp ne %struct.task_struct* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i8*, i32, ...) @kdb_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 0, i32* %3, align 4
  br label %56

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %47 = call i32 @kdb_set_current_task(%struct.task_struct* %46)
  br label %48

48:                                               ; preds = %45, %13
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_current_task, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_current_task, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @kdb_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %40, %32, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.task_struct* @KDB_TSK(i32) #1

declare dso_local i32 @kdbgetularg(i8*, i64*) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, i32*) #1

declare dso_local i32 @kdb_printf(i8*, i32, ...) #1

declare dso_local i32 @kdb_set_current_task(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
