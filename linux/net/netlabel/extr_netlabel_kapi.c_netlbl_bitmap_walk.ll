; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_bitmap_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_bitmap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_bitmap_walk(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %13, align 1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = srem i32 %22, 8
  %24 = ashr i32 128, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %12, align 1
  br label %26

26:                                               ; preds = %75, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8, i8* %13, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %12, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = load i8, i8* %12, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %33, %30
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8, i8* %13, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %12, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %33
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %77

54:                                               ; preds = %45, %42
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %77

60:                                               ; preds = %54
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = ashr i32 %62, 1
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %12, align 1
  %65 = load i8, i8* %12, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %13, align 1
  store i8 -128, i8* %12, align 1
  br label %75

75:                                               ; preds = %68, %60
  br label %26

76:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %59, %52
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
