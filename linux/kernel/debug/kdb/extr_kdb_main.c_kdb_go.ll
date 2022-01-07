; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_go.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdb_initial_cpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"go must execute on the entry cpu, please use \22cpu %d\22 and then execute go\0A\00", align 1
@KDB_BADCPUNUM = common dso_local global i32 0, align 4
@KDB_ARGCOUNT = common dso_local global i32 0, align 4
@KDB_CMD_GO = common dso_local global i32 0, align 4
@CATASTROPHIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Catastrophic error detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"kdb_continue_catastrophic=%d, \00", align 1
@kdb_continue_catastrophic = common dso_local global i32 0, align 4
@kdb_go_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"type go a second time if you really want to continue\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"forcing reboot\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"attempting to continue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @kdb_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_go(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (...) @raw_smp_processor_id()
  %11 = load i32, i32* @kdb_initial_cpu, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @kdb_initial_cpu, align 4
  %15 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @KDB_BADCPUNUM, align 4
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @kdbgetaddrarg(i32 %21, i8** %22, i32* %8, i64* %6, i64* %9, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %20
  br label %35

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @KDB_ARGCOUNT, align 4
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* @KDB_CMD_GO, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @CATASTROPHIC, align 4
  %38 = call i64 @KDB_FLAG(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @kdb_continue_catastrophic, align 4
  %43 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @kdb_continue_catastrophic, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @kdb_go_count, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @kdb_go_count, align 4
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @kdb_continue_catastrophic, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 @kdb_reboot(i32 0, i32* null)
  br label %58

58:                                               ; preds = %55, %52
  %59 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %35
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %50, %32, %26, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @kdb_printf(i8*, ...) #1

declare dso_local i32 @kdbgetaddrarg(i32, i8**, i32*, i64*, i64*, i32*) #1

declare dso_local i64 @KDB_FLAG(i32) #1

declare dso_local i32 @kdb_reboot(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
