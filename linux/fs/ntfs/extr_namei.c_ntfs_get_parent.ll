; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_namei.c_ntfs_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_namei.c_ntfs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Entering for inode 0x%lx.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AT_FILE_NAME = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Inode 0x%lx does not have a file name attribute.  Run chkdsk.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @ntfs_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ntfs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32* @NTFS_I(%struct.inode* %14)
  store i32* %15, i32** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @map_mft_record(i32* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @IS_ERR(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32*, i32** %6, align 8
  %27 = call %struct.dentry* @ERR_CAST(i32* %26)
  store %struct.dentry* %27, %struct.dentry** %2, align 8
  br label %133

28:                                               ; preds = %1
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.TYPE_11__* @ntfs_attr_get_search_ctx(i32* %29, i32* %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %7, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @unmap_mft_record(i32* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.dentry* @ERR_PTR(i32 %42)
  store %struct.dentry* %43, %struct.dentry** %2, align 8
  br label %133

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %117, %82, %44
  %46 = load i32, i32* @AT_FILE_NAME, align 4
  %47 = load i32, i32* @CASE_SENSITIVE, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = call i32 @ntfs_attr_lookup(i32 %46, i32* null, i32 0, i32 %47, i32 0, i32* null, i32 0, %struct.TYPE_11__* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_11__* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @unmap_mft_record(i32* %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntfs_error(i32 %65, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %53
  %71 = load i32, i32* %11, align 4
  %72 = call %struct.dentry* @ERR_PTR(i32 %71)
  store %struct.dentry* %72, %struct.dentry** %2, align 8
  br label %133

73:                                               ; preds = %45
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %45

83:                                               ; preds = %73
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = bitcast %struct.TYPE_13__* %84 to i32*
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %85, i64 %92
  %94 = bitcast i32* %93 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %9, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = bitcast %struct.TYPE_12__* %95 to i32*
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %96, i64 %103
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = bitcast %struct.TYPE_13__* %105 to i32*
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = icmp ugt i32* %104, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %83
  br label %45

118:                                              ; preds = %83
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @MREF_LE(i32 %121)
  store i64 %122, i64* %10, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_11__* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @unmap_mft_record(i32* %125)
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @ntfs_iget(i32 %129, i64 %130)
  %132 = call %struct.dentry* @d_obtain_alias(i32 %131)
  store %struct.dentry* %132, %struct.dentry** %2, align 8
  br label %133

133:                                              ; preds = %118, %70, %38, %25
  %134 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %134
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32* @NTFS_I(%struct.inode*) #1

declare dso_local i32 @ntfs_debug(i8*, i32) #1

declare dso_local i32* @map_mft_record(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local %struct.dentry* @ERR_CAST(i32*) #1

declare dso_local %struct.TYPE_11__* @ntfs_attr_get_search_ctx(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unmap_mft_record(i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @ntfs_attr_lookup(i32, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_11__*) #1

declare dso_local i32 @ntfs_error(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @MREF_LE(i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @ntfs_iget(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
