; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64 }
%struct.nilfs_transaction_info = type { i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.nilfs_transaction_info, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load %struct.iattr*, %struct.iattr** %5, align 8
  %17 = call i32 @setattr_prepare(%struct.dentry* %15, %struct.iattr* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %81

22:                                               ; preds = %2
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = call i32 @nilfs_transaction_begin(%struct.super_block* %23, %struct.nilfs_transaction_info* %6, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %81

30:                                               ; preds = %22
  %31 = load %struct.iattr*, %struct.iattr** %5, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATTR_SIZE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.iattr*, %struct.iattr** %5, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call i64 @i_size_read(%struct.inode* %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @inode_dio_wait(%struct.inode* %45)
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = load %struct.iattr*, %struct.iattr** %5, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @truncate_setsize(%struct.inode* %47, i64 %50)
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call i32 @nilfs_truncate(%struct.inode* %52)
  br label %54

54:                                               ; preds = %44, %37, %30
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load %struct.iattr*, %struct.iattr** %5, align 8
  %57 = call i32 @setattr_copy(%struct.inode* %55, %struct.iattr* %56)
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call i32 @mark_inode_dirty(%struct.inode* %58)
  %60 = load %struct.iattr*, %struct.iattr** %5, align 8
  %61 = getelementptr inbounds %struct.iattr, %struct.iattr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ATTR_MODE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = call i32 @nilfs_acl_chmod(%struct.inode* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %77

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %54
  %75 = load %struct.super_block*, %struct.super_block** %8, align 8
  %76 = call i32 @nilfs_transaction_commit(%struct.super_block* %75)
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %72
  %78 = load %struct.super_block*, %struct.super_block** %8, align 8
  %79 = call i32 @nilfs_transaction_abort(%struct.super_block* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %74, %28, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @nilfs_transaction_begin(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @nilfs_truncate(%struct.inode*) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @nilfs_acl_chmod(%struct.inode*) #1

declare dso_local i32 @nilfs_transaction_commit(%struct.super_block*) #1

declare dso_local i32 @nilfs_transaction_abort(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
