; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_ra_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_ra_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i64 }
%struct.page = type { i32 }
%struct.extent_info = type { i64, i64, i32, i32, i32 }
%struct.f2fs_io_info = type { i32, i32, %struct.page*, i64, i64, %struct.page*, i32, i32, i32, i32, i32, %struct.f2fs_sb_info* }

@REQ_OP_READ = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE_READ = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@LOOKUP_NODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@FGP_LOCK = common dso_local global i32 0, align 4
@FGP_CREAT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @ra_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_data_block(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.dnode_of_data, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.extent_info, align 8
  %11 = alloca %struct.f2fs_io_info, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %13)
  store %struct.f2fs_sb_info* %14, %struct.f2fs_sb_info** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %7, align 8
  %18 = bitcast %struct.extent_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 2
  store %struct.page* null, %struct.page** %21, align 8
  %22 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 5
  store %struct.page* null, %struct.page** %24, align 8
  %25 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 6
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 7
  %27 = load i32, i32* @REQ_OP_READ, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 8
  %29 = load i32, i32* @COLD, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 9
  %31 = load i32, i32* @DATA, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 10
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %32, align 8
  %36 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 11
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  store %struct.f2fs_sb_info* %37, %struct.f2fs_sb_info** %36, align 8
  %38 = load %struct.address_space*, %struct.address_space** %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call %struct.page* @f2fs_grab_cache_page(%struct.address_space* %38, i64 %39, i32 1)
  store %struct.page* %40, %struct.page** %9, align 8
  %41 = load %struct.page*, %struct.page** %9, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %156

46:                                               ; preds = %2
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @f2fs_lookup_extent_cache(%struct.inode* %47, i64 %48, %struct.extent_info* %10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %10, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add nsw i64 %53, %54
  %56 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %55, %57
  %59 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %61 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @DATA_GENERIC_ENHANCE_READ, align 4
  %64 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %60, i64 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i32, i32* @EFSCORRUPTED, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %152

73:                                               ; preds = %51
  br label %107

74:                                               ; preds = %46
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = call i32 @set_new_dnode(%struct.dnode_of_data* %8, %struct.inode* %75, i32* null, i32* null, i32 0)
  %77 = load i64, i64* %5, align 8
  %78 = load i32, i32* @LOOKUP_NODE, align 4
  %79 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %8, i64 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %152

83:                                               ; preds = %74
  %84 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %8)
  %85 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @__is_valid_data_blkaddr(i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %152

92:                                               ; preds = %83
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %94 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %97 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %93, i64 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, i32* @EFSCORRUPTED, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %12, align 4
  br label %152

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %73
  %108 = load %struct.page*, %struct.page** %9, align 8
  %109 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 5
  store %struct.page* %108, %struct.page** %109, align 8
  %110 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 3
  store i64 %111, i64* %112, align 8
  %113 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  %114 = load %struct.page*, %struct.page** %9, align 8
  %115 = load i32, i32* @DATA, align 4
  %116 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %114, i32 %115, i32 1, i32 1)
  %117 = load %struct.inode*, %struct.inode** %4, align 8
  %118 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @f2fs_wait_on_block_writeback(%struct.inode* %117, i64 %119)
  %121 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %122 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %121)
  %123 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @FGP_LOCK, align 4
  %126 = load i32, i32* @FGP_CREAT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @GFP_NOFS, align 4
  %129 = call %struct.page* @f2fs_pagecache_get_page(i32 %122, i64 %124, i32 %127, i32 %128)
  %130 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 2
  store %struct.page* %129, %struct.page** %130, align 8
  %131 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 2
  %132 = load %struct.page*, %struct.page** %131, align 8
  %133 = icmp ne %struct.page* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %107
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %12, align 4
  br label %152

137:                                              ; preds = %107
  %138 = call i32 @f2fs_submit_page_bio(%struct.f2fs_io_info* %11)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %148

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 2
  %144 = load %struct.page*, %struct.page** %143, align 8
  %145 = call i32 @f2fs_put_page(%struct.page* %144, i32 0)
  %146 = load %struct.page*, %struct.page** %9, align 8
  %147 = call i32 @f2fs_put_page(%struct.page* %146, i32 1)
  store i32 0, i32* %3, align 4
  br label %156

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 2
  %150 = load %struct.page*, %struct.page** %149, align 8
  %151 = call i32 @f2fs_put_page(%struct.page* %150, i32 1)
  br label %152

152:                                              ; preds = %148, %134, %103, %89, %82, %70
  %153 = load %struct.page*, %struct.page** %9, align 8
  %154 = call i32 @f2fs_put_page(%struct.page* %153, i32 1)
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %142, %43
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.page* @f2fs_grab_cache_page(%struct.address_space*, i64, i32) #1

declare dso_local i64 @f2fs_lookup_extent_cache(%struct.inode*, i64, %struct.extent_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @__is_valid_data_blkaddr(i64) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @f2fs_wait_on_block_writeback(%struct.inode*, i64) #1

declare dso_local %struct.page* @f2fs_pagecache_get_page(i32, i64, i32, i32) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_submit_page_bio(%struct.f2fs_io_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
