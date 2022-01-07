; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_file_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_file_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space*, i32, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.hfsplus_inode_info = type { i32, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.hfs_find_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"truncate: %lu, %llu -> %llu\0A\00", align 1
@HFSPLUS_EXT_DIRTY = common dso_local global i32 0, align 4
@HFSPLUS_EXT_NEW = common dso_local global i32 0, align 4
@HFSPLUS_I_ALLOC_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfsplus_file_truncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.hfsplus_inode_info*, align 8
  %5 = alloca %struct.hfs_find_data, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %17)
  store %struct.hfsplus_inode_info* %18, %struct.hfsplus_inode_info** %4, align 8
  %19 = load i32, i32* @INODE, align 4
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hfs_dbg(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %26, i32 %29)
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %35 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %1
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load %struct.address_space*, %struct.address_space** %40, align 8
  store %struct.address_space* %41, %struct.address_space** %10, align 8
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.address_space*, %struct.address_space** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @pagecache_write_begin(i32* null, %struct.address_space* %45, i32 %46, i32 0, i32 0, %struct.page** %11, i8** %12)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %251

51:                                               ; preds = %38
  %52 = load %struct.address_space*, %struct.address_space** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.page*, %struct.page** %11, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @pagecache_write_end(i32* null, %struct.address_space* %52, i32 %53, i32 0, i32 0, %struct.page* %54, i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %251

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %2, align 8
  %62 = call i32 @mark_inode_dirty(%struct.inode* %61)
  br label %251

63:                                               ; preds = %1
  %64 = load %struct.inode*, %struct.inode** %2, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %68 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %251

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.inode*, %struct.inode** %2, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.super_block*, %struct.super_block** %3, align 8
  %78 = call %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %76, %80
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.super_block*, %struct.super_block** %3, align 8
  %84 = call %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %82, %86
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %7, align 8
  %90 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %91 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %90, i32 0, i32 4
  %92 = call i32 @mutex_lock(i32* %91)
  %93 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %94 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %73
  br label %216

100:                                              ; preds = %73
  %101 = load %struct.super_block*, %struct.super_block** %3, align 8
  %102 = call %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @hfs_find_init(i32 %104, %struct.hfs_find_data* %5)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %110 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %109, i32 0, i32 4
  %111 = call i32 @mutex_unlock(i32* %110)
  br label %251

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %193
  %114 = load i8*, i8** %6, align 8
  %115 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %116 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp eq i8* %114, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load %struct.super_block*, %struct.super_block** %3, align 8
  %125 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %126 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @hfsplus_free_extents(%struct.super_block* %124, i32 %127, i8* %128, i8* %134)
  %136 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %137 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @hfsplus_dump_extent(i32 %138)
  %140 = load i8*, i8** %7, align 8
  %141 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %142 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = call i32 @mutex_lock(i32* %145)
  br label %211

147:                                              ; preds = %113
  %148 = load %struct.inode*, %struct.inode** %2, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @__hfsplus_ext_cache_extent(%struct.hfs_find_data* %5, %struct.inode* %148, i8* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %211

154:                                              ; preds = %147
  %155 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %5)
  %156 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %161 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %160, i32 0, i32 7
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %8, align 8
  %163 = load %struct.super_block*, %struct.super_block** %3, align 8
  %164 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %165 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = inttoptr i64 %171 to i8*
  %173 = load i8*, i8** %6, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @hfsplus_free_extents(%struct.super_block* %163, i32 %166, i8* %172, i8* %178)
  %180 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %181 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @hfsplus_dump_extent(i32 %182)
  %184 = load i8*, i8** %7, align 8
  %185 = load i8*, i8** %8, align 8
  %186 = icmp ugt i8* %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %154
  %188 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %189 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %190 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %211

193:                                              ; preds = %154
  %194 = load i8*, i8** %8, align 8
  store i8* %194, i8** %6, align 8
  %195 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %196 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %195, i32 0, i32 6
  store i8* null, i8** %196, align 8
  %197 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %198 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %197, i32 0, i32 7
  store i8* null, i8** %198, align 8
  %199 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %200 = load i32, i32* @HFSPLUS_EXT_NEW, align 4
  %201 = or i32 %199, %200
  %202 = xor i32 %201, -1
  %203 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %204 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 0
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = call i32 @mutex_lock(i32* %209)
  br label %113

211:                                              ; preds = %187, %153, %119
  %212 = call i32 @hfs_find_exit(%struct.hfs_find_data* %5)
  %213 = load i8*, i8** %7, align 8
  %214 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %215 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %214, i32 0, i32 5
  store i8* %213, i8** %215, align 8
  br label %216

216:                                              ; preds = %211, %99
  %217 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %218 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %217, i32 0, i32 4
  %219 = call i32 @mutex_unlock(i32* %218)
  %220 = load %struct.inode*, %struct.inode** %2, align 8
  %221 = getelementptr inbounds %struct.inode, %struct.inode* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %224 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.inode*, %struct.inode** %2, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.super_block*, %struct.super_block** %3, align 8
  %229 = getelementptr inbounds %struct.super_block, %struct.super_block* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %227, %230
  %232 = sub nsw i32 %231, 1
  %233 = load %struct.super_block*, %struct.super_block** %3, align 8
  %234 = getelementptr inbounds %struct.super_block, %struct.super_block* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = ashr i32 %232, %235
  %237 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %238 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load %struct.inode*, %struct.inode** %2, align 8
  %240 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %4, align 8
  %241 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.super_block*, %struct.super_block** %3, align 8
  %244 = getelementptr inbounds %struct.super_block, %struct.super_block* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %242, %245
  %247 = call i32 @inode_set_bytes(%struct.inode* %239, i32 %246)
  %248 = load %struct.inode*, %struct.inode** %2, align 8
  %249 = load i32, i32* @HFSPLUS_I_ALLOC_DIRTY, align 4
  %250 = call i32 @hfsplus_mark_inode_dirty(%struct.inode* %248, i32 %249)
  br label %251

251:                                              ; preds = %216, %108, %71, %60, %59, %50
  ret void
}

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @pagecache_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @pagecache_write_end(i32*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hfsplus_free_extents(%struct.super_block*, i32, i8*, i8*) #1

declare dso_local i32 @hfsplus_dump_extent(i32) #1

declare dso_local i32 @__hfsplus_ext_cache_extent(%struct.hfs_find_data*, %struct.inode*, i8*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local i32 @hfsplus_mark_inode_dirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
