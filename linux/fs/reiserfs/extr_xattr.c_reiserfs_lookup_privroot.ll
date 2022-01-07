; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_reiserfs_lookup_privroot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_reiserfs_lookup_privroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.dentry* }

@PRIVROOT_NAME = common dso_local global i32 0, align 4
@xattr_lookup_poison_ops = common dso_local global i32 0, align 4
@S_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_lookup_privroot(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  %8 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %7)
  %9 = call i32 @inode_lock(%struct.TYPE_5__* %8)
  %10 = load i32, i32* @PRIVROOT_NAME, align 4
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  %14 = load i32, i32* @PRIVROOT_NAME, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = call %struct.dentry* @lookup_one_len(i32 %10, %struct.dentry* %13, i32 %15)
  store %struct.dentry* %16, %struct.dentry** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call i32 @IS_ERR(%struct.dentry* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %1
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = call %struct.TYPE_6__* @REISERFS_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.dentry* %21, %struct.dentry** %24, align 8
  %25 = load %struct.dentry*, %struct.dentry** %3, align 8
  %26 = call i32 @d_set_d_op(%struct.dentry* %25, i32* @xattr_lookup_poison_ops)
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i64 @d_really_is_positive(%struct.dentry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load i32, i32* @S_PRIVATE, align 4
  %32 = load %struct.dentry*, %struct.dentry** %3, align 8
  %33 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %20
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  %40 = call i32 @PTR_ERR(%struct.dentry* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load %struct.super_block*, %struct.super_block** %2, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load %struct.dentry*, %struct.dentry** %43, align 8
  %45 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %44)
  %46 = call i32 @inode_unlock(%struct.TYPE_5__* %45)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @inode_lock(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.TYPE_6__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @d_set_d_op(%struct.dentry*, i32*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
