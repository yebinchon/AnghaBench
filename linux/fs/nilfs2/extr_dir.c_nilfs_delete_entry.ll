; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dir.c_nilfs_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dir.c_nilfs_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_dir_entry = type { i64, i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"zero-length directory entry\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_delete_entry(%struct.nilfs_dir_entry* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.nilfs_dir_entry*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nilfs_dir_entry*, align 8
  %11 = alloca %struct.nilfs_dir_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.nilfs_dir_entry* %0, %struct.nilfs_dir_entry** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.address_space*, %struct.address_space** %14, align 8
  store %struct.address_space* %15, %struct.address_space** %5, align 8
  %16 = load %struct.address_space*, %struct.address_space** %5, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i8* @page_address(%struct.page* %19)
  store i8* %20, i8** %7, align 8
  store %struct.nilfs_dir_entry* null, %struct.nilfs_dir_entry** %11, align 8
  %21 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %3, align 8
  %22 = bitcast %struct.nilfs_dir_entry* %21 to i8*
  %23 = load i8*, i8** %7, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @nilfs_chunk_size(%struct.inode* %27)
  %29 = sub nsw i32 %28, 1
  %30 = xor i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %26, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %3, align 8
  %35 = bitcast %struct.nilfs_dir_entry* %34 to i8*
  %36 = load i8*, i8** %7, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %3, align 8
  %41 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @nilfs_rec_len_from_disk(i64 %42)
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %39, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = bitcast i8* %50 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %51, %struct.nilfs_dir_entry** %10, align 8
  br label %52

52:                                               ; preds = %70, %2
  %53 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  %54 = bitcast %struct.nilfs_dir_entry* %53 to i8*
  %55 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %3, align 8
  %56 = bitcast %struct.nilfs_dir_entry* %55 to i8*
  %57 = icmp ult i8* %54, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  %60 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nilfs_error(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %118

70:                                               ; preds = %58
  %71 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  store %struct.nilfs_dir_entry* %71, %struct.nilfs_dir_entry** %11, align 8
  %72 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %10, align 8
  %73 = call %struct.nilfs_dir_entry* @nilfs_next_entry(%struct.nilfs_dir_entry* %72)
  store %struct.nilfs_dir_entry* %73, %struct.nilfs_dir_entry** %10, align 8
  br label %52

74:                                               ; preds = %52
  %75 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %76 = icmp ne %struct.nilfs_dir_entry* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %79 = bitcast %struct.nilfs_dir_entry* %78 to i8*
  %80 = load %struct.page*, %struct.page** %4, align 8
  %81 = call i8* @page_address(%struct.page* %80)
  %82 = ptrtoint i8* %79 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %77, %74
  %87 = load %struct.page*, %struct.page** %4, align 8
  %88 = call i32 @lock_page(%struct.page* %87)
  %89 = load %struct.page*, %struct.page** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @nilfs_prepare_chunk(%struct.page* %89, i32 %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %96 = icmp ne %struct.nilfs_dir_entry* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub i32 %98, %99
  %101 = call i64 @nilfs_rec_len_to_disk(i32 %100)
  %102 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %103 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %86
  %105 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %3, align 8
  %106 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %105, i32 0, i32 1
  store i32 0, i32* %106, align 8
  %107 = load %struct.page*, %struct.page** %4, align 8
  %108 = load %struct.address_space*, %struct.address_space** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @nilfs_commit_chunk(%struct.page* %107, %struct.address_space* %108, i32 %109, i32 %110)
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = call i32 @current_time(%struct.inode* %112)
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %104, %63
  %119 = load %struct.page*, %struct.page** %4, align 8
  %120 = call i32 @nilfs_put_page(%struct.page* %119)
  %121 = load i32, i32* %12, align 4
  ret i32 %121
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @nilfs_chunk_size(%struct.inode*) #1

declare dso_local i32 @nilfs_rec_len_from_disk(i64) #1

declare dso_local i32 @nilfs_error(i32, i8*) #1

declare dso_local %struct.nilfs_dir_entry* @nilfs_next_entry(%struct.nilfs_dir_entry*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @nilfs_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @nilfs_rec_len_to_disk(i32) #1

declare dso_local i32 @nilfs_commit_chunk(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @nilfs_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
