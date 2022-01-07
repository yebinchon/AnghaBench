; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@ufs_dir_inode_operations = common dso_local global i32 0, align 4
@ufs_dir_operations = common dso_local global i32 0, align 4
@ufs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ufs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i32 @inode_inc_link_count(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* @S_IFDIR, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.inode* @ufs_new_inode(%struct.inode* %12, i32 %15)
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.inode* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i64 @IS_ERR(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %58

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  store i32* @ufs_dir_inode_operations, i32** %25, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  store i32* @ufs_dir_operations, i32** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* @ufs_aops, i32** %31, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call i32 @inode_inc_link_count(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @ufs_make_empty(%struct.inode* %34, %struct.inode* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %51

40:                                               ; preds = %23
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @ufs_add_link(%struct.dentry* %41, %struct.inode* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = call i32 @d_instantiate_new(%struct.dentry* %48, %struct.inode* %49)
  store i32 0, i32* %4, align 4
  br label %62

51:                                               ; preds = %46, %39
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @inode_dec_link_count(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @inode_dec_link_count(%struct.inode* %54)
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call i32 @discard_new_inode(%struct.inode* %56)
  br label %58

58:                                               ; preds = %51, %22
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call i32 @inode_dec_link_count(%struct.inode* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %47
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @ufs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ufs_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ufs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
