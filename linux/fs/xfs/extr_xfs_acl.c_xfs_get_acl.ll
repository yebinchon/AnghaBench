; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_acl.c_xfs_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_acl.c_xfs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_acl = type { i32 }

@SGI_ACL_FILE = common dso_local global i8* null, align 8
@SGI_ACL_DEFAULT = common dso_local global i8* null, align 8
@ATTR_ALLOC = common dso_local global i32 0, align 4
@ATTR_ROOT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @xfs_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.xfs_acl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.xfs_inode* @XFS_I(%struct.inode* %11)
  store %struct.xfs_inode* %12, %struct.xfs_inode** %5, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %6, align 8
  store %struct.xfs_acl* null, %struct.xfs_acl** %7, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = call i32 @trace_xfs_get_acl(%struct.xfs_inode* %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %20 [
    i32 129, label %16
    i32 128, label %18
  ]

16:                                               ; preds = %2
  %17 = load i8*, i8** @SGI_ACL_FILE, align 8
  store i8* %17, i8** %8, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load i8*, i8** @SGI_ACL_DEFAULT, align 8
  store i8* %19, i8** %8, align 8
  br label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %18, %16
  %23 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @XFS_ACL_MAX_SIZE(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast %struct.xfs_acl** %7 to i8**
  %30 = load i32, i32* @ATTR_ALLOC, align 4
  %31 = load i32, i32* @ATTR_ROOT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @xfs_attr_get(%struct.xfs_inode* %27, i8* %28, i8** %29, i32* %10, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ENOATTR, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.posix_acl* @ERR_PTR(i32 %42)
  store %struct.posix_acl* %43, %struct.posix_acl** %6, align 8
  br label %44

44:                                               ; preds = %41, %36
  br label %55

45:                                               ; preds = %22
  %46 = load %struct.xfs_acl*, %struct.xfs_acl** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %49 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @XFS_ACL_MAX_ENTRIES(i32 %50)
  %52 = call %struct.posix_acl* @xfs_acl_from_disk(%struct.xfs_acl* %46, i32 %47, i32 %51)
  store %struct.posix_acl* %52, %struct.posix_acl** %6, align 8
  %53 = load %struct.xfs_acl*, %struct.xfs_acl** %7, align 8
  %54 = call i32 @kmem_free(%struct.xfs_acl* %53)
  br label %55

55:                                               ; preds = %45, %44
  %56 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  ret %struct.posix_acl* %56
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @trace_xfs_get_acl(%struct.xfs_inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @XFS_ACL_MAX_SIZE(i32) #1

declare dso_local i32 @xfs_attr_get(%struct.xfs_inode*, i8*, i8**, i32*, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local %struct.posix_acl* @xfs_acl_from_disk(%struct.xfs_acl*, i32, i32) #1

declare dso_local i32 @XFS_ACL_MAX_ENTRIES(i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
