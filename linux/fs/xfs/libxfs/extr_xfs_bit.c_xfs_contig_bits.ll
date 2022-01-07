; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bit.c_xfs_contig_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bit.c_xfs_contig_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIT_TO_WORD_SHIFT = common dso_local global i32 0, align 4
@NBWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_contig_bits(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @BIT_TO_WORD_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32* %16, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @BIT_TO_WORD_SHIFT, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NBWORD, align 4
  %27 = sub nsw i32 %26, 1
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @NBWORD, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %3
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @NBWORD, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  %45 = lshr i32 -1, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %79

51:                                               ; preds = %38
  %52 = load i32, i32* @NBWORD, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @NBWORD, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %3
  br label %59

59:                                               ; preds = %68, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  %65 = load i32, i32* %63, align 4
  store i32 %65, i32* %10, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %79

68:                                               ; preds = %62
  %69 = load i32, i32* @NBWORD, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @NBWORD, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %59

75:                                               ; preds = %59
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %4, align 4
  br label %86

79:                                               ; preds = %67, %50
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ffz(i32 %81)
  %83 = add nsw i32 %80, %82
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %79, %75
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ffz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
