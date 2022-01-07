; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c_hfs_file_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c_hfs_file_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space*, i32, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.hfs_find_data = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i8*, i32, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"truncate: %lu, %Lu -> %Lu\0A\00", align 1
@HFS_FLG_EXT_DIRTY = common dso_local global i32 0, align 4
@HFS_FLG_EXT_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_file_truncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.hfs_find_data, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 3
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %3, align 8
  %16 = load i32, i32* @INODE, align 4
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @hfs_dbg(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %24, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %1
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load %struct.address_space*, %struct.address_space** %39, align 8
  store %struct.address_space* %40, %struct.address_space** %10, align 8
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load %struct.address_space*, %struct.address_space** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @pagecache_write_begin(i32* null, %struct.address_space* %45, i32 %47, i32 0, i32 0, %struct.page** %12, i8** %11)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %37
  %52 = load %struct.address_space*, %struct.address_space** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.page*, %struct.page** %12, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @pagecache_write_end(i32* null, %struct.address_space* %52, i32 %54, i32 0, i32 0, %struct.page* %55, i8* %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %51, %37
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.inode*, %struct.inode** %2, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %58
  br label %261

69:                                               ; preds = %1
  %70 = load %struct.inode*, %struct.inode** %2, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  %74 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %261

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.inode*, %struct.inode** %2, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.super_block*, %struct.super_block** %3, align 8
  %85 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %84)
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %83, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.super_block*, %struct.super_block** %3, align 8
  %92 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %91)
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %90, %94
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %5, align 8
  %98 = load %struct.inode*, %struct.inode** %2, align 8
  %99 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %6, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %80
  br label %227

106:                                              ; preds = %80
  %107 = load %struct.inode*, %struct.inode** %2, align 8
  %108 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = call i32 @mutex_lock(i32* %109)
  %111 = load %struct.super_block*, %struct.super_block** %3, align 8
  %112 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %111)
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @hfs_find_init(i32 %114, %struct.hfs_find_data* %4)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %106
  %119 = load %struct.inode*, %struct.inode** %2, align 8
  %120 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = call i32 @mutex_unlock(i32* %121)
  br label %261

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123, %199
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.inode*, %struct.inode** %2, align 8
  %127 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = icmp eq i8* %125, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %124
  %132 = load %struct.super_block*, %struct.super_block** %3, align 8
  %133 = load %struct.inode*, %struct.inode** %2, align 8
  %134 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %133)
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %6, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @hfs_free_extents(%struct.super_block* %132, i32 %136, i8* %137, i8* %143)
  %145 = load %struct.inode*, %struct.inode** %2, align 8
  %146 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @hfs_dump_extent(i32 %148)
  %150 = load i8*, i8** %5, align 8
  %151 = load %struct.inode*, %struct.inode** %2, align 8
  %152 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %151)
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i8* %150, i8** %153, align 8
  br label %217

154:                                              ; preds = %124
  %155 = load %struct.inode*, %struct.inode** %2, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @__hfs_ext_cache_extent(%struct.hfs_find_data* %4, %struct.inode* %155, i8* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %217

161:                                              ; preds = %154
  %162 = load %struct.inode*, %struct.inode** %2, align 8
  %163 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %162)
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 7
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %7, align 8
  %166 = load %struct.super_block*, %struct.super_block** %3, align 8
  %167 = load %struct.inode*, %struct.inode** %2, align 8
  %168 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %167)
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = inttoptr i64 %175 to i8*
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %5, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = inttoptr i64 %181 to i8*
  %183 = call i32 @hfs_free_extents(%struct.super_block* %166, i32 %170, i8* %176, i8* %182)
  %184 = load %struct.inode*, %struct.inode** %2, align 8
  %185 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %184)
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @hfs_dump_extent(i32 %187)
  %189 = load i8*, i8** %5, align 8
  %190 = load i8*, i8** %7, align 8
  %191 = icmp ugt i8* %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %161
  %193 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %194 = load %struct.inode*, %struct.inode** %2, align 8
  %195 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %194)
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %193
  store i32 %198, i32* %196, align 8
  br label %217

199:                                              ; preds = %161
  %200 = load i8*, i8** %7, align 8
  store i8* %200, i8** %6, align 8
  %201 = load %struct.inode*, %struct.inode** %2, align 8
  %202 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %201)
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 6
  store i8* null, i8** %203, align 8
  %204 = load %struct.inode*, %struct.inode** %2, align 8
  %205 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %204)
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 7
  store i8* null, i8** %206, align 8
  %207 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %208 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %209 = or i32 %207, %208
  %210 = xor i32 %209, -1
  %211 = load %struct.inode*, %struct.inode** %2, align 8
  %212 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %211)
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %210
  store i32 %215, i32* %213, align 8
  %216 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %4)
  br label %124

217:                                              ; preds = %192, %160, %131
  %218 = call i32 @hfs_find_exit(%struct.hfs_find_data* %4)
  %219 = load %struct.inode*, %struct.inode** %2, align 8
  %220 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %219)
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 5
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load i8*, i8** %5, align 8
  %224 = load %struct.inode*, %struct.inode** %2, align 8
  %225 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %224)
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 4
  store i8* %223, i8** %226, align 8
  br label %227

227:                                              ; preds = %217, %105
  %228 = load %struct.inode*, %struct.inode** %2, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.inode*, %struct.inode** %2, align 8
  %232 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %231)
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  %234 = load %struct.inode*, %struct.inode** %2, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.super_block*, %struct.super_block** %3, align 8
  %238 = getelementptr inbounds %struct.super_block, %struct.super_block* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = sub nsw i32 %240, 1
  %242 = load %struct.super_block*, %struct.super_block** %3, align 8
  %243 = getelementptr inbounds %struct.super_block, %struct.super_block* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = ashr i32 %241, %244
  %246 = load %struct.inode*, %struct.inode** %2, align 8
  %247 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %246)
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 3
  store i32 %245, i32* %248, align 4
  %249 = load %struct.inode*, %struct.inode** %2, align 8
  %250 = load %struct.inode*, %struct.inode** %2, align 8
  %251 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %250)
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.super_block*, %struct.super_block** %3, align 8
  %255 = getelementptr inbounds %struct.super_block, %struct.super_block* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %253, %256
  %258 = call i32 @inode_set_bytes(%struct.inode* %249, i32 %257)
  %259 = load %struct.inode*, %struct.inode** %2, align 8
  %260 = call i32 @mark_inode_dirty(%struct.inode* %259)
  br label %261

261:                                              ; preds = %227, %118, %78, %68
  ret void
}

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local %struct.TYPE_4__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @pagecache_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @pagecache_write_end(i32*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local %struct.TYPE_3__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hfs_free_extents(%struct.super_block*, i32, i8*, i8*) #1

declare dso_local i32 @hfs_dump_extent(i32) #1

declare dso_local i32 @__hfs_ext_cache_extent(%struct.hfs_find_data*, %struct.inode*, i8*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
