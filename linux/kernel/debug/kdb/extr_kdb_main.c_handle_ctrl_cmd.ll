; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_handle_ctrl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_handle_ctrl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmd_head = common dso_local global i64 0, align 8
@cmd_tail = common dso_local global i64 0, align 8
@cmdptr = common dso_local global i64 0, align 8
@KDB_CMD_HISTORY_COUNT = common dso_local global i64 0, align 8
@cmd_cur = common dso_local global i32 0, align 4
@cmd_hist = common dso_local global i32* null, align 8
@CMD_BUFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @handle_ctrl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ctrl_cmd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @cmd_head, align 8
  %5 = load i64, i64* @cmd_tail, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %46 [
    i32 16, label %12
    i32 14, label %29
  ]

12:                                               ; preds = %8
  %13 = load i64, i64* @cmdptr, align 8
  %14 = load i64, i64* @cmd_tail, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i64, i64* @cmdptr, align 8
  %18 = sub nsw i64 %17, 1
  %19 = load i64, i64* @KDB_CMD_HISTORY_COUNT, align 8
  %20 = srem i64 %18, %19
  store i64 %20, i64* @cmdptr, align 8
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* @cmd_cur, align 4
  %23 = load i32*, i32** @cmd_hist, align 8
  %24 = load i64, i64* @cmdptr, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CMD_BUFLEN, align 4
  %28 = call i32 @strncpy(i32 %22, i32 %26, i32 %27)
  store i32 1, i32* %2, align 4
  br label %47

29:                                               ; preds = %8
  %30 = load i64, i64* @cmdptr, align 8
  %31 = load i64, i64* @cmd_head, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* @cmdptr, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i64, i64* @KDB_CMD_HISTORY_COUNT, align 8
  %37 = srem i64 %35, %36
  store i64 %37, i64* @cmdptr, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* @cmd_cur, align 4
  %40 = load i32*, i32** @cmd_hist, align 8
  %41 = load i64, i64* @cmdptr, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CMD_BUFLEN, align 4
  %45 = call i32 @strncpy(i32 %39, i32 %43, i32 %44)
  store i32 1, i32* %2, align 4
  br label %47

46:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %38, %21, %7
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
