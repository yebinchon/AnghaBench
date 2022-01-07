; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_dec_valid_block_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_dec_valid_block_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, i64, i64, i32 }
%struct.inode = type { i64, i32 }

@F2FS_LOG_SECTORS_PER_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Inconsistent i_blocks, ino:%lu, iblocks:%llu, sectors:%llu\00", align 1
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.inode*, i64)* @dec_valid_block_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_valid_block_count(%struct.f2fs_sb_info* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @F2FS_LOG_SECTORS_PER_BLOCK, align 8
  %10 = shl i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %11, i32 0, i32 3
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %16 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %14, i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %24 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %28 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %3
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %33 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %36 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %44 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i64 @min(i64 %42, i64 %47)
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %50 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %39, %31, %3
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %53 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %52, i32 0, i32 3
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %51
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %64, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %70, i64 %71)
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %74 = load i32, i32* @SBI_NEED_FSCK, align 4
  %75 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %73, i32 %74)
  br label %80

76:                                               ; preds = %51
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @f2fs_i_blocks_write(%struct.inode* %77, i64 %78, i32 0, i32 1)
  br label %80

80:                                               ; preds = %76, %63
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i32, i64, i64) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_i_blocks_write(%struct.inode*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
