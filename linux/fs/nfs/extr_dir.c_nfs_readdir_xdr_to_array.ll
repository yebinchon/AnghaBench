; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_xdr_to_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_xdr_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.file* }
%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_entry = type { i32*, i32*, i32, i32, i64, i32, i64 }
%struct.nfs_cache_array = type { i32 }

@NFS_MAX_READDIR_PAGES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.page*, %struct.inode*)* @nfs_readdir_xdr_to_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_xdr_to_array(%struct.TYPE_5__* %0, %struct.page* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfs_entry, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.nfs_cache_array*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %15 = load i32, i32* @NFS_MAX_READDIR_PAGES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.page*, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %10, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = call i32 @ARRAY_SIZE(%struct.page** %18)
  store i32 %24, i32* %13, align 4
  %25 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = call i32* (...) @nfs_alloc_fhandle()
  %32 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 0
  store i32* %31, i32** %32, align 8
  %33 = call i32* (...) @nfs_alloc_fattr()
  %34 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @NFS_SERVER(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %3
  br label %111

46:                                               ; preds = %41
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i32 @NFS_SERVER(%struct.inode* %47)
  %49 = load i32, i32* @GFP_NOWAIT, align 4
  %50 = call i32 @nfs4_label_alloc(i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %12, align 4
  br label %111

60:                                               ; preds = %46
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call %struct.nfs_cache_array* @kmap(%struct.page* %61)
  store %struct.nfs_cache_array* %62, %struct.nfs_cache_array** %11, align 8
  %63 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %11, align 8
  %64 = call i32 @memset(%struct.nfs_cache_array* %63, i32 0, i32 4)
  %65 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %11, align 8
  %66 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @nfs_readdir_alloc_pages(%struct.page** %18, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %105

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %97, %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = load %struct.file*, %struct.file** %10, align 8
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = call i32 @nfs_readdir_xdr_filler(%struct.page** %18, %struct.TYPE_5__* %74, %struct.nfs_entry* %9, %struct.file* %75, %struct.inode* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %102

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %14, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = load %struct.page*, %struct.page** %5, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @nfs_readdir_page_filler(%struct.TYPE_5__* %83, %struct.nfs_entry* %9, %struct.page** %18, %struct.page* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @ENOSPC, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %94, %89
  br label %102

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %11, align 8
  %99 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %73, label %102

102:                                              ; preds = %97, %95, %80
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @nfs_readdir_free_pages(%struct.page** %18, i32 %103)
  br label %105

105:                                              ; preds = %102, %71
  %106 = load %struct.page*, %struct.page** %5, align 8
  %107 = call i32 @kunmap(%struct.page* %106)
  %108 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @nfs4_label_free(i32 %109)
  br label %111

111:                                              ; preds = %105, %56, %45
  %112 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @nfs_free_fattr(i32* %113)
  %115 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %9, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @nfs_free_fhandle(i32* %116)
  %118 = load i32, i32* %12, align 4
  %119 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %119)
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(%struct.page**) #2

declare dso_local i32* @nfs_alloc_fhandle(...) #2

declare dso_local i32* @nfs_alloc_fattr(...) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

declare dso_local i32 @nfs4_label_alloc(i32, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local %struct.nfs_cache_array* @kmap(%struct.page*) #2

declare dso_local i32 @memset(%struct.nfs_cache_array*, i32, i32) #2

declare dso_local i32 @nfs_readdir_alloc_pages(%struct.page**, i32) #2

declare dso_local i32 @nfs_readdir_xdr_filler(%struct.page**, %struct.TYPE_5__*, %struct.nfs_entry*, %struct.file*, %struct.inode*) #2

declare dso_local i32 @nfs_readdir_page_filler(%struct.TYPE_5__*, %struct.nfs_entry*, %struct.page**, %struct.page*, i32) #2

declare dso_local i32 @nfs_readdir_free_pages(%struct.page**, i32) #2

declare dso_local i32 @kunmap(%struct.page*) #2

declare dso_local i32 @nfs4_label_free(i32) #2

declare dso_local i32 @nfs_free_fattr(i32*) #2

declare dso_local i32 @nfs_free_fhandle(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
