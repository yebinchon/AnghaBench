; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_prepare_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_prepare_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i64, i32 }
%struct.dnode_of_data = type { i64, i32 }
%struct.extent_info = type { i64, i64, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@FI_NO_PREALLOC = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_DEFAULT = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_PRE_AIO = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@FI_DATA_EXIST = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@LOOKUP_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.page*, i32, i32, i64*, i32*)* @prepare_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_write_begin(%struct.f2fs_sb_info* %0, %struct.page* %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.dnode_of_data, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.extent_info, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.page*, %struct.page** %9, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %14, align 8
  %27 = load %struct.page*, %struct.page** %9, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %15, align 8
  store i32 0, i32* %18, align 4
  %30 = bitcast %struct.extent_info* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 32, i1 false)
  store i32 0, i32* %20, align 4
  %31 = load %struct.inode*, %struct.inode** %14, align 8
  %32 = call i64 @f2fs_has_inline_data(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.inode*, %struct.inode** %14, align 8
  %40 = load i32, i32* @FI_NO_PREALLOC, align 4
  %41 = call i32 @is_inode_flag_set(%struct.inode* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.inode*, %struct.inode** %14, align 8
  %45 = call i32 @f2fs_verity_in_progress(%struct.inode* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %199

48:                                               ; preds = %43, %38, %34, %6
  %49 = load %struct.inode*, %struct.inode** %14, align 8
  %50 = call i64 @f2fs_has_inline_data(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %53, %54
  %56 = load %struct.inode*, %struct.inode** %14, align 8
  %57 = call i32 @MAX_INLINE_DATA(%struct.inode* %56)
  %58 = icmp ugt i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @F2FS_GET_BLOCK_DEFAULT, align 4
  store i32 %60, i32* %21, align 4
  br label %63

61:                                               ; preds = %52, %48
  %62 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  store i32 %62, i32* %21, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = load %struct.inode*, %struct.inode** %14, align 8
  %65 = call i64 @f2fs_has_inline_data(%struct.inode* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @PAGE_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.inode*, %struct.inode** %14, align 8
  %72 = call i32 @i_size_read(%struct.inode* %71)
  %73 = icmp sge i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67, %63
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %76 = load i32, i32* %21, align 4
  %77 = call i32 @__do_map_lock(%struct.f2fs_sb_info* %75, i32 %76, i32 1)
  store i32 1, i32* %18, align 4
  br label %78

78:                                               ; preds = %74, %67
  br label %79

79:                                               ; preds = %168, %78
  %80 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %81 = load %struct.inode*, %struct.inode** %14, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %80, i32 %83)
  store %struct.page* %84, %struct.page** %17, align 8
  %85 = load %struct.page*, %struct.page** %17, align 8
  %86 = call i64 @IS_ERR(%struct.page* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.page*, %struct.page** %17, align 8
  %90 = call i32 @PTR_ERR(%struct.page* %89)
  store i32 %90, i32* %20, align 4
  br label %190

91:                                               ; preds = %79
  %92 = load %struct.inode*, %struct.inode** %14, align 8
  %93 = load %struct.page*, %struct.page** %17, align 8
  %94 = load %struct.page*, %struct.page** %17, align 8
  %95 = call i32 @set_new_dnode(%struct.dnode_of_data* %16, %struct.inode* %92, %struct.page* %93, %struct.page* %94, i32 0)
  %96 = load %struct.inode*, %struct.inode** %14, align 8
  %97 = call i64 @f2fs_has_inline_data(%struct.inode* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %137

99:                                               ; preds = %91
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %100, %101
  %103 = load %struct.inode*, %struct.inode** %14, align 8
  %104 = call i32 @MAX_INLINE_DATA(%struct.inode* %103)
  %105 = icmp ule i32 %102, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load %struct.page*, %struct.page** %9, align 8
  %108 = load %struct.page*, %struct.page** %17, align 8
  %109 = call i32 @f2fs_do_read_inline_data(%struct.page* %107, %struct.page* %108)
  %110 = load %struct.inode*, %struct.inode** %14, align 8
  %111 = load i32, i32* @FI_DATA_EXIST, align 4
  %112 = call i32 @set_inode_flag(%struct.inode* %110, i32 %111)
  %113 = load %struct.inode*, %struct.inode** %14, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load %struct.page*, %struct.page** %17, align 8
  %119 = call i32 @set_inline_node(%struct.page* %118)
  br label %120

120:                                              ; preds = %117, %106
  br label %136

121:                                              ; preds = %99
  %122 = load %struct.page*, %struct.page** %9, align 8
  %123 = call i32 @f2fs_convert_inline_page(%struct.dnode_of_data* %16, %struct.page* %122)
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %188

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @NULL_ADDR, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @f2fs_get_block(%struct.dnode_of_data* %16, i64 %133)
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135, %120
  br label %181

137:                                              ; preds = %91
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i64, i64* %15, align 8
  %142 = call i32 @f2fs_get_block(%struct.dnode_of_data* %16, i64 %141)
  store i32 %142, i32* %20, align 4
  br label %180

143:                                              ; preds = %137
  %144 = load %struct.inode*, %struct.inode** %14, align 8
  %145 = load i64, i64* %15, align 8
  %146 = call i64 @f2fs_lookup_extent_cache(%struct.inode* %144, i64 %145, %struct.extent_info* %19)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %19, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %15, align 8
  %152 = add nsw i64 %150, %151
  %153 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %19, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %152, %154
  %156 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 0
  store i64 %155, i64* %156, align 8
  br label %179

157:                                              ; preds = %143
  %158 = load i64, i64* %15, align 8
  %159 = load i32, i32* @LOOKUP_NODE, align 4
  %160 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %16, i64 %158, i32 %159)
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @NULL_ADDR, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %163, %157
  %169 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %16)
  %170 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %171 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  %172 = call i32 @__do_map_lock(%struct.f2fs_sb_info* %170, i32 %171, i32 1)
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  %175 = icmp ne i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @WARN_ON(i32 %176)
  store i32 1, i32* %18, align 4
  br label %79

178:                                              ; preds = %163
  br label %179

179:                                              ; preds = %178, %148
  br label %180

180:                                              ; preds = %179, %140
  br label %181

181:                                              ; preds = %180, %136
  %182 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %12, align 8
  store i64 %183, i64* %184, align 8
  %185 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32*, i32** %13, align 8
  store i32 %186, i32* %187, align 4
  br label %188

188:                                              ; preds = %181, %126
  %189 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %16)
  br label %190

190:                                              ; preds = %188, %88
  %191 = load i32, i32* %18, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %195 = load i32, i32* %21, align 4
  %196 = call i32 @__do_map_lock(%struct.f2fs_sb_info* %194, i32 %195, i32 0)
  br label %197

197:                                              ; preds = %193, %190
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %197, %47
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #2

declare dso_local i32 @is_inode_flag_set(%struct.inode*, i32) #2

declare dso_local i32 @f2fs_verity_in_progress(%struct.inode*) #2

declare dso_local i32 @MAX_INLINE_DATA(%struct.inode*) #2

declare dso_local i32 @i_size_read(%struct.inode*) #2

declare dso_local i32 @__do_map_lock(%struct.f2fs_sb_info*, i32, i32) #2

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #2

declare dso_local i64 @IS_ERR(%struct.page*) #2

declare dso_local i32 @PTR_ERR(%struct.page*) #2

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, %struct.page*, %struct.page*, i32) #2

declare dso_local i32 @f2fs_do_read_inline_data(%struct.page*, %struct.page*) #2

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #2

declare dso_local i32 @set_inline_node(%struct.page*) #2

declare dso_local i32 @f2fs_convert_inline_page(%struct.dnode_of_data*, %struct.page*) #2

declare dso_local i32 @f2fs_get_block(%struct.dnode_of_data*, i64) #2

declare dso_local i64 @f2fs_lookup_extent_cache(%struct.inode*, i64, %struct.extent_info*) #2

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #2

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #2

declare dso_local i32 @WARN_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
