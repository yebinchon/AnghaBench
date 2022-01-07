; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@EXT4_EA_INODE_FL = common dso_local global i32 0, align 4
@ext4_file_inode_operations = common dso_local global i32 0, align 4
@ext4_file_operations = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (i32*, %struct.inode*, i32)* @ext4_xattr_inode_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ext4_xattr_inode_create(i32* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i32 @i_uid_read(%struct.inode* %12)
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds i32, i32* %11, i64 1
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i32 @i_gid_read(%struct.inode* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @S_IFREG, align 4
  %26 = or i32 %25, 384
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %32 = load i32, i32* @EXT4_EA_INODE_FL, align 4
  %33 = call %struct.inode* @ext4_new_inode(i32* %17, i32 %24, i32 %26, i32* null, i64 %30, i32* %31, i32 %32)
  store %struct.inode* %33, %struct.inode** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %83, label %37

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  store i32* @ext4_file_inode_operations, i32** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  store i32* @ext4_file_operations, i32** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @ext4_set_aops(%struct.inode* %42)
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = call i32 @ext4_xattr_inode_set_class(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @unlock_new_inode(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call i32 @ext4_xattr_inode_set_ref(%struct.inode* %48, i32 1)
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ext4_xattr_inode_set_hash(%struct.inode* %50, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @ext4_mark_inode_dirty(i32* %53, %struct.inode* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %37
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @ext4_inode_attach_jinode(%struct.inode* %59)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %37
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call i32 @iput(%struct.inode* %65)
  %67 = load i32, i32* %10, align 4
  %68 = call %struct.inode* @ERR_PTR(i32 %67)
  store %struct.inode* %68, %struct.inode** %4, align 8
  br label %85

69:                                               ; preds = %61
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call i32 @dquot_free_inode(%struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call i32 @dquot_drop(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i32 @inode_lock(%struct.inode* %74)
  %76 = load i32, i32* @S_NOQUOTA, align 4
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = call i32 @inode_unlock(%struct.inode* %81)
  br label %83

83:                                               ; preds = %69, %3
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %84, %struct.inode** %4, align 8
  br label %85

85:                                               ; preds = %83, %64
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %86
}

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local %struct.inode* @ext4_new_inode(i32*, i32, i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_set_class(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_set_ref(%struct.inode*, i32) #1

declare dso_local i32 @ext4_xattr_inode_set_hash(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_inode_attach_jinode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
