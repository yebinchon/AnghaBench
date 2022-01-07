; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_arc4.c_arc4_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_arc4.c_arc4_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc4_ctx = type { i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arc4_setkey(%struct.arc4_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.arc4_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arc4_ctx* %0, %struct.arc4_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.arc4_ctx*, %struct.arc4_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.arc4_ctx*, %struct.arc4_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %26, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.arc4_ctx*, %struct.arc4_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %15

29:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %33, label %80

33:                                               ; preds = %30
  %34 = load %struct.arc4_ctx*, %struct.arc4_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %41, %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = and i32 %49, 255
  store i32 %50, i32* %8, align 4
  %51 = load %struct.arc4_ctx*, %struct.arc4_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.arc4_ctx*, %struct.arc4_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.arc4_ctx*, %struct.arc4_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %33
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %30

80:                                               ; preds = %30
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
