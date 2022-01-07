; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_log_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_log_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XFS_BLF_SHIFT = common dso_local global i64 0, align 8
@BIT_TO_WORD_SHIFT = common dso_local global i64 0, align 8
@NBWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*)* @xfs_buf_item_log_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_buf_item_log_segment(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @XFS_BLF_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @XFS_BLF_SHIFT, align 8
  %21 = lshr i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %22, %23
  %25 = add i64 %24, 1
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @BIT_TO_WORD_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %11, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64* %31, i64** %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @NBWORD, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = and i64 %32, %35
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %3
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = load i32, i32* @NBWORD, align 4
  %44 = sext i32 %43 to i64
  %45 = call i64 @min(i64 %42, i64 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %13, align 8
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = sub i32 %50, 1
  %52 = load i64, i64* %13, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %51, %53
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64*, i64** %12, align 8
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = load i64*, i64** %12, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %12, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %10, align 8
  br label %66

65:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %66

66:                                               ; preds = %65, %39
  br label %67

67:                                               ; preds = %74, %66
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %68, %69
  %71 = load i32, i32* @NBWORD, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp uge i64 %70, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load i64*, i64** %12, align 8
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, 4294967295
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* @NBWORD, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %10, align 8
  %82 = load i64*, i64** %12, align 8
  %83 = getelementptr inbounds i64, i64* %82, i32 1
  store i64* %83, i64** %12, align 8
  br label %67

84:                                               ; preds = %67
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub i64 %85, %86
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i64, i64* %14, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 1, %92
  %94 = sub i32 %93, 1
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, %96
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %90, %84
  ret void
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
