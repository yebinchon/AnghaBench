; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@nilfs_dir_inode_operations = common dso_local global i32 0, align 4
@nilfs_dir_operations = common dso_local global i32 0, align 4
@nilfs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @nilfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nilfs_transaction_info, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @nilfs_transaction_begin(i32 %13, %struct.nilfs_transaction_info* %9, i32 1)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @inc_nlink(%struct.inode* %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load i32, i32* @S_IFDIR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.inode* @nilfs_new_inode(%struct.inode* %22, i32 %25)
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.inode* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i64 @IS_ERR(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %89

33:                                               ; preds = %19
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 3
  store i32* @nilfs_dir_inode_operations, i32** %35, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 2
  store i32* @nilfs_dir_operations, i32** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* @nilfs_aops, i32** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @inc_nlink(%struct.inode* %42)
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @nilfs_make_empty(%struct.inode* %44, %struct.inode* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %78

50:                                               ; preds = %33
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @nilfs_add_link(%struct.dentry* %51, %struct.inode* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %78

57:                                               ; preds = %50
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %58)
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @d_instantiate_new(%struct.dentry* %60, %struct.inode* %61)
  br label %63

63:                                               ; preds = %89, %57
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @nilfs_transaction_commit(i32 %69)
  store i32 %70, i32* %10, align 4
  br label %76

71:                                               ; preds = %63
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @nilfs_transaction_abort(i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %94

78:                                               ; preds = %56, %49
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call i32 @drop_nlink(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = call i32 @drop_nlink(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call i32 @unlock_new_inode(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @iput(%struct.inode* %87)
  br label %89

89:                                               ; preds = %78, %32
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = call i32 @drop_nlink(%struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %92)
  br label %63

94:                                               ; preds = %76, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @nilfs_transaction_begin(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local %struct.inode* @nilfs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @nilfs_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @nilfs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

declare dso_local i32 @nilfs_transaction_abort(i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
