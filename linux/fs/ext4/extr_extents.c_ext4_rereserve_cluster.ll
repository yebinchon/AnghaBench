; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_rereserve_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_rereserve_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_sb_info = type { i32, i32 }
%struct.ext4_inode_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @ext4_rereserve_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_rereserve_cluster(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca %struct.ext4_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ext4_sb_info* @EXT4_SB(i32 %9)
  store %struct.ext4_sb_info* %10, %struct.ext4_sb_info** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %11)
  store %struct.ext4_inode_info* %12, %struct.ext4_inode_info** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %15 = call i32 @EXT4_C2B(%struct.ext4_sb_info* %14, i32 1)
  %16 = call i32 @dquot_reclaim_block(%struct.inode* %13, i32 %15)
  %17 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %18 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %24, i32 0, i32 1
  %26 = call i32 @percpu_counter_add(i32* %25, i32 1)
  %27 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %28 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %31 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %30, i32 0, i32 0
  %32 = call i32 @percpu_counter_add(i32* %31, i32 1)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ext4_remove_pending(%struct.inode* %33, i32 %34)
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @dquot_reclaim_block(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_C2B(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @percpu_counter_add(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ext4_remove_pending(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
