; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_clear_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.nilfs_inode_info = type { i64, i32, i32, i32, i32*, i32 }

@NILFS_I_BMAP = common dso_local global i32 0, align 4
@NILFS_ROOT_INO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @nilfs_clear_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %4)
  store %struct.nilfs_inode_info* %5, %struct.nilfs_inode_info** %3, align 8
  %6 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %7 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %6, i32 0, i32 5
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %14 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @brelse(i32* %15)
  %17 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %18 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call i64 @nilfs_is_metadata_file_inode(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call i32 @nilfs_mdt_clear(%struct.inode* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @NILFS_I_BMAP, align 4
  %27 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %28 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %27, i32 0, i32 3
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %33 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nilfs_bmap_clear(i32 %34)
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %38 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %37, i32 0, i32 1
  %39 = call i32 @nilfs_btnode_cache_clear(i32* %38)
  %40 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %41 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NILFS_ROOT_INO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %3, align 8
  %52 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @nilfs_put_root(i64 %53)
  br label %55

55:                                               ; preds = %50, %44, %36
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i64 @nilfs_is_metadata_file_inode(%struct.inode*) #1

declare dso_local i32 @nilfs_mdt_clear(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_bmap_clear(i32) #1

declare dso_local i32 @nilfs_btnode_cache_clear(i32*) #1

declare dso_local i32 @nilfs_put_root(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
