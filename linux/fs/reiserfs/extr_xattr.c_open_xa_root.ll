; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_open_xa_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_open_xa_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.dentry* }

@ENODATA = common dso_local global i32 0, align 4
@I_MUTEX_XATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i32)* @open_xa_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @open_xa_root(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call i64 @d_really_is_negative(%struct.dentry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODATA, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %3, align 8
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = call i32 @d_inode(%struct.dentry* %21)
  %23 = load i32, i32* @I_MUTEX_XATTR, align 4
  %24 = call i32 @inode_lock_nested(i32 %22, i32 %23)
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.dentry* @dget(i32 %28)
  store %struct.dentry* %29, %struct.dentry** %7, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = icmp ne %struct.dentry* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.dentry* @ERR_PTR(i32 %34)
  store %struct.dentry* %35, %struct.dentry** %7, align 8
  br label %61

36:                                               ; preds = %20
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = call i64 @d_really_is_negative(%struct.dentry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load i32, i32* @ENODATA, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @xattr_may_create(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = call i32 @d_inode(%struct.dentry* %47)
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = call i32 @xattr_mkdir(i32 %48, %struct.dentry* %49, i32 448)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = call i32 @dput(%struct.dentry* %55)
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.dentry* @ERR_PTR(i32 %57)
  store %struct.dentry* %58, %struct.dentry** %7, align 8
  br label %59

59:                                               ; preds = %54, %51
  br label %60

60:                                               ; preds = %59, %36
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = call i32 @d_inode(%struct.dentry* %62)
  %64 = call i32 @inode_unlock(i32 %63)
  %65 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %65, %struct.dentry** %3, align 8
  br label %66

66:                                               ; preds = %61, %16
  %67 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %67
}

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i64 @xattr_may_create(i32) #1

declare dso_local i32 @xattr_mkdir(i32, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
