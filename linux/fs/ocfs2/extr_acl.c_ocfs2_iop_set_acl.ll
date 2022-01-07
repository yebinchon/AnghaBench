; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_iop_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_iop_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_lock_holder = type { i32 }

@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_iop_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_lock_holder, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32 @ocfs2_inode_lock_tracker(%struct.inode* %13, %struct.buffer_head** %8, i32 1, %struct.ocfs2_lock_holder* %11)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %25 = icmp ne %struct.posix_acl* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @posix_acl_update_mode(%struct.inode* %27, i32* %12, %struct.posix_acl** %6)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %47

32:                                               ; preds = %26
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @ocfs2_acl_set_mode(%struct.inode* %33, %struct.buffer_head* %34, i32* null, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %47

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %23, %19
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %46 = call i32 @ocfs2_set_acl(i32* null, %struct.inode* %42, %struct.buffer_head* %43, i32 %44, %struct.posix_acl* %45, i32* null, i32* null)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %41, %39, %31
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ocfs2_inode_unlock_tracker(%struct.inode* %48, i32 1, %struct.ocfs2_lock_holder* %11, i32 %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = call i32 @brelse(%struct.buffer_head* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @ocfs2_inode_lock_tracker(%struct.inode*, %struct.buffer_head**, i32, %struct.ocfs2_lock_holder*) #1

declare dso_local i32 @posix_acl_update_mode(%struct.inode*, i32*, %struct.posix_acl**) #1

declare dso_local i32 @ocfs2_acl_set_mode(%struct.inode*, %struct.buffer_head*, i32*, i32) #1

declare dso_local i32 @ocfs2_set_acl(i32*, %struct.inode*, %struct.buffer_head*, i32, %struct.posix_acl*, i32*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock_tracker(%struct.inode*, i32, %struct.ocfs2_lock_holder*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
