; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_shuffle.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RECORD_TYPE = common dso_local global i64 0, align 8
@shuffle_seed = common dso_local global i32* null, align 8
@performance_mode = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i64)* @shuffle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shuffle(i64 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %55

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @RECORD_TYPE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i8* @ORIG_TYPE_NAME(i64 %21)
  store i8* %22, i8** %10, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %39, %14
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i32*, i32** @shuffle_seed, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %31
  store i32 %30, i32* %32, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @name_hash(i8* %33)
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %26
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %23

42:                                               ; preds = %23
  %43 = bitcast [4 x i32]* %8 to i32*
  %44 = call i32 @raninit(i32* %9, i32* %43)
  %45 = load i64, i64* @performance_mode, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @performance_shuffle(i32* %48, i64 %49, i32* %9)
  br label %55

51:                                               ; preds = %42
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @full_shuffle(i32* %52, i64 %53, i32* %9)
  br label %55

55:                                               ; preds = %13, %51, %47
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i8* @ORIG_TYPE_NAME(i64) #1

declare dso_local i32 @name_hash(i8*) #1

declare dso_local i32 @raninit(i32*, i32*) #1

declare dso_local i32 @performance_shuffle(i32*, i64, i32*) #1

declare dso_local i32 @full_shuffle(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
