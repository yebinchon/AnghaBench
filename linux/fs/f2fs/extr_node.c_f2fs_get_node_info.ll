; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_get_node_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_get_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.node_info = type { i64, i32, i32, i32 }
%struct.f2fs_nm_info = type { i32 }
%struct.curseg_info = type { i32, %struct.f2fs_journal* }
%struct.f2fs_journal = type { i32 }
%struct.f2fs_nat_block = type { %struct.f2fs_nat_entry* }
%struct.f2fs_nat_entry = type { i32 }
%struct.page = type { i32 }
%struct.nat_entry = type { i32 }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@NAT_JOURNAL = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %0, i64 %1, %struct.node_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.node_info*, align 8
  %8 = alloca %struct.f2fs_nm_info*, align 8
  %9 = alloca %struct.curseg_info*, align 8
  %10 = alloca %struct.f2fs_journal*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.f2fs_nat_block*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.f2fs_nat_entry, align 4
  %15 = alloca %struct.nat_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.f2fs_nat_entry, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.node_info* %2, %struct.node_info** %7, align 8
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %21 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %20)
  store %struct.f2fs_nm_info* %21, %struct.f2fs_nm_info** %8, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %23 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %24 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %22, i32 %23)
  store %struct.curseg_info* %24, %struct.curseg_info** %9, align 8
  %25 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %26 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %25, i32 0, i32 1
  %27 = load %struct.f2fs_journal*, %struct.f2fs_journal** %26, align 8
  store %struct.f2fs_journal* %27, %struct.f2fs_journal** %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @START_NID(i64 %28)
  store i64 %29, i64* %11, align 8
  store %struct.page* null, %struct.page** %13, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.node_info*, %struct.node_info** %7, align 8
  %32 = getelementptr inbounds %struct.node_info, %struct.node_info* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %34 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %33, i32 0, i32 0
  %35 = call i32 @down_read(i32* %34)
  %36 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info* %36, i64 %37)
  store %struct.nat_entry* %38, %struct.nat_entry** %15, align 8
  %39 = load %struct.nat_entry*, %struct.nat_entry** %15, align 8
  %40 = icmp ne %struct.nat_entry* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %3
  %42 = load %struct.nat_entry*, %struct.nat_entry** %15, align 8
  %43 = call i32 @nat_get_ino(%struct.nat_entry* %42)
  %44 = load %struct.node_info*, %struct.node_info** %7, align 8
  %45 = getelementptr inbounds %struct.node_info, %struct.node_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nat_entry*, %struct.nat_entry** %15, align 8
  %47 = call i32 @nat_get_blkaddr(%struct.nat_entry* %46)
  %48 = load %struct.node_info*, %struct.node_info** %7, align 8
  %49 = getelementptr inbounds %struct.node_info, %struct.node_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nat_entry*, %struct.nat_entry** %15, align 8
  %51 = call i32 @nat_get_version(%struct.nat_entry* %50)
  %52 = load %struct.node_info*, %struct.node_info** %7, align 8
  %53 = getelementptr inbounds %struct.node_info, %struct.node_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %55 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %54, i32 0, i32 0
  %56 = call i32 @up_read(i32* %55)
  store i32 0, i32* %4, align 4
  br label %140

57:                                               ; preds = %3
  %58 = call i32 @memset(%struct.f2fs_nat_entry* %14, i32 0, i32 4)
  %59 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %60 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %59, i32 0, i32 0
  %61 = call i32 @down_read(i32* %60)
  %62 = load %struct.f2fs_journal*, %struct.f2fs_journal** %10, align 8
  %63 = load i32, i32* @NAT_JOURNAL, align 4
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @f2fs_lookup_journal_in_cursum(%struct.f2fs_journal* %62, i32 %63, i64 %64, i32 0)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %57
  %69 = load %struct.f2fs_journal*, %struct.f2fs_journal** %10, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @nat_in_journal(%struct.f2fs_journal* %69, i32 %70)
  %72 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %19, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = bitcast %struct.f2fs_nat_entry* %14 to i8*
  %74 = bitcast %struct.f2fs_nat_entry* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load %struct.node_info*, %struct.node_info** %7, align 8
  %76 = call i32 @node_info_from_raw_nat(%struct.node_info* %75, %struct.f2fs_nat_entry* %14)
  br label %77

