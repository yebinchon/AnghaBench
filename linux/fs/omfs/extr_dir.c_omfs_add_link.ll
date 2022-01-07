; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.inode = type { i32, i32, i32 }
%struct.omfs_inode = type { i8*, i8*, i64 }
%struct.buffer_head = type { i32* }

@OMFS_NAMELEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*)* @omfs_add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_add_link(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.omfs_inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.inode* @d_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.buffer_head* @omfs_get_bucket(%struct.inode* %26, i8* %27, i32 %28, i32* %13)
  store %struct.buffer_head* %29, %struct.buffer_head** %10, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %31 = icmp ne %struct.buffer_head* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %107

33:                                               ; preds = %2
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = bitcast i32* %39 to i8**
  store i8** %40, i8*** %12, align 8
  %41 = load i8**, i8*** %12, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @be64_to_cpu(i8* %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_be64(i32 %46)
  %48 = load i8**, i8*** %12, align 8
  store i8* %47, i8** %48, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %50 = call i32 @mark_buffer_dirty(%struct.buffer_head* %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %52 = call i32 @brelse(%struct.buffer_head* %51)
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.buffer_head* @omfs_bread(i32 %55, i32 %58)
  store %struct.buffer_head* %59, %struct.buffer_head** %10, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %61 = icmp ne %struct.buffer_head* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %33
  br label %107

63:                                               ; preds = %33
  %64 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to %struct.omfs_inode*
  store %struct.omfs_inode* %67, %struct.omfs_inode** %9, align 8
  %68 = load %struct.omfs_inode*, %struct.omfs_inode** %9, align 8
  %69 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @memcpy(i64 %70, i8* %71, i32 %72)
  %74 = load %struct.omfs_inode*, %struct.omfs_inode** %9, align 8
  %75 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i64, i64* @OMFS_NAMELEN, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %80, %82
  %84 = call i32 @memset(i64 %79, i32 0, i64 %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @cpu_to_be64(i32 %85)
  %87 = load %struct.omfs_inode*, %struct.omfs_inode** %9, align 8
  %88 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_be64(i32 %91)
  %93 = load %struct.omfs_inode*, %struct.omfs_inode** %9, align 8
  %94 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %96 = call i32 @mark_buffer_dirty(%struct.buffer_head* %95)
  %97 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %98 = call i32 @brelse(%struct.buffer_head* %97)
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = call i32 @current_time(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = call i32 @mark_inode_dirty(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = call i32 @mark_inode_dirty(%struct.inode* %105)
  store i32 0, i32* %3, align 4
  br label %110

107:                                              ; preds = %62, %32
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %63
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.buffer_head* @omfs_get_bucket(%struct.inode*, i8*, i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @omfs_bread(i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
