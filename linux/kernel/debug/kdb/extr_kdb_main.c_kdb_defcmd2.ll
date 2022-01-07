; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_defcmd2.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_defcmd2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.defcmd_set = type { i8**, i32, i32, i32, i32, i32 }

@defcmd_set = common dso_local global %struct.defcmd_set* null, align 8
@defcmd_set_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"endefcmd\00", align 1
@defcmd_in_progress = common dso_local global i32 0, align 4
@kdb_exec_defcmd = common dso_local global i32 0, align 4
@KDB_ENABLE_ALWAYS_SAFE = common dso_local global i32 0, align 4
@KDB_NOTIMP = common dso_local global i32 0, align 4
@GFP_KDB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Could not allocate new kdb_defcmd table for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @kdb_defcmd2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_defcmd2(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.defcmd_set*, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.defcmd_set*, %struct.defcmd_set** @defcmd_set, align 8
  %9 = load i32, i32* @defcmd_set_count, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %8, i64 %10
  %12 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %11, i64 -1
  store %struct.defcmd_set* %12, %struct.defcmd_set** %6, align 8
  %13 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %14 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  store i32 0, i32* @defcmd_in_progress, align 4
  %20 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %21 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %26 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %29 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %34 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @kdb_exec_defcmd, align 4
  %37 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %38 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %41 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @KDB_ENABLE_ALWAYS_SAFE, align 4
  %44 = call i32 @kdb_register_flags(i32 %35, i32 %36, i32 %39, i32 %42, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %32, %27
  store i32 0, i32* %3, align 4
  br label %98

46:                                               ; preds = %2
  %47 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %48 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @KDB_NOTIMP, align 4
  store i32 %52, i32* %3, align 4
  br label %98

53:                                               ; preds = %46
  %54 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %55 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @GFP_KDB, align 4
  %59 = call i8** @kcalloc(i32 %57, i32 8, i32 %58)
  %60 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %61 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %60, i32 0, i32 0
  store i8** %59, i8*** %61, align 8
  %62 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %63 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = icmp ne i8** %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %53
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @kdb_printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %70 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %69, i32 0, i32 2
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* @KDB_NOTIMP, align 4
  store i32 %71, i32* %3, align 4
  br label %98

72:                                               ; preds = %53
  %73 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %74 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = load i8**, i8*** %7, align 8
  %77 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %78 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(i8** %75, i8** %76, i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* @GFP_KDB, align 4
  %86 = call i8* @kdb_strdup(i8* %84, i32 %85)
  %87 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %88 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load %struct.defcmd_set*, %struct.defcmd_set** %6, align 8
  %91 = getelementptr inbounds %struct.defcmd_set, %struct.defcmd_set* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %89, i64 %94
  store i8* %86, i8** %95, align 8
  %96 = load i8**, i8*** %7, align 8
  %97 = call i32 @kfree(i8** %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %72, %66, %51, %45
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @kdb_register_flags(i32, i32, i32, i32, i32, i32) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kdb_printf(i8*, i8*) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i8* @kdb_strdup(i8*, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
