; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_inode.c_omfs_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_inode.c_omfs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.omfs_sb_info = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@omfs_aops = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@omfs_dir_inops = common dso_local global i32 0, align 4
@omfs_dir_operations = common dso_local global i32 0, align 4
@omfs_file_inops = common dso_local global i32 0, align 4
@omfs_file_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @omfs_new_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omfs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.omfs_sb_info* @OMFS_SB(i32 %13)
  store %struct.omfs_sb_info* %14, %struct.omfs_sb_info** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.inode* @new_inode(i32 %17)
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.inode* @ERR_PTR(i32 %23)
  store %struct.inode* %24, %struct.inode** %3, align 8
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %10, align 8
  %30 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %10, align 8
  %33 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @omfs_allocate_range(i32 %28, i32 %31, i32 %34, i32* %7, i32* %9)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %86

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @inode_init_owner(%struct.inode* %43, i32* null, i32 %44)
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* @omfs_aops, i32** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call i32 @current_time(%struct.inode* %50)
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 4
  store i32 %51, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 5
  store i32 %51, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @S_IFMT, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %80 [
    i32 129, label %61
    i32 128, label %73
  ]

61:                                               ; preds = %39
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  store i32* @omfs_dir_inops, i32** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  store i32* @omfs_dir_operations, i32** %65, align 8
  %66 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %10, align 8
  %67 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = call i32 @inc_nlink(%struct.inode* %71)
  br label %80

73:                                               ; preds = %39
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 2
  store i32* @omfs_file_inops, i32** %75, align 8
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  store i32* @omfs_file_operations, i32** %77, align 8
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %39, %73, %61
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = call i32 @insert_inode_hash(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @mark_inode_dirty(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %85, %struct.inode** %3, align 8
  br label %93

86:                                               ; preds = %38
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = call i32 @make_bad_inode(%struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = call i32 @iput(%struct.inode* %89)
  %91 = load i32, i32* %8, align 4
  %92 = call %struct.inode* @ERR_PTR(i32 %91)
  store %struct.inode* %92, %struct.inode** %3, align 8
  br label %93

93:                                               ; preds = %86, %80, %21
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %94
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(i32) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @omfs_allocate_range(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, i32*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
