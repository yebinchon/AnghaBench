; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_decompress.c_LZ4_decompress_safe_usingDict.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_decompress.c_LZ4_decompress_safe_usingDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_decompress_safe_usingDict(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @LZ4_decompress_safe(i8* %17, i8* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %56

22:                                               ; preds = %6
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @KB, align 4
  %32 = mul nsw i32 64, %31
  %33 = sub nsw i32 %32, 1
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @LZ4_decompress_safe_withPrefix64k(i8* %36, i8* %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %56

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @LZ4_decompress_safe_withSmallPrefix(i8* %42, i8* %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %56

48:                                               ; preds = %22
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @LZ4_decompress_safe_forceExtDict(i8* %49, i8* %50, i32 %51, i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %48, %41, %35, %16
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @LZ4_decompress_safe(i8*, i8*, i32, i32) #1

declare dso_local i32 @LZ4_decompress_safe_withPrefix64k(i8*, i8*, i32, i32) #1

declare dso_local i32 @LZ4_decompress_safe_withSmallPrefix(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @LZ4_decompress_safe_forceExtDict(i8*, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
