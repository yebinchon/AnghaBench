; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_acl.c_xfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_acl.c_xfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i64 }

@E2BIG = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %12 = icmp ne %struct.posix_acl* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %41

14:                                               ; preds = %3
  %15 = load i32, i32* @E2BIG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %18 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @XFS_M(i32 %22)
  %24 = call i64 @XFS_ACL_MAX_ENTRIES(i32 %23)
  %25 = icmp sgt i64 %19, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @posix_acl_update_mode(%struct.inode* %33, i32* %8, %struct.posix_acl** %6)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %59

39:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %28
  br label %41

41:                                               ; preds = %40, %13
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @__xfs_set_acl(%struct.inode* %42, %struct.posix_acl* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %59

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @xfs_set_mode(%struct.inode* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %48, %37, %26
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @XFS_ACL_MAX_ENTRIES(i32) #1

declare dso_local i32 @XFS_M(i32) #1

declare dso_local i32 @posix_acl_update_mode(%struct.inode*, i32*, %struct.posix_acl**) #1

declare dso_local i32 @__xfs_set_acl(%struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @xfs_set_mode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
