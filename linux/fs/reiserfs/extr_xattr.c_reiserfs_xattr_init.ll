; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_reiserfs_xattr_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_reiserfs_xattr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.dentry*, %struct.dentry* }

@SB_RDONLY = common dso_local global i32 0, align 4
@reiserfs_xattr_handlers = common dso_local global i32 0, align 4
@XAROOT_NAME = common dso_local global i32 0, align 4
@REISERFS_XATTRS_USER = common dso_local global i32 0, align 4
@REISERFS_POSIXACL = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_xattr_init(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @xattr_mount_check(%struct.super_block* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %81

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call i64 @d_really_is_negative(%struct.dentry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SB_RDONLY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 2
  %29 = load %struct.dentry*, %struct.dentry** %28, align 8
  %30 = call i32 @d_inode(%struct.dentry* %29)
  %31 = call i32 @inode_lock(i32 %30)
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load %struct.dentry*, %struct.dentry** %34, align 8
  %36 = call i32 @create_privroot(%struct.dentry* %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 2
  %39 = load %struct.dentry*, %struct.dentry** %38, align 8
  %40 = call i32 @d_inode(%struct.dentry* %39)
  %41 = call i32 @inode_unlock(i32 %40)
  br label %42

42:                                               ; preds = %26, %21, %17
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = call i64 @d_really_is_positive(%struct.dentry* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load i32, i32* @reiserfs_xattr_handlers, align 4
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dentry*, %struct.dentry** %6, align 8
  %51 = call i32 @d_inode(%struct.dentry* %50)
  %52 = call i32 @inode_lock(i32 %51)
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.dentry*, %struct.dentry** %55, align 8
  %57 = icmp ne %struct.dentry* %56, null
  br i1 %57, label %76, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* @XAROOT_NAME, align 4
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = load i32, i32* @XAROOT_NAME, align 4
  %62 = call i32 @strlen(i32 %61)
  %63 = call %struct.dentry* @lookup_one_len(i32 %59, %struct.dentry* %60, i32 %62)
  store %struct.dentry* %63, %struct.dentry** %7, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = call i32 @IS_ERR(%struct.dentry* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load %struct.dentry*, %struct.dentry** %7, align 8
  %69 = load %struct.super_block*, %struct.super_block** %3, align 8
  %70 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store %struct.dentry* %68, %struct.dentry** %71, align 8
  br label %75

72:                                               ; preds = %58
  %73 = load %struct.dentry*, %struct.dentry** %7, align 8
  %74 = call i32 @PTR_ERR(%struct.dentry* %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %46
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = call i32 @d_inode(%struct.dentry* %77)
  %79 = call i32 @inode_unlock(i32 %78)
  br label %80

80:                                               ; preds = %76, %42
  br label %81

81:                                               ; preds = %80, %16
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32, i32* @REISERFS_XATTRS_USER, align 4
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @clear_bit(i32 %85, i32* %88)
  %90 = load i32, i32* @REISERFS_POSIXACL, align 4
  %91 = load %struct.super_block*, %struct.super_block** %3, align 8
  %92 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @clear_bit(i32 %90, i32* %93)
  br label %95

95:                                               ; preds = %84, %81
  %96 = load %struct.super_block*, %struct.super_block** %3, align 8
  %97 = call i64 @reiserfs_posixacl(%struct.super_block* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i32, i32* @SB_POSIXACL, align 4
  %101 = load %struct.super_block*, %struct.super_block** %3, align 8
  %102 = getelementptr inbounds %struct.super_block, %struct.super_block* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %112

105:                                              ; preds = %95
  %106 = load i32, i32* @SB_POSIXACL, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.super_block*, %struct.super_block** %3, align 8
  %109 = getelementptr inbounds %struct.super_block, %struct.super_block* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %105, %99
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @xattr_mount_check(%struct.super_block*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @create_privroot(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @reiserfs_posixacl(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
