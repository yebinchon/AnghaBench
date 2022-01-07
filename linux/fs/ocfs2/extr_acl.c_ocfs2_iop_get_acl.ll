; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_iop_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_iop_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_lock_holder = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @ocfs2_iop_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_lock_holder, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ocfs2_super* @OCFS2_SB(i32 %13)
  store %struct.ocfs2_super* %14, %struct.ocfs2_super** %6, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @ocfs2_inode_lock_tracker(%struct.inode* %23, %struct.buffer_head** %7, i32 0, %struct.ocfs2_lock_holder* %10)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.posix_acl* @ERR_PTR(i32 %28)
  store %struct.posix_acl* %29, %struct.posix_acl** %3, align 8
  br label %49

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @down_read(i32* %33)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = call %struct.posix_acl* @ocfs2_get_acl_nolock(%struct.inode* %35, i32 %36, %struct.buffer_head* %37)
  store %struct.posix_acl* %38, %struct.posix_acl** %8, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @up_read(i32* %41)
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ocfs2_inode_unlock_tracker(%struct.inode* %43, i32 0, %struct.ocfs2_lock_holder* %10, i32 %44)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = call i32 @brelse(%struct.buffer_head* %46)
  %48 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %48, %struct.posix_acl** %3, align 8
  br label %49

49:                                               ; preds = %30, %27, %21
  %50 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %50
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_inode_lock_tracker(%struct.inode*, %struct.buffer_head**, i32, %struct.ocfs2_lock_holder*) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.posix_acl* @ocfs2_get_acl_nolock(%struct.inode*, i32, %struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock_tracker(%struct.inode*, i32, %struct.ocfs2_lock_holder*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
