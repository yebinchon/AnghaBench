; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_process_special_keys.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_process_special_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32*, %struct.menu*)* }
%struct.menu = type { i32 }

@KEY_RESIZE = common dso_local global i32 0, align 4
@function_keys_num = common dso_local global i32 0, align 4
@function_keys = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.menu*)* @process_special_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_special_keys(i32* %0, %struct.menu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.menu*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.menu* %1, %struct.menu** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @KEY_RESIZE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @setup_windows()
  store i32 1, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @function_keys_num, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @function_keys, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @KEY_F(i32 %26)
  %28 = icmp eq i32 %20, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @function_keys, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 48, %37
  %39 = icmp eq i32 %31, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %29, %18
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @function_keys, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (i32*, %struct.menu*)*, i32 (i32*, %struct.menu*)** %45, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.menu*, %struct.menu** %5, align 8
  %49 = call i32 %46(i32* %47, %struct.menu* %48)
  store i32 1, i32* %3, align 4
  br label %55

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %14

54:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %40, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @setup_windows(...) #1

declare dso_local i32 @KEY_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
