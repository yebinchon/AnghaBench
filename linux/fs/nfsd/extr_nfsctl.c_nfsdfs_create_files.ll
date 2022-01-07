; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsdfs_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_nfsdfs_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.tree_descr = type { i32, i32, i64* }
%struct.inode = type { i32, i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.tree_descr*)* @nfsdfs_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsdfs_create_files(%struct.dentry* %0, %struct.tree_descr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.tree_descr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.tree_descr* %1, %struct.tree_descr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i32 @inode_lock(%struct.inode* %12)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %75, %2
  %15 = load %struct.tree_descr*, %struct.tree_descr** %5, align 8
  %16 = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.tree_descr*, %struct.tree_descr** %5, align 8
  %21 = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %19, %14
  %27 = phi i1 [ false, %14 ], [ %25, %19 ]
  br i1 %27, label %28, label %80

28:                                               ; preds = %26
  %29 = load %struct.tree_descr*, %struct.tree_descr** %5, align 8
  %30 = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %75

34:                                               ; preds = %28
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = load %struct.tree_descr*, %struct.tree_descr** %5, align 8
  %37 = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = call %struct.dentry* @d_alloc_name(%struct.dentry* %35, i64* %38)
  store %struct.dentry* %39, %struct.dentry** %8, align 8
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = icmp ne %struct.dentry* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %83

43:                                               ; preds = %34
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = call %struct.inode* @d_inode(%struct.dentry* %44)
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @S_IFREG, align 4
  %49 = load %struct.tree_descr*, %struct.tree_descr** %5, align 8
  %50 = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %48, %51
  %53 = call %struct.inode* @nfsd_get_inode(i32 %47, i32 %52)
  store %struct.inode* %53, %struct.inode** %7, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = icmp ne %struct.inode* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = call i32 @dput(%struct.dentry* %57)
  br label %83

59:                                               ; preds = %43
  %60 = load %struct.tree_descr*, %struct.tree_descr** %5, align 8
  %61 = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call i32 @__get_nfsdfs_client(%struct.inode* %65)
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.dentry*, %struct.dentry** %8, align 8
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = call i32 @d_add(%struct.dentry* %69, %struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = call i32 @fsnotify_create(%struct.inode* %72, %struct.dentry* %73)
  br label %75

75:                                               ; preds = %59, %33
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load %struct.tree_descr*, %struct.tree_descr** %5, align 8
  %79 = getelementptr inbounds %struct.tree_descr, %struct.tree_descr* %78, i32 1
  store %struct.tree_descr* %79, %struct.tree_descr** %5, align 8
  br label %14

80:                                               ; preds = %26
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = call i32 @inode_unlock(%struct.inode* %81)
  store i32 0, i32* %3, align 4
  br label %90

83:                                               ; preds = %56, %42
  %84 = load %struct.dentry*, %struct.dentry** %4, align 8
  %85 = call i32 @nfsdfs_remove_files(%struct.dentry* %84)
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = call i32 @inode_unlock(%struct.inode* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %80
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i64*) #1

declare dso_local %struct.inode* @nfsd_get_inode(i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @__get_nfsdfs_client(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @nfsdfs_remove_files(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
