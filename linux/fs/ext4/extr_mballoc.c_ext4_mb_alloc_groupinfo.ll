; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_alloc_groupinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_alloc_groupinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.ext4_group_info*** }
%struct.ext4_group_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't allocate buddy meta group\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"allocated s_groupinfo array for %d meta_bg's\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_mb_alloc_groupinfo(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_info***, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %9)
  store %struct.ext4_sb_info* %10, %struct.ext4_sb_info** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %12)
  %14 = add nsw i32 %11, %13
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call i32 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %16)
  %18 = ashr i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ule i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @roundup_pow_of_two(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.ext4_group_info*** @kvzalloc(i32 %31, i32 %32)
  store %struct.ext4_group_info*** %33, %struct.ext4_group_info**** %8, align 8
  %34 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %8, align 8
  %35 = icmp ne %struct.ext4_group_info*** %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = call i32 @ext4_msg(%struct.super_block* %37, i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %25
  %43 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %44 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %43, i32 0, i32 1
  %45 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %44, align 8
  %46 = icmp ne %struct.ext4_group_info*** %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %8, align 8
  %49 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %50 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %49, i32 0, i32 1
  %51 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %50, align 8
  %52 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %53 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(%struct.ext4_group_info*** %48, %struct.ext4_group_info*** %51, i32 %57)
  %59 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %60 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %59, i32 0, i32 1
  %61 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %60, align 8
  %62 = call i32 @kvfree(%struct.ext4_group_info*** %61)
  br label %63

63:                                               ; preds = %47, %42
  %64 = load %struct.ext4_group_info***, %struct.ext4_group_info**** %8, align 8
  %65 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %65, i32 0, i32 1
  store %struct.ext4_group_info*** %64, %struct.ext4_group_info**** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = udiv i64 %68, 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %72 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %74 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ext4_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %63, %36, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local %struct.ext4_group_info*** @kvzalloc(i32, i32) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.ext4_group_info***, %struct.ext4_group_info***, i32) #1

declare dso_local i32 @kvfree(%struct.ext4_group_info***) #1

declare dso_local i32 @ext4_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
