; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_lock_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_lock_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_inode_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ocfs2_lock_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lock_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %11)
  store %struct.ocfs2_inode_info* %12, %struct.ocfs2_inode_info** %10, align 8
  %13 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %14 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %13, i32 0, i32 0
  %15 = call i32 @down_read(i32* %14)
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ocfs2_get_block(%struct.inode* %16, i32 %17, %struct.buffer_head* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %21, i32 0, i32 0
  %23 = call i32 @up_read(i32* %22)
  %24 = load i32, i32* %9, align 4
  ret i32 %24
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ocfs2_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
