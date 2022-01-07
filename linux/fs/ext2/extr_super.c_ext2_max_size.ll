; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_max_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT2_NDIR_BLOCKS = common dso_local global i64 0, align 8
@MAX_LFS_FILESIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @ext2_max_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2_max_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* @EXT2_NDIR_BLOCKS, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sub nsw i32 %8, 2
  %10 = shl i32 1, %9
  store i32 %10, i32* %6, align 4
  store i32 -1, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %11, 9
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 2
  %23 = mul nsw i32 2, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %28, 2
  %30 = mul nsw i32 3, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  %33 = load i64, i64* %3, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %97

40:                                               ; preds = %1
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* @EXT2_NDIR_BLOCKS, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul i32 %52, %53
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %40
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @DIV_ROUND_UP(i32 %57, i32 %58)
  %60 = add nsw i64 1, %59
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %3, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %3, align 8
  br label %97

69:                                               ; preds = %40
  %70 = load i32, i32* %6, align 4
  %71 = add i32 1, %70
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = mul i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @DIV_ROUND_UP(i32 %79, i32 %80)
  %82 = add nsw i64 1, %81
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = mul i32 %84, %85
  %87 = call i64 @DIV_ROUND_UP(i32 %83, i32 %86)
  %88 = add nsw i64 %82, %87
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %3, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* %3, align 8
  br label %97

97:                                               ; preds = %69, %56, %39
  %98 = load i32, i32* %2, align 4
  %99 = load i64, i64* %3, align 8
  %100 = zext i32 %98 to i64
  %101 = shl i64 %99, %100
  store i64 %101, i64* %3, align 8
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* @MAX_LFS_FILESIZE, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i64, i64* @MAX_LFS_FILESIZE, align 8
  store i64 %106, i64* %3, align 8
  br label %107

107:                                              ; preds = %105, %97
  %108 = load i64, i64* %3, align 8
  ret i64 %108
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
