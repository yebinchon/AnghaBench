; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_io.c_kgdb_transition_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_io.c_kgdb_transition_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KGDB_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kgdb\00", align 1
@DOING_KGDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kgdb_transition_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgdb_transition_check(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 43
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 36
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @KGDB_TRANS, align 4
  %18 = call i32 @KDB_STATE_SET(i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @kdb_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %43

21:                                               ; preds = %10, %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @kdb_gdb_state_pass(i8* %36)
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcpy(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @DOING_KGDB, align 4
  %41 = call i32 @KDB_STATE_SET(i32 %40)
  store i32 1, i32* %2, align 4
  br label %44

42:                                               ; preds = %26, %21
  br label %43

43:                                               ; preds = %42, %16
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @KDB_STATE_SET(i32) #1

declare dso_local i32 @kdb_printf(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kdb_gdb_state_pass(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
