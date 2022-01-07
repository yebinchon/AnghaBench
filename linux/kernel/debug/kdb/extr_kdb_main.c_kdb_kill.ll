; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_kill.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.task_struct* }

@KDB_ARGCOUNT = common dso_local global i32 0, align 4
@KDB_BADINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid signal parameter.<-signal>\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Process ID must be large than 0.\0A\00", align 1
@init_pid_ns = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"The specified process isn't found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @kdb_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_kill(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @KDB_ARGCOUNT, align 4
  store i32 %13, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @simple_strtol(i8* %17, i8** %8, i32 0)
  store i64 %18, i64* %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @KDB_BADINT, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 0, %28
  %30 = call i32 @valid_signal(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %24
  %33 = call i32 @kdb_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %6, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @simple_strtol(i8* %39, i8** %8, i32 0)
  store i64 %40, i64* %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @KDB_BADINT, align 4
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %34
  %47 = load i64, i64* %7, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @kdb_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = call %struct.task_struct* @find_task_by_pid_ns(i64 %52, i32* @init_pid_ns)
  store %struct.task_struct* %53, %struct.task_struct** %9, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %55 = icmp ne %struct.task_struct* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = call i32 @kdb_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

58:                                               ; preds = %51
  %59 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 0
  %61 = load %struct.task_struct*, %struct.task_struct** %60, align 8
  store %struct.task_struct* %61, %struct.task_struct** %9, align 8
  %62 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @kdb_send_sig(%struct.task_struct* %62, i64 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %56, %49, %44, %32, %22, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @simple_strtol(i8*, i8**, i32) #1

declare dso_local i32 @valid_signal(i64) #1

declare dso_local i32 @kdb_printf(i8*) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i64, i32*) #1

declare dso_local i32 @kdb_send_sig(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
