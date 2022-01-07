; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_optimize_result.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_optimize_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@best_table_len = common dso_local global i32* null, align 8
@token_profit = common dso_local global i64* null, align 8
@best_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @optimize_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimize_result() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 255, i32* %1, align 4
  br label %3

3:                                                ; preds = %52, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %55

6:                                                ; preds = %3
  %7 = load i32*, i32** @best_table_len, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %6
  %14 = call i32 (...) @find_best_token()
  store i32 %14, i32* %2, align 4
  %15 = load i64*, i64** @token_profit, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %55

22:                                               ; preds = %13
  %23 = load i32*, i32** @best_table_len, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 2, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, 255
  %29 = load i32**, i32*** @best_table, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* %2, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load i32**, i32*** @best_table, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %37, i32* %43, align 4
  %44 = load i32**, i32*** @best_table, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @compress_symbols(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %22, %6
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %1, align 4
  br label %3

55:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @find_best_token(...) #1

declare dso_local i32 @compress_symbols(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
