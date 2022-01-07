; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_dec_valid_node_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_dec_valid_node_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, i64, i32, i32, i32 }
%struct.inode = type { i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Inconsistent i_blocks, ino:%lu, iblocks:%llu\00", align 1
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.inode*, i32)* @dec_valid_node_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_valid_node_count(%struct.f2fs_sb_info* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %7, i32 0, i32 2
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %10, i32 %16)
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %20 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %18, i32 %24)
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %27 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %31 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %35 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %40 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %43 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %48 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %46, %38, %3
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %53 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @dquot_free_inode(%struct.inode* %58)
  br label %83

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %75)
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %78 = load i32, i32* @SBI_NEED_FSCK, align 4
  %79 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %77, i32 %78)
  br label %83

80:                                               ; preds = %60
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = call i32 @f2fs_i_blocks_write(%struct.inode* %81, i32 1, i32 0, i32 1)
  br label %83

83:                                               ; preds = %68, %80, %57
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i32, i64) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_i_blocks_write(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
