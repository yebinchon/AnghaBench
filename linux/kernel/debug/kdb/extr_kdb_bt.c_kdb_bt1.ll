; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_bt.c_kdb_bt1.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_bt.c_kdb_bt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@KDB_BADADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Stack traceback for pid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Enter <q> to end, <cr> to continue:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i32, i32)* @kdb_bt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_bt1(%struct.task_struct* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = ptrtoint %struct.task_struct* %13 to i64
  %15 = call i64 @kdb_getarea(i8 signext %12, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i64 1
  %22 = ptrtoint %struct.task_struct* %21 to i64
  %23 = sub i64 %22, 1
  %24 = call i64 @kdb_getarea(i8 signext %19, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17, %4
  %27 = load i32, i32* @KDB_BADADDR, align 4
  store i32 %27, i32* %5, align 4
  br label %57

28:                                               ; preds = %17
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @kdb_task_state(%struct.task_struct* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %57

34:                                               ; preds = %28
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = call i32 @kdb_ps1(%struct.task_struct* %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = call i32 @kdb_show_stack(%struct.task_struct* %41, i32* null)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %47 = call i32 @kdb_getstr(i8* %46, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 113
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %57

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %34
  %56 = call i32 (...) @touch_nmi_watchdog()
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %52, %33, %26
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @kdb_getarea(i8 signext, i64) #1

declare dso_local i32 @kdb_task_state(%struct.task_struct*, i64) #1

declare dso_local i32 @kdb_printf(i8*, ...) #1

declare dso_local i32 @kdb_ps1(%struct.task_struct*) #1

declare dso_local i32 @kdb_show_stack(%struct.task_struct*, i32*) #1

declare dso_local i32 @kdb_getstr(i8*, i32, i8*) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
