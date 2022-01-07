; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.inode = type { i32, i32* }
%struct.omfs_inode = type { i32 }
%struct.buffer_head = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @omfs_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_delete_entry(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omfs_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.inode* @d_inode(i32 %18)
  store %struct.inode* %19, %struct.inode** %3, align 8
  %20 = load %struct.dentry*, %struct.dentry** %2, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load %struct.dentry*, %struct.dentry** %2, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.inode* @omfs_get_bucket(%struct.inode* %30, i8* %31, i32 %32, i32* %14)
  %34 = bitcast %struct.inode* %33 to %struct.buffer_head*
  store %struct.buffer_head* %34, %struct.buffer_head** %8, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  br label %123

38:                                               ; preds = %1
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be64_to_cpu(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.inode* @omfs_scan_list(%struct.inode* %48, i32 %49, i8* %50, i32 %51, i32* %13)
  %53 = bitcast %struct.inode* %52 to %struct.buffer_head*
  store %struct.buffer_head* %53, %struct.buffer_head** %9, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %55 = bitcast %struct.buffer_head* %54 to %struct.inode*
  %56 = call i64 @IS_ERR(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  %59 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %60 = bitcast %struct.buffer_head* %59 to %struct.inode*
  %61 = call i32 @PTR_ERR(%struct.inode* %60)
  store i32 %61, i32* %15, align 4
  br label %119

62:                                               ; preds = %38
  %63 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to %struct.omfs_inode*
  store %struct.omfs_inode* %66, %struct.omfs_inode** %7, align 8
  %67 = load %struct.omfs_inode*, %struct.omfs_inode** %7, align 8
  %68 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %71 = bitcast %struct.buffer_head* %70 to %struct.inode*
  %72 = call i32 @brelse(%struct.inode* %71)
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %95

75:                                               ; preds = %62
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = bitcast %struct.buffer_head* %76 to %struct.inode*
  %78 = call i32 @brelse(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call %struct.inode* @omfs_bread(i32 %81, i32 %82)
  %84 = bitcast %struct.inode* %83 to %struct.buffer_head*
  store %struct.buffer_head* %84, %struct.buffer_head** %8, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %86 = icmp ne %struct.buffer_head* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %75
  br label %123

88:                                               ; preds = %75
  %89 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = bitcast i32* %91 to %struct.omfs_inode*
  store %struct.omfs_inode* %92, %struct.omfs_inode** %7, align 8
  %93 = load %struct.omfs_inode*, %struct.omfs_inode** %7, align 8
  %94 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %93, i32 0, i32 0
  store i32* %94, i32** %10, align 8
  br label %95

95:                                               ; preds = %88, %62
  %96 = load i32, i32* %11, align 4
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  %98 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %99 = bitcast %struct.buffer_head* %98 to %struct.inode*
  %100 = call i32 @mark_buffer_dirty(%struct.inode* %99)
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %118

103:                                              ; preds = %95
  %104 = load %struct.inode*, %struct.inode** %3, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call %struct.inode* @omfs_iget(i32 %106, i32 %107)
  store %struct.inode* %108, %struct.inode** %4, align 8
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = call i64 @IS_ERR(%struct.inode* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %103
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call i32 @mark_inode_dirty(%struct.inode* %113)
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = call i32 @iput(%struct.inode* %115)
  br label %117

117:                                              ; preds = %112, %103
  br label %118

118:                                              ; preds = %117, %95
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %118, %58
  %120 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %121 = bitcast %struct.buffer_head* %120 to %struct.inode*
  %122 = call i32 @brelse(%struct.inode* %121)
  br label %123

123:                                              ; preds = %119, %87, %37
  %124 = load i32, i32* %15, align 4
  ret i32 %124
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.inode* @omfs_get_bucket(%struct.inode*, i8*, i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local %struct.inode* @omfs_scan_list(%struct.inode*, i32, i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.inode*) #1

declare dso_local %struct.inode* @omfs_bread(i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.inode*) #1

declare dso_local %struct.inode* @omfs_iget(i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
