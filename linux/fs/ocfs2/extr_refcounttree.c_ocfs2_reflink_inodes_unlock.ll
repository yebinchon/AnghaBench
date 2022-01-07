; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink_inodes_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink_inodes_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_reflink_inodes_unlock(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call i32 @ocfs2_inode_unlock(%struct.inode* %9, i32 1)
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call i32 @ocfs2_rw_unlock(%struct.inode* %11, i32 1)
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = call i32 @brelse(%struct.buffer_head* %13)
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = icmp ne %struct.inode* %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call i32 @ocfs2_inode_unlock(%struct.inode* %19, i32 1)
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call i32 @ocfs2_rw_unlock(%struct.inode* %21, i32 1)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = call i32 @brelse(%struct.buffer_head* %23)
  br label %25

25:                                               ; preds = %18, %4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i32 @unlock_two_nondirectories(%struct.inode* %26, %struct.inode* %27)
  ret void
}

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_two_nondirectories(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
