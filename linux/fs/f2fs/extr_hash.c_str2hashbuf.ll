; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_hash.c_str2hashbuf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_hash.c_str2hashbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*, i32)* @str2hashbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @str2hashbuf(i8* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 8
  %17 = or i32 %13, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %28, %4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = srem i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 8
  %53 = add i32 %50, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = srem i32 %54, 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %57, %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %8, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %8, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %77

85:                                               ; preds = %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
