; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_mark_free_simple.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_mark_free_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_info = type { i32* }
%struct.ext4_sb_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i8*, i64, i64, %struct.ext4_group_info*)* @ext4_mb_mark_free_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_mb_mark_free_simple(%struct.super_block* %0, i8* %1, i64 %2, i64 %3, %struct.ext4_group_info* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext4_group_info*, align 8
  %11 = alloca %struct.ext4_sb_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.ext4_group_info* %4, %struct.ext4_group_info** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %16)
  store %struct.ext4_sb_info* %17, %struct.ext4_sb_info** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call i64 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %19)
  %21 = icmp sgt i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 2, %26
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %74, %5
  %29 = load i64, i64* %9, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %15, align 4
  %34 = zext i32 %33 to i64
  %35 = or i64 %32, %34
  %36 = call i64 @ffs(i64 %35)
  %37 = sub nsw i64 %36, 1
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @fls(i64 %38)
  %40 = sub nsw i64 %39, 1
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %44, %31
  %47 = load i64, i64* %12, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %14, align 8
  %51 = load %struct.ext4_group_info*, %struct.ext4_group_info** %10, align 8
  %52 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i64, i64* %12, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %46
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %12, align 8
  %63 = ashr i64 %61, %62
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %66 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %64, i64 %71
  %73 = call i32 @mb_clear_bit(i64 %63, i8* %72)
  br label %74

74:                                               ; preds = %60, %46
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %8, align 8
  br label %28

81:                                               ; preds = %28
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i64 @fls(i64) #1

declare dso_local i32 @mb_clear_bit(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
