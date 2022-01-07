; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_get_read_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_get_read_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.dnode_of_data = type { i64 }
%struct.extent_info = type { i64, i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE_READ = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@LOOKUP_NODE = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NEW_ADDR = common dso_local global i64 0, align 8
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @f2fs_get_read_data_page(%struct.inode* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.dnode_of_data, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.extent_info, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %10, align 8
  %18 = bitcast %struct.extent_info* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load %struct.address_space*, %struct.address_space** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.page* @f2fs_grab_cache_page(%struct.address_space* %19, i64 %20, i32 %21)
  store %struct.page* %22, %struct.page** %12, align 8
  %23 = load %struct.page*, %struct.page** %12, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.page* @ERR_PTR(i32 %27)
  store %struct.page* %28, %struct.page** %5, align 8
  br label %135

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @f2fs_lookup_extent_cache(%struct.inode* %30, i64 %31, %struct.extent_info* %13)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %13, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %36, %37
  %39 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %13, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %38, %40
  %42 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call i32 @F2FS_I_SB(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @DATA_GENERIC_ENHANCE_READ, align 4
  %48 = call i32 @f2fs_is_valid_blkaddr(i32 %44, i64 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @EFSCORRUPTED, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %130

53:                                               ; preds = %34
  br label %92

54:                                               ; preds = %29
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call i32 @set_new_dnode(%struct.dnode_of_data* %11, %struct.inode* %55, i32* null, i32* null, i32 0)
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* @LOOKUP_NODE, align 4
  %59 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %11, i64 %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %130

63:                                               ; preds = %54
  %64 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %11)
  %65 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NULL_ADDR, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %130

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NEW_ADDR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = call i32 @F2FS_I_SB(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %86 = call i32 @f2fs_is_valid_blkaddr(i32 %82, i64 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* @EFSCORRUPTED, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %130

91:                                               ; preds = %80, %75
  br label %92

92:                                               ; preds = %91, %53
  %93 = load %struct.page*, %struct.page** %12, align 8
  %94 = call i64 @PageUptodate(%struct.page* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.page*, %struct.page** %12, align 8
  %98 = call i32 @unlock_page(%struct.page* %97)
  %99 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %99, %struct.page** %5, align 8
  br label %135

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @NEW_ADDR, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load %struct.page*, %struct.page** %12, align 8
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = call i32 @zero_user_segment(%struct.page* %106, i32 0, i32 %107)
  %109 = load %struct.page*, %struct.page** %12, align 8
  %110 = call i64 @PageUptodate(%struct.page* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = load %struct.page*, %struct.page** %12, align 8
  %114 = call i32 @SetPageUptodate(%struct.page* %113)
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.page*, %struct.page** %12, align 8
  %117 = call i32 @unlock_page(%struct.page* %116)
  %118 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %118, %struct.page** %5, align 8
  br label %135

119:                                              ; preds = %100
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = load %struct.page*, %struct.page** %12, align 8
  %122 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %11, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @f2fs_submit_page_read(%struct.inode* %120, %struct.page* %121, i64 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %130

128:                                              ; preds = %119
  %129 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %129, %struct.page** %5, align 8
  br label %135

130:                                              ; preds = %127, %88, %72, %62, %50
  %131 = load %struct.page*, %struct.page** %12, align 8
  %132 = call i32 @f2fs_put_page(%struct.page* %131, i32 1)
  %133 = load i32, i32* %14, align 4
  %134 = call %struct.page* @ERR_PTR(i32 %133)
  store %struct.page* %134, %struct.page** %5, align 8
  br label %135

135:                                              ; preds = %130, %128, %115, %96, %25
  %136 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.page* @f2fs_grab_cache_page(%struct.address_space*, i64, i32) #2

declare dso_local %struct.page* @ERR_PTR(i32) #2

declare dso_local i64 @f2fs_lookup_extent_cache(%struct.inode*, i64, %struct.extent_info*) #2

declare dso_local i32 @f2fs_is_valid_blkaddr(i32, i64, i32) #2

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #2

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #2

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #2

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @PageUptodate(%struct.page*) #2

declare dso_local i32 @unlock_page(%struct.page*) #2

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #2

declare dso_local i32 @SetPageUptodate(%struct.page*) #2

declare dso_local i32 @f2fs_submit_page_read(%struct.inode*, %struct.page*, i64) #2

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
