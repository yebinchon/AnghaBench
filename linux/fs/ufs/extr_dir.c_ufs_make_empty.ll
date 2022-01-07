; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_dir.c_ufs_make_empty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_dir.c_ufs_make_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.address_space*, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.ufs_dir_entry = type { i32, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_make_empty(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ufs_dir_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 3
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %7, align 8
  %19 = load %struct.address_space*, %struct.address_space** %7, align 8
  %20 = call %struct.page* @grab_cache_page(%struct.address_space* %19, i32 0)
  store %struct.page* %20, %struct.page** %8, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.TYPE_4__* @UFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %124

32:                                               ; preds = %2
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ufs_prepare_chunk(%struct.page* %33, i32 0, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = call i32 @unlock_page(%struct.page* %39)
  br label %120

41:                                               ; preds = %32
  %42 = load %struct.page*, %struct.page** %8, align 8
  %43 = call i32 @kmap(%struct.page* %42)
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = call i64 @page_address(%struct.page* %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = call i32 @memset(i8* %47, i32 0, i32 %48)
  %50 = load i8*, i8** %11, align 8
  %51 = bitcast i8* %50 to %struct.ufs_dir_entry*
  store %struct.ufs_dir_entry* %51, %struct.ufs_dir_entry** %10, align 8
  %52 = load %struct.super_block*, %struct.super_block** %6, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_fs32(%struct.super_block* %52, i32 %55)
  %57 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %58 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.super_block*, %struct.super_block** %6, align 8
  %60 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ufs_set_de_type(%struct.super_block* %59, %struct.ufs_dir_entry* %60, i32 %63)
  %65 = load %struct.super_block*, %struct.super_block** %6, align 8
  %66 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %67 = call i32 @ufs_set_de_namlen(%struct.super_block* %65, %struct.ufs_dir_entry* %66, i32 1)
  %68 = load %struct.super_block*, %struct.super_block** %6, align 8
  %69 = call i64 @UFS_DIR_REC_LEN(i32 1)
  %70 = call i8* @cpu_to_fs16(%struct.super_block* %68, i64 %69)
  %71 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %72 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %74 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @strcpy(i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %78 = bitcast %struct.ufs_dir_entry* %77 to i8*
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %81 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @fs16_to_cpu(%struct.super_block* %79, i8* %82)
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %78, i64 %84
  %86 = bitcast i8* %85 to %struct.ufs_dir_entry*
  store %struct.ufs_dir_entry* %86, %struct.ufs_dir_entry** %10, align 8
  %87 = load %struct.super_block*, %struct.super_block** %6, align 8
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @cpu_to_fs32(%struct.super_block* %87, i32 %90)
  %92 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %93 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.super_block*, %struct.super_block** %6, align 8
  %95 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ufs_set_de_type(%struct.super_block* %94, %struct.ufs_dir_entry* %95, i32 %98)
  %100 = load %struct.super_block*, %struct.super_block** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = call i64 @UFS_DIR_REC_LEN(i32 1)
  %104 = sub nsw i64 %102, %103
  %105 = call i8* @cpu_to_fs16(%struct.super_block* %100, i64 %104)
  %106 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %107 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.super_block*, %struct.super_block** %6, align 8
  %109 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %110 = call i32 @ufs_set_de_namlen(%struct.super_block* %108, %struct.ufs_dir_entry* %109, i32 2)
  %111 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %112 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @strcpy(i32 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.page*, %struct.page** %8, align 8
  %116 = call i32 @kunmap(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @ufs_commit_chunk(%struct.page* %117, i32 0, i32 %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %41, %38
  %121 = load %struct.page*, %struct.page** %8, align 8
  %122 = call i32 @put_page(%struct.page* %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %29
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local %struct.TYPE_4__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @ufs_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_set_de_type(%struct.super_block*, %struct.ufs_dir_entry*, i32) #1

declare dso_local i32 @ufs_set_de_namlen(%struct.super_block*, %struct.ufs_dir_entry*, i32) #1

declare dso_local i8* @cpu_to_fs16(%struct.super_block*, i64) #1

declare dso_local i64 @UFS_DIR_REC_LEN(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @fs16_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ufs_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
