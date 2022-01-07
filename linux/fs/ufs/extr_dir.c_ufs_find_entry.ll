; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_dir.c_ufs_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_dir.c_ufs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_dir_entry = type { i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.page = type { i32 }
%struct.ufs_inode_info = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"ENTER, dir_ino %lu, name %s, namlen %u\0A\00", align 1
@UFS_MAXNAMLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode* %0, %struct.qstr* %1, %struct.page** %2) #0 {
  %4 = alloca %struct.ufs_dir_entry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.ufs_inode_info*, align 8
  %17 = alloca %struct.ufs_dir_entry*, align 8
  %18 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %8, align 8
  %22 = load %struct.qstr*, %struct.qstr** %6, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load %struct.qstr*, %struct.qstr** %6, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @UFS_DIR_REC_LEN(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i64 @dir_pages(%struct.inode* %30)
  store i64 %31, i64* %14, align 8
  store %struct.page* null, %struct.page** %15, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %32)
  store %struct.ufs_inode_info* %33, %struct.ufs_inode_info** %16, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @UFSD(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %37, i32 %38)
  %40 = load i64, i64* %14, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @UFS_MAXNAMLEN, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %3
  br label %110

47:                                               ; preds = %42
  %48 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* null, %struct.page** %48, align 8
  %49 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %16, align 8
  %50 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i64 0, i64* %12, align 8
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %13, align 8
  br label %58

58:                                               ; preds = %105, %56
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call %struct.page* @ufs_get_page(%struct.inode* %59, i64 %60)
  store %struct.page* %61, %struct.page** %15, align 8
  %62 = load %struct.page*, %struct.page** %15, align 8
  %63 = call i32 @IS_ERR(%struct.page* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %58
  %66 = load %struct.page*, %struct.page** %15, align 8
  %67 = call i8* @page_address(%struct.page* %66)
  store i8* %67, i8** %18, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = bitcast i8* %68 to %struct.ufs_dir_entry*
  store %struct.ufs_dir_entry* %69, %struct.ufs_dir_entry** %17, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @ufs_last_byte(%struct.inode* %70, i64 %71)
  %73 = load i32, i32* %11, align 4
  %74 = sub i32 %72, %73
  %75 = load i8*, i8** %18, align 8
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %18, align 8
  br label %78

78:                                               ; preds = %91, %65
  %79 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %17, align 8
  %80 = bitcast %struct.ufs_dir_entry* %79 to i8*
  %81 = load i8*, i8** %18, align 8
  %82 = icmp ule i8* %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.super_block*, %struct.super_block** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %17, align 8
  %88 = call i64 @ufs_match(%struct.super_block* %84, i32 %85, i8* %86, %struct.ufs_dir_entry* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %111

91:                                               ; preds = %83
  %92 = load %struct.super_block*, %struct.super_block** %8, align 8
  %93 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %17, align 8
  %94 = call %struct.ufs_dir_entry* @ufs_next_entry(%struct.super_block* %92, %struct.ufs_dir_entry* %93)
  store %struct.ufs_dir_entry* %94, %struct.ufs_dir_entry** %17, align 8
  br label %78

95:                                               ; preds = %78
  %96 = load %struct.page*, %struct.page** %15, align 8
  %97 = call i32 @ufs_put_page(%struct.page* %96)
  br label %98

98:                                               ; preds = %95, %58
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp uge i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i64 0, i64* %13, align 8
  br label %104

104:                                              ; preds = %103, %98
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %58, label %109

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %46
  store %struct.ufs_dir_entry* null, %struct.ufs_dir_entry** %4, align 8
  br label %118

111:                                              ; preds = %90
  %112 = load %struct.page*, %struct.page** %15, align 8
  %113 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %112, %struct.page** %113, align 8
  %114 = load i64, i64* %13, align 8
  %115 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %16, align 8
  %116 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %17, align 8
  store %struct.ufs_dir_entry* %117, %struct.ufs_dir_entry** %4, align 8
  br label %118

118:                                              ; preds = %111, %110
  %119 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %4, align 8
  ret %struct.ufs_dir_entry* %119
}

declare dso_local i32 @UFS_DIR_REC_LEN(i32) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i32 @UFSD(i8*, i32, i8*, i32) #1

declare dso_local %struct.page* @ufs_get_page(%struct.inode*, i64) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @ufs_last_byte(%struct.inode*, i64) #1

declare dso_local i64 @ufs_match(%struct.super_block*, i32, i8*, %struct.ufs_dir_entry*) #1

declare dso_local %struct.ufs_dir_entry* @ufs_next_entry(%struct.super_block*, %struct.ufs_dir_entry*) #1

declare dso_local i32 @ufs_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
