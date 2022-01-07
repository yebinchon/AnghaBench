; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c___roll_back_blkaddrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c___roll_back_blkaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i32 }

@LOOKUP_NODE_RA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, i64, i32)* @__roll_back_blkaddrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__roll_back_blkaddrs(%struct.inode* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.f2fs_sb_info*, align 8
  %12 = alloca %struct.dnode_of_data, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %15)
  store %struct.f2fs_sb_info* %16, %struct.f2fs_sb_info** %11, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %51, %5
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %51

26:                                               ; preds = %21
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @set_new_dnode(%struct.dnode_of_data* %12, %struct.inode* %27, i32* null, i32* null, i32 0)
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* @LOOKUP_NODE_RA, align 4
  %34 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %12, i64 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @dec_valid_block_count(%struct.f2fs_sb_info* %38, %struct.inode* %39, i32 1)
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %11, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info* %41, i32 %43)
  br label %49

45:                                               ; preds = %26
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data* %12, i32 %47)
  br label %49

49:                                               ; preds = %45, %37
  %50 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %12)
  br label %51

51:                                               ; preds = %49, %25
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %7, align 8
  br label %17

58:                                               ; preds = %17
  ret i32 0
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #1

declare dso_local i32 @dec_valid_block_count(%struct.f2fs_sb_info*, %struct.inode*, i32) #1

declare dso_local i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
