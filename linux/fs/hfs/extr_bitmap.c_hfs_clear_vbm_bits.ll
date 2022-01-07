; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_bitmap.c_hfs_clear_vbm_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_bitmap.c_hfs_clear_vbm_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32* }

@BITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clear_bits: %u,%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_clear_vbm_bits(%struct.super_block* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

16:                                               ; preds = %3
  %17 = load i32, i32* @BITMAP, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @hfs_dbg(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 -2, i32* %4, align 4
  br label %118

30:                                               ; preds = %16
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sdiv i64 %39, 32
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i64, i64* %6, align 8
  %45 = srem i64 %44, 32
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %30
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 32, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = shl i32 -1, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = lshr i32 -1, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @cpu_to_be32(i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %105

72:                                               ; preds = %49
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @cpu_to_be32(i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  %77 = load i32, i32* %75, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %75, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %7, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %72, %30
  br label %84

84:                                               ; preds = %87, %83
  %85 = load i64, i64* %7, align 8
  %86 = icmp sge i64 %85, 32
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %8, align 8
  store i32 0, i32* %88, align 4
  %90 = load i64, i64* %7, align 8
  %91 = sub nsw i64 %90, 32
  store i64 %91, i64* %7, align 8
  br label %84

92:                                               ; preds = %84
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i64, i64* %7, align 8
  %97 = trunc i64 %96 to i32
  %98 = lshr i32 -1, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @cpu_to_be32(i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %95, %92
  br label %105

105:                                              ; preds = %104, %58
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.super_block*, %struct.super_block** %5, align 8
  %108 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %107)
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, %106
  store i32 %111, i32* %109, align 8
  %112 = load %struct.super_block*, %struct.super_block** %5, align 8
  %113 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load %struct.super_block*, %struct.super_block** %5, align 8
  %117 = call i32 @hfs_bitmap_dirty(%struct.super_block* %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %105, %29, %15
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @hfs_dbg(i32, i8*, i64, i64) #1

declare dso_local %struct.TYPE_2__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hfs_bitmap_dirty(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