77:                                               ; preds = %68, %57
  %78 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %79 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %78, i32 0, i32 0
  %80 = call i32 @up_read(i32* %79)
  %81 = load i32, i32* %18, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %85 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %84, i32 0, i32 0
  %86 = call i32 @up_read(i32* %85)
  br label %120

87:                                               ; preds = %77
  %88 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @current_nat_addr(%struct.f2fs_sb_info* %88, i64 %89)
  store i32 %90, i32* %16, align 4
  %91 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %92 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %91, i32 0, i32 0
  %93 = call i32 @up_read(i32* %92)
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info* %94, i32 %95)
  store %struct.page* %96, %struct.page** %13, align 8
  %97 = load %struct.page*, %struct.page** %13, align 8
  %98 = call i64 @IS_ERR(%struct.page* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = load %struct.page*, %struct.page** %13, align 8
  %102 = call i32 @PTR_ERR(%struct.page* %101)
  store i32 %102, i32* %4, align 4
  br label %140

103:                                              ; preds = %87
  %104 = load %struct.page*, %struct.page** %13, align 8
  %105 = call i64 @page_address(%struct.page* %104)
  %106 = inttoptr i64 %105 to %struct.f2fs_nat_block*
  store %struct.f2fs_nat_block* %106, %struct.f2fs_nat_block** %12, align 8
  %107 = load %struct.f2fs_nat_block*, %struct.f2fs_nat_block** %12, align 8
  %108 = getelementptr inbounds %struct.f2fs_nat_block, %struct.f2fs_nat_block* %107, i32 0, i32 0
  %109 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %11, align 8
  %112 = sub i64 %110, %111
  %113 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %109, i64 %112
  %114 = bitcast %struct.f2fs_nat_entry* %14 to i8*
  %115 = bitcast %struct.f2fs_nat_entry* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = load %struct.node_info*, %struct.node_info** %7, align 8
  %117 = call i32 @node_info_from_raw_nat(%struct.node_info* %116, %struct.f2fs_nat_entry* %14)
  %118 = load %struct.page*, %struct.page** %13, align 8
  %119 = call i32 @f2fs_put_page(%struct.page* %118, i32 1)
  br label %120

120:                                              ; preds = %103, %83
  %121 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %14, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le32_to_cpu(i32 %122)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = call i64 @__is_valid_data_blkaddr(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %131 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %128, i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @EFAULT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %140

136:                                              ; preds = %127, %120
  %137 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @cache_nat_entry(%struct.f2fs_sb_info* %137, i64 %138, %struct.f2fs_nat_entry* %14)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %136, %133, %100, %41
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @START_NID(i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info*, i64) #1

declare dso_local i32 @nat_get_ino(%struct.nat_entry*) #1

declare dso_local i32 @nat_get_blkaddr(%struct.nat_entry*) #1

declare dso_local i32 @nat_get_version(%struct.nat_entry*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @memset(%struct.f2fs_nat_entry*, i32, i32) #1

declare dso_local i32 @f2fs_lookup_journal_in_cursum(%struct.f2fs_journal*, i32, i64, i32) #1

declare dso_local i32 @nat_in_journal(%struct.f2fs_journal*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @node_info_from_raw_nat(%struct.node_info*, %struct.f2fs_nat_entry*) #1

declare dso_local i32 @current_nat_addr(%struct.f2fs_sb_info*, i64) #1

declare dso_local %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @__is_valid_data_blkaddr(i32) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @cache_nat_entry(%struct.f2fs_sb_info*, i64, %struct.f2fs_nat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
