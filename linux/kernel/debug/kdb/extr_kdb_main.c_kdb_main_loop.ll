; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_main_loop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_main_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"kdb_main_loop 1\00", align 1
@HOLD_CPU = common dso_local global i32 0, align 4
@KDB = common dso_local global i32 0, align 4
@SUPPRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"kdb_main_loop 2\00", align 1
@LEAVING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"kdb_main_loop 3\00", align 1
@KDB_CMD_CPU = common dso_local global i32 0, align 4
@KDB_CMD_SS = common dso_local global i32 0, align 4
@DOING_SS = common dso_local global i32 0, align 4
@KDB_CMD_KGDB = common dso_local global i32 0, align 4
@DOING_KGDB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Entering please attach debugger or use $D#44+ or $3#33\0A\00", align 1
@KDB_CMD_GO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"\0AUnexpected kdb_local return code %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"kdb_main_loop 4\00", align 1
@SSBPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdb_main_loop(i32 %0, i32 %1, i32 %2, i32 %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  store i32 1, i32* %11, align 4
  br label %12

12:                                               ; preds = %5
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @KDB_DEBUG_STATE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %26, %12
  %16 = load i32, i32* @HOLD_CPU, align 4
  %17 = call i64 @KDB_STATE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* @KDB, align 4
  %21 = call i64 @KDB_STATE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @KDB, align 4
  %25 = call i32 @KDB_STATE_SET(i32 %24)
  br label %26

26:                                               ; preds = %23, %19
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @SUPPRESS, align 4
  %29 = call i32 @KDB_STATE_CLEAR(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @KDB_DEBUG_STATE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @LEAVING, align 4
  %33 = call i64 @KDB_STATE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %82

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @kdb_local(i32 %37, i32 %38, %struct.pt_regs* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @KDB_DEBUG_STATE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @KDB_CMD_CPU, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %82

48:                                               ; preds = %36
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @KDB_CMD_SS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @DOING_SS, align 4
  %54 = call i32 @KDB_STATE_SET(i32 %53)
  br label %82

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @KDB_CMD_KGDB, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* @DOING_KGDB, align 4
  %61 = call i64 @KDB_STATE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  br label %82

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @KDB_CMD_GO, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %72, %69, %66
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @KDB_DEBUG_STATE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %65, %52, %47, %35
  %83 = load i32, i32* @DOING_SS, align 4
  %84 = call i64 @KDB_STATE(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @SSBPT, align 4
  %88 = call i32 @KDB_STATE_CLEAR(i32 %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = call i32 (...) @kdb_kbd_cleanup_state()
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local i32 @KDB_DEBUG_STATE(i8*, i32) #1

declare dso_local i64 @KDB_STATE(i32) #1

declare dso_local i32 @KDB_STATE_SET(i32) #1

declare dso_local i32 @KDB_STATE_CLEAR(i32) #1

declare dso_local i32 @kdb_local(i32, i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @kdb_printf(i8*, ...) #1

declare dso_local i32 @kdb_kbd_cleanup_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
