; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_clamp_want_extra_isize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_clamp_want_extra_isize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i64, i64, %struct.ext4_super_block* }
%struct.ext4_super_block = type { i32, i32 }

@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"required extra inode space not available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ext4_clamp_want_extra_isize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_clamp_want_extra_isize(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ext4_sb_info*, align 8
  %4 = alloca %struct.ext4_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %5)
  store %struct.ext4_sb_info* %6, %struct.ext4_sb_info** %3, align 8
  %7 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %7, i32 0, i32 2
  %9 = load %struct.ext4_super_block*, %struct.ext4_super_block** %8, align 8
  store %struct.ext4_super_block* %9, %struct.ext4_super_block** %4, align 8
  %10 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXT4_GOOD_OLD_INODE_SIZE, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %1
  %16 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %17 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load i64, i64* @EXT4_GOOD_OLD_INODE_SIZE, align 8
  %22 = sub i64 4, %21
  %23 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = call i64 @ext4_has_feature_extra_isize(%struct.super_block* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %20
  %29 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %30 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ext4_super_block*, %struct.ext4_super_block** %4, align 8
  %33 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.ext4_super_block*, %struct.ext4_super_block** %4, align 8
  %39 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le16_to_cpu(i32 %40)
  %42 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %28
  %45 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %46 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ext4_super_block*, %struct.ext4_super_block** %4, align 8
  %49 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.ext4_super_block*, %struct.ext4_super_block** %4, align 8
  %55 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le16_to_cpu(i32 %56)
  %58 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %59 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %44
  br label %61

61:                                               ; preds = %60, %20
  br label %62

62:                                               ; preds = %61, %15, %1
  %63 = load i64, i64* @EXT4_GOOD_OLD_INODE_SIZE, align 8
  %64 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %65 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %69 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load i64, i64* @EXT4_GOOD_OLD_INODE_SIZE, align 8
  %74 = sub i64 4, %73
  %75 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %76 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.super_block*, %struct.super_block** %2, align 8
  %78 = load i32, i32* @KERN_INFO, align 4
  %79 = call i32 @ext4_msg(%struct.super_block* %77, i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %72, %62
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_extra_isize(%struct.super_block*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
