; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_file_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_file_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hfs_find_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hfs_iget_data = type { i32*, i32* }
%struct.TYPE_8__ = type { %struct.inode*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"rsrc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @hfs_file_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hfs_file_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfs_find_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfs_iget_data, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i64 @HFS_IS_RSRC(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %3
  br label %100

24:                                               ; preds = %16
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.TYPE_8__* @HFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %8, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %100

32:                                               ; preds = %24
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.inode* @new_inode(i32 %35)
  store %struct.inode* %36, %struct.inode** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.dentry* @ERR_PTR(i32 %41)
  store %struct.dentry* %42, %struct.dentry** %4, align 8
  br label %104

43:                                               ; preds = %32
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_7__* @HFS_SB(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hfs_find_init(i32 %49, %struct.hfs_find_data* %10)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @iput(%struct.inode* %54)
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.dentry* @ERR_PTR(i32 %56)
  store %struct.dentry* %57, %struct.dentry** %4, align 8
  br label %104

58:                                               ; preds = %43
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.TYPE_8__* @HFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = call i32 @hfs_brec_read(%struct.hfs_find_data* %10, i32* %9, i32 4)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %12, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %12, i32 0, i32 1
  store i32* %9, i32** %71, align 8
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call i32 @hfs_read_inode(%struct.inode* %72, %struct.hfs_iget_data* %12)
  br label %74

74:                                               ; preds = %69, %58
  %75 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call i32 @iput(%struct.inode* %79)
  %81 = load i32, i32* %11, align 4
  %82 = call %struct.dentry* @ERR_PTR(i32 %81)
  store %struct.dentry* %82, %struct.dentry** %4, align 8
  br label %104

83:                                               ; preds = %74
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call %struct.TYPE_8__* @HFS_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store %struct.inode* %84, %struct.inode** %87, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = call %struct.TYPE_8__* @HFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store %struct.inode* %88, %struct.inode** %91, align 8
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = call i32 @igrab(%struct.inode* %92)
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = call i32 @inode_fake_hash(%struct.inode* %94)
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = call i32 @mark_inode_dirty(%struct.inode* %96)
  %98 = load %struct.dentry*, %struct.dentry** %6, align 8
  %99 = call i32 @dont_mount(%struct.dentry* %98)
  br label %100

100:                                              ; preds = %83, %31, %23
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = load %struct.dentry*, %struct.dentry** %6, align 8
  %103 = call %struct.dentry* @d_splice_alias(%struct.inode* %101, %struct.dentry* %102)
  store %struct.dentry* %103, %struct.dentry** %4, align 8
  br label %104

104:                                              ; preds = %100, %78, %53, %39
  %105 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %105
}

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @HFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_7__* @HFS_SB(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hfs_brec_read(%struct.hfs_find_data*, i32*, i32) #1

declare dso_local i32 @hfs_read_inode(%struct.inode*, %struct.hfs_iget_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @inode_fake_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
