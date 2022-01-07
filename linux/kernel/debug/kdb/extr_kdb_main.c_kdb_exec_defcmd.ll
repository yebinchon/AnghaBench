; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_exec_defcmd.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_exec_defcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.defcmd_set = type { i32, i32*, i32 }

@KDB_ARGCOUNT = common dso_local global i32 0, align 4
@defcmd_set = common dso_local global %struct.defcmd_set* null, align 8
@defcmd_set_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"kdb_exec_defcmd: could not find commands for %s\0A\00", align 1
@KDB_NOTIMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"[%s]kdb> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @kdb_exec_defcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_exec_defcmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.defcmd_set*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @KDB_ARGCOUNT, align 4
  store i32 %12, i32* %3, align 4
  br label %83

13:                                               ; preds = %2
  %14 = load %struct.defcmd_set*, %struct.defcmd_set** @defcmd_set, align 8
  store %struct.defcmd_set* %14, %struct.defcmd_set** %8, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %30, %13
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @defcmd_set_count, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.defcmd_set*, %struct.defcmd_set** %8, align 8
  %21 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i32 %22, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %35

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.defcmd_set*, %struct.defcmd_set** %8, align 8
  %34 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %33, i32 1
  store %struct.defcmd_set* %34, %struct.defcmd_set** %8, align 8
  br label %15

35:                                               ; preds = %28, %15
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @defcmd_set_count, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, i8*, ...) @kdb_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @KDB_NOTIMP, align 4
  store i32 %44, i32* %3, align 4
  br label %83

45:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %79, %45
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.defcmd_set*, %struct.defcmd_set** %8, align 8
  %49 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  store i8** null, i8*** %5, align 8
  %53 = load %struct.defcmd_set*, %struct.defcmd_set** %8, align 8
  %54 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.defcmd_set*, %struct.defcmd_set** %8, align 8
  %59 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i8*, ...) @kdb_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %64)
  %66 = load %struct.defcmd_set*, %struct.defcmd_set** %8, align 8
  %67 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @kdb_parse(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %52
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %52
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %46

82:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %76, %39, %11
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @kdb_printf(i8*, i8*, ...) #1

declare dso_local i32 @kdb_parse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
