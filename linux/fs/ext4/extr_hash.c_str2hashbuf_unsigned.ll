; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_hash.c_str2hashbuf_unsigned.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_hash.c_str2hashbuf_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32)* @str2hashbuf_unsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @str2hashbuf_unsigned(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 4
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, 8
  %44 = add nsw i32 %41, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = srem i32 %45, 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %48, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %8, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %72, %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %8, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %68

76:                                               ; preds = %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
