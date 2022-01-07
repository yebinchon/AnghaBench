; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_private_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_private_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.super_block = type { i32 }
%struct.qnx6_root_node = type { i32, i32, i32 }
%struct.qnx6_inode_info = type { i32, i32 }
%struct.qnx6_sb_info = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@qnx6_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.qnx6_root_node*)* @qnx6_private_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @qnx6_private_inode(%struct.super_block* %0, %struct.qnx6_root_node* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.qnx6_root_node*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qnx6_inode_info*, align 8
  %7 = alloca %struct.qnx6_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.qnx6_root_node* %1, %struct.qnx6_root_node** %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.inode* @new_inode(%struct.super_block* %8)
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.qnx6_inode_info* @QNX6_I(%struct.inode* %13)
  store %struct.qnx6_inode_info* %14, %struct.qnx6_inode_info** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %15)
  store %struct.qnx6_sb_info* %16, %struct.qnx6_sb_info** %7, align 8
  %17 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %7, align 8
  %18 = load %struct.qnx6_root_node*, %struct.qnx6_root_node** %4, align 8
  %19 = getelementptr inbounds %struct.qnx6_root_node, %struct.qnx6_root_node* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fs64_to_cpu(%struct.qnx6_sb_info* %17, i32 %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.qnx6_inode_info*, %struct.qnx6_inode_info** %6, align 8
  %25 = getelementptr inbounds %struct.qnx6_inode_info, %struct.qnx6_inode_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qnx6_root_node*, %struct.qnx6_root_node** %4, align 8
  %28 = getelementptr inbounds %struct.qnx6_root_node, %struct.qnx6_root_node* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %26, i32 %29, i32 4)
  %31 = load %struct.qnx6_root_node*, %struct.qnx6_root_node** %4, align 8
  %32 = getelementptr inbounds %struct.qnx6_root_node, %struct.qnx6_root_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qnx6_inode_info*, %struct.qnx6_inode_info** %6, align 8
  %35 = getelementptr inbounds %struct.qnx6_inode_info, %struct.qnx6_inode_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @S_IFREG, align 4
  %37 = load i32, i32* @S_IRUSR, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32* @qnx6_aops, i32** %44, align 8
  br label %45

45:                                               ; preds = %12, %2
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %46
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.qnx6_inode_info* @QNX6_I(%struct.inode*) #1

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local i32 @fs64_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
