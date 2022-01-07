; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_lookup_lock_orphan_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_lookup_lock_orphan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@ORPHAN_DIR_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode**, %struct.buffer_head**)* @ocfs2_lookup_lock_orphan_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lookup_lock_orphan_dir(%struct.ocfs2_super* %0, %struct.inode** %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.inode**, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.inode** %1, %struct.inode*** %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %12 = load i32, i32* @ORPHAN_DIR_SYSTEM_INODE, align 4
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %11, i32 %12, i32 %15)
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i32 @inode_lock(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @ocfs2_inode_lock(%struct.inode* %28, %struct.buffer_head** %9, i32 1)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call i32 @inode_unlock(%struct.inode* %33)
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i32 @iput(%struct.inode* %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %25
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = load %struct.inode**, %struct.inode*** %6, align 8
  store %struct.inode* %41, %struct.inode** %42, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %44 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %43, %struct.buffer_head** %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %32, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
