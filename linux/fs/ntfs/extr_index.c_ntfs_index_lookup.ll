; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_index.c_ntfs_index_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_index.c_ntfs_index_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, %struct.page*, %struct.TYPE_37__*, %struct.TYPE_32__*, %struct.TYPE_34__*, i32*, %struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_32__* }
%struct.page = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_30__, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i64, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_36__ = type { i32, i32, i32, i32, %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_32__ = type { i64, i32, i32, %struct.TYPE_47__, i32, i32, %struct.TYPE_38__, %struct.TYPE_31__* }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_32__* }
%struct.TYPE_31__ = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_39__ = type { %struct.address_space* }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@AT_INDEX_ALLOCATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Index uses unsupported collation rule 0x%x.  Aborting lookup.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"map_mft_record() failed with error code %ld.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AT_INDEX_ROOT = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Index root attribute missing in inode 0x%lx.\00", align 1
@EIO = common dso_local global i32 0, align 4
@INDEX_ENTRY_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Entry not found.\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"No index allocation attribute but index entry requires one.  Inode 0x%lx is corrupt or driver bug.\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to map index page, error %ld.\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [64 x i8] c"Out of bounds check failed.  Corrupt inode 0x%lx or driver bug.\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"Index record with vcn 0x%llx is corrupt.  Corrupt inode 0x%lx.  Run chkdsk.\00", align 1
@.str.10 = private unnamed_addr constant [116 x i8] c"Actual VCN (0x%llx) of index buffer is different from expected VCN (0x%llx).  Inode 0x%lx is corrupt or driver bug.\00", align 1
@.str.11 = private unnamed_addr constant [136 x i8] c"Index buffer (VCN 0x%llx) of inode 0x%lx has a size (%u) differing from the index specified size (%u).  Inode is corrupt or driver bug.\00", align 1
@.str.12 = private unnamed_addr constant [132 x i8] c"Index buffer (VCN 0x%llx) of inode 0x%lx crosses page boundary.  Impossible!  Cannot access!  This is probably a bug in the driver.\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"Size of index buffer (VCN 0x%llx) of inode 0x%lx exceeds maximum size.\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Index entry out of bounds in inode 0x%lx.\00", align 1
@NODE_MASK = common dso_local global i32 0, align 4
@LEAF_NODE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [65 x i8] c"Index entry with child node found in a leaf node in inode 0x%lx.\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Negative child node vcn in inode 0x%lx.\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Corrupt index.  Aborting lookup.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntfs_index_lookup(i8* %0, i32 %1, %struct.TYPE_33__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca %struct.TYPE_36__*, align 8
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca %struct.address_space*, align 8
  %22 = alloca %struct.page*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %7, align 8
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %25, i32 0, i32 9
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  store %struct.TYPE_32__* %27, %struct.TYPE_32__** %10, align 8
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  store %struct.TYPE_31__* %30, %struct.TYPE_31__** %11, align 8
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 1
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %12, align 8
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %36, align 8
  store %struct.TYPE_32__* %37, %struct.TYPE_32__** %13, align 8
  store i32 0, i32* %24, align 4
  %38 = call i32 @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %40 = call i32 @NInoAttr(%struct.TYPE_32__* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AT_INDEX_ALLOCATION, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, -1
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %59 = icmp ne %struct.TYPE_32__* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp sle i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ntfs_is_collation_rule_supported(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %3
  %80 = load %struct.super_block*, %struct.super_block** %12, align 8
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %80, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %811

90:                                               ; preds = %3
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %92 = call %struct.page* @map_mft_record(%struct.TYPE_32__* %91)
  store %struct.page* %92, %struct.page** %14, align 8
  %93 = load %struct.page*, %struct.page** %14, align 8
  %94 = call i64 @IS_ERR(%struct.page* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.super_block*, %struct.super_block** %12, align 8
  %98 = load %struct.page*, %struct.page** %14, align 8
  %99 = call i32 @PTR_ERR(%struct.page* %98)
  %100 = sub nsw i32 0, %99
  %101 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.page*, %struct.page** %14, align 8
  %103 = call i32 @PTR_ERR(%struct.page* %102)
  store i32 %103, i32* %4, align 4
  br label %811

104:                                              ; preds = %90
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %106 = load %struct.page*, %struct.page** %14, align 8
  %107 = call %struct.TYPE_34__* @ntfs_attr_get_search_ctx(%struct.TYPE_32__* %105, %struct.page* %106)
  store %struct.TYPE_34__* %107, %struct.TYPE_34__** %20, align 8
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %109 = icmp ne %struct.TYPE_34__* %108, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %24, align 4
  br label %788

117:                                              ; preds = %104
  %118 = load i32, i32* @AT_INDEX_ROOT, align 4
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CASE_SENSITIVE, align 4
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %127 = call i32 @ntfs_attr_lookup(i32 %118, i32 %121, i32 %124, i32 %125, i32 0, i32* null, i32 0, %struct.TYPE_34__* %126)
  store i32 %127, i32* %24, align 4
  %128 = load i32, i32* %24, align 4
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %117
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* @ENOENT, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.super_block*, %struct.super_block** %12, align 8
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %137, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %24, align 4
  br label %144

144:                                              ; preds = %136, %131
  br label %788

145:                                              ; preds = %117
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_42__*, %struct.TYPE_42__** %147, align 8
  %149 = bitcast %struct.TYPE_42__* %148 to i32*
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_42__*, %struct.TYPE_42__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le16_to_cpu(i32 %156)
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %149, i64 %158
  %160 = bitcast i32* %159 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %160, %struct.TYPE_35__** %15, align 8
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 0
  %163 = bitcast %struct.TYPE_43__* %162 to i32*
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le32_to_cpu(i32 %167)
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %163, i64 %169
  store i32* %170, i32** %18, align 8
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 0
  %173 = bitcast %struct.TYPE_43__* %172 to i32*
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le32_to_cpu(i32 %177)
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = bitcast i32* %180 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %181, %struct.TYPE_36__** %16, align 8
  br label %182

182:                                              ; preds = %330, %145
  %183 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %184 = bitcast %struct.TYPE_36__* %183 to i32*
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i32*
  %189 = icmp ult i32* %184, %188
  br i1 %189, label %207, label %190

190:                                              ; preds = %182
  %191 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %192 = bitcast %struct.TYPE_36__* %191 to i32*
  %193 = getelementptr inbounds i32, i32* %192, i64 4
  %194 = load i32*, i32** %18, align 8
  %195 = icmp ugt i32* %193, %194
  br i1 %195, label %207, label %196

196:                                              ; preds = %190
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %198 = bitcast %struct.TYPE_36__* %197 to i32*
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @le16_to_cpu(i32 %201)
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %198, i64 %203
  %205 = load i32*, i32** %18, align 8
  %206 = icmp ugt i32* %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %196, %190, %182
  br label %808

208:                                              ; preds = %196
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @INDEX_ENTRY_END, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %340

216:                                              ; preds = %208
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @le16_to_cpu(i32 %219)
  %221 = add nsw i32 4, %220
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @le16_to_cpu(i32 %226)
  %228 = icmp sgt i32 %221, %227
  br i1 %228, label %248, label %229

229:                                              ; preds = %216
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @le16_to_cpu(i32 %234)
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @le16_to_cpu(i32 %240)
  %242 = add nsw i32 %235, %241
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @le16_to_cpu(i32 %245)
  %247 = icmp sgt i32 %242, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %229, %216
  br label %808

249:                                              ; preds = %229
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @le16_to_cpu(i32 %253)
  %255 = icmp eq i32 %250, %254
  br i1 %255, label %256, label %306

256:                                              ; preds = %249
  %257 = load i8*, i8** %5, align 8
  %258 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %258, i32 0, i32 3
  %260 = load i32, i32* %6, align 4
  %261 = call i32 @memcmp(i8* %257, i32* %259, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %306, label %263

263:                                              ; preds = %256
  br label %264

264:                                              ; preds = %347, %328, %263
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 0
  store i32 1, i32* %266, align 8
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %268 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %268, i32 0, i32 8
  store %struct.TYPE_35__* %267, %struct.TYPE_35__** %269, align 8
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %271 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %271, i32 0, i32 5
  store %struct.TYPE_34__* %270, %struct.TYPE_34__** %272, align 8
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 4
  store %struct.TYPE_32__* %273, %struct.TYPE_32__** %275, align 8
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 3
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %277, align 8
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 2
  store %struct.page* null, %struct.page** %279, align 8
  br label %280

280:                                              ; preds = %668, %264
  %281 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 7
  store %struct.TYPE_36__* %281, %struct.TYPE_36__** %283, align 8
  %284 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %285 = bitcast %struct.TYPE_36__* %284 to i32*
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @le16_to_cpu(i32 %290)
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %285, i64 %292
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 6
  store i32* %293, i32** %295, align 8
  %296 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @le16_to_cpu(i32 %300)
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 4
  %304 = call i32 @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %305 = load i32, i32* %24, align 4
  store i32 %305, i32* %4, align 4
  br label %811

306:                                              ; preds = %256, %249
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %308 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load i8*, i8** %5, align 8
  %314 = load i32, i32* %6, align 4
  %315 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @le16_to_cpu(i32 %319)
  %321 = call i32 @ntfs_collate(%struct.TYPE_31__* %307, i32 %312, i8* %313, i32 %314, i32* %316, i32 %320)
  store i32 %321, i32* %23, align 4
  %322 = load i32, i32* %23, align 4
  %323 = icmp eq i32 %322, -1
  br i1 %323, label %324, label %325

324:                                              ; preds = %306
  br label %340

325:                                              ; preds = %306
  %326 = load i32, i32* %23, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  br label %264

329:                                              ; preds = %325
  br label %330

330:                                              ; preds = %329
  %331 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %332 = bitcast %struct.TYPE_36__* %331 to i32*
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @le16_to_cpu(i32 %335)
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %332, i64 %337
  %339 = bitcast i32* %338 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %339, %struct.TYPE_36__** %16, align 8
  br label %182

340:                                              ; preds = %324, %215
  %341 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %342 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @INDEX_ENTRY_NODE, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %340
  %348 = call i32 @ntfs_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %349 = load i32, i32* @ENOENT, align 4
  %350 = sub nsw i32 0, %349
  store i32 %350, i32* %24, align 4
  br label %264

351:                                              ; preds = %340
  %352 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %353 = call i32 @NInoIndexAllocPresent(%struct.TYPE_32__* %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %351
  %356 = load %struct.super_block*, %struct.super_block** %12, align 8
  %357 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %356, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0), i32 %359)
  br label %788

361:                                              ; preds = %351
  %362 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %363 = bitcast %struct.TYPE_36__* %362 to i32*
  %364 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %365 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @le16_to_cpu(i32 %366)
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %363, i64 %368
  %370 = getelementptr inbounds i32, i32* %369, i64 -8
  %371 = call i32 @sle64_to_cpup(i32* %370)
  store i32 %371, i32* %8, align 4
  %372 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %373 = call %struct.TYPE_39__* @VFS_I(%struct.TYPE_32__* %372)
  %374 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %373, i32 0, i32 0
  %375 = load %struct.address_space*, %struct.address_space** %374, align 8
  store %struct.address_space* %375, %struct.address_space** %21, align 8
  %376 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %377 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_34__* %376)
  %378 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %379 = call i32 @unmap_mft_record(%struct.TYPE_32__* %378)
  store %struct.page* null, %struct.page** %14, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %20, align 8
  br label %380

380:                                              ; preds = %772, %361
  %381 = load %struct.address_space*, %struct.address_space** %21, align 8
  %382 = load i32, i32* %8, align 4
  %383 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = shl i32 %382, %387
  %389 = load i32, i32* @PAGE_SHIFT, align 4
  %390 = ashr i32 %388, %389
  %391 = call %struct.page* @ntfs_map_page(%struct.address_space* %381, i32 %390)
  store %struct.page* %391, %struct.page** %22, align 8
  %392 = load %struct.page*, %struct.page** %22, align 8
  %393 = call i64 @IS_ERR(%struct.page* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %380
  %396 = load %struct.super_block*, %struct.super_block** %12, align 8
  %397 = load %struct.page*, %struct.page** %22, align 8
  %398 = call i32 @PTR_ERR(%struct.page* %397)
  %399 = sub nsw i32 0, %398
  %400 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %396, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %399)
  %401 = load %struct.page*, %struct.page** %22, align 8
  %402 = call i32 @PTR_ERR(%struct.page* %401)
  store i32 %402, i32* %24, align 4
  br label %788

403:                                              ; preds = %380
  %404 = load %struct.page*, %struct.page** %22, align 8
  %405 = call i32 @lock_page(%struct.page* %404)
  %406 = load %struct.page*, %struct.page** %22, align 8
  %407 = call i64 @page_address(%struct.page* %406)
  %408 = inttoptr i64 %407 to i32*
  store i32* %408, i32** %19, align 8
  br label %409

409:                                              ; preds = %771, %403
  %410 = load i32*, i32** %19, align 8
  %411 = load i32, i32* %8, align 4
  %412 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %413 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %412, i32 0, i32 3
  %414 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = shl i32 %411, %416
  %418 = load i32, i32* @PAGE_MASK, align 4
  %419 = xor i32 %418, -1
  %420 = and i32 %417, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %410, i64 %421
  %423 = bitcast i32* %422 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %423, %struct.TYPE_37__** %17, align 8
  %424 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %425 = bitcast %struct.TYPE_37__* %424 to i32*
  %426 = load i32*, i32** %19, align 8
  %427 = icmp ult i32* %425, %426
  br i1 %427, label %436, label %428

428:                                              ; preds = %409
  %429 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %430 = bitcast %struct.TYPE_37__* %429 to i32*
  %431 = load i32*, i32** %19, align 8
  %432 = load i32, i32* @PAGE_SIZE, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = icmp ugt i32* %430, %434
  br i1 %435, label %436, label %442

436:                                              ; preds = %428, %409
  %437 = load %struct.super_block*, %struct.super_block** %12, align 8
  %438 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %437, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %440)
  br label %783

442:                                              ; preds = %428
  %443 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %444 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @ntfs_is_indx_record(i32 %445)
  %447 = icmp ne i32 %446, 0
  %448 = xor i1 %447, true
  %449 = zext i1 %448 to i32
  %450 = call i64 @unlikely(i32 %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %442
  %453 = load %struct.super_block*, %struct.super_block** %12, align 8
  %454 = load i32, i32* %8, align 4
  %455 = sext i32 %454 to i64
  %456 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %457 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 4
  %459 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %453, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0), i64 %455, i32 %458)
  br label %783

460:                                              ; preds = %442
  %461 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %462 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @sle64_to_cpu(i32 %463)
  %465 = load i32, i32* %8, align 4
  %466 = icmp ne i32 %464, %465
  br i1 %466, label %467, label %480

467:                                              ; preds = %460
  %468 = load %struct.super_block*, %struct.super_block** %12, align 8
  %469 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %470 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @sle64_to_cpu(i32 %471)
  %473 = sext i32 %472 to i64
  %474 = load i32, i32* %8, align 4
  %475 = sext i32 %474 to i64
  %476 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %477 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 4
  %479 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %468, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.10, i64 0, i64 0), i64 %473, i64 %475, i32 %478)
  br label %783

480:                                              ; preds = %460
  %481 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %482 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @le32_to_cpu(i32 %484)
  %486 = add nsw i32 %485, 24
  %487 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %488 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %487, i32 0, i32 3
  %489 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = icmp ne i32 %486, %491
  br i1 %492, label %493, label %512

493:                                              ; preds = %480
  %494 = load %struct.super_block*, %struct.super_block** %12, align 8
  %495 = load i32, i32* %8, align 4
  %496 = sext i32 %495 to i64
  %497 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %498 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %501 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %501, i32 0, i32 3
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @le32_to_cpu(i32 %503)
  %505 = add nsw i32 %504, 24
  %506 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %507 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %506, i32 0, i32 3
  %508 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %494, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.11, i64 0, i64 0), i64 %496, i32 %499, i32 %505, i32 %510)
  br label %783

512:                                              ; preds = %480
  %513 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %514 = bitcast %struct.TYPE_37__* %513 to i32*
  %515 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %515, i32 0, i32 3
  %517 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %514, i64 %520
  store i32* %521, i32** %18, align 8
  %522 = load i32*, i32** %18, align 8
  %523 = load i32*, i32** %19, align 8
  %524 = load i32, i32* @PAGE_SIZE, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  %527 = icmp ugt i32* %522, %526
  br i1 %527, label %528, label %536

528:                                              ; preds = %512
  %529 = load %struct.super_block*, %struct.super_block** %12, align 8
  %530 = load i32, i32* %8, align 4
  %531 = sext i32 %530 to i64
  %532 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %533 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 4
  %535 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %529, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.12, i64 0, i64 0), i64 %531, i32 %534)
  br label %783

536:                                              ; preds = %512
  %537 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %538 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %537, i32 0, i32 0
  %539 = bitcast %struct.TYPE_30__* %538 to i32*
  %540 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %541 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 4
  %544 = call i32 @le32_to_cpu(i32 %543)
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %539, i64 %545
  store i32* %546, i32** %18, align 8
  %547 = load i32*, i32** %18, align 8
  %548 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %549 = bitcast %struct.TYPE_37__* %548 to i32*
  %550 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %551 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %550, i32 0, i32 3
  %552 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i32, i32* %549, i64 %555
  %557 = icmp ugt i32* %547, %556
  br i1 %557, label %558, label %566

558:                                              ; preds = %536
  %559 = load %struct.super_block*, %struct.super_block** %12, align 8
  %560 = load i32, i32* %8, align 4
  %561 = sext i32 %560 to i64
  %562 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %563 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 4
  %565 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %559, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0), i64 %561, i32 %564)
  br label %783

566:                                              ; preds = %536
  %567 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %568 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %567, i32 0, i32 0
  %569 = bitcast %struct.TYPE_30__* %568 to i32*
  %570 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %571 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = call i32 @le32_to_cpu(i32 %573)
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, i32* %569, i64 %575
  %577 = bitcast i32* %576 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %577, %struct.TYPE_36__** %16, align 8
  br label %578

578:                                              ; preds = %705, %566
  %579 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %580 = bitcast %struct.TYPE_36__* %579 to i32*
  %581 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %582 = bitcast %struct.TYPE_37__* %581 to i32*
  %583 = icmp ult i32* %580, %582
  br i1 %583, label %601, label %584

584:                                              ; preds = %578
  %585 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %586 = bitcast %struct.TYPE_36__* %585 to i32*
  %587 = getelementptr inbounds i32, i32* %586, i64 4
  %588 = load i32*, i32** %18, align 8
  %589 = icmp ugt i32* %587, %588
  br i1 %589, label %601, label %590

590:                                              ; preds = %584
  %591 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %592 = bitcast %struct.TYPE_36__* %591 to i32*
  %593 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %594 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %593, i32 0, i32 1
  %595 = load i32, i32* %594, align 4
  %596 = call i32 @le16_to_cpu(i32 %595)
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, i32* %592, i64 %597
  %599 = load i32*, i32** %18, align 8
  %600 = icmp ugt i32* %598, %599
  br i1 %600, label %601, label %607

601:                                              ; preds = %590, %584, %578
  %602 = load %struct.super_block*, %struct.super_block** %12, align 8
  %603 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %604 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %603, i32 0, i32 2
  %605 = load i32, i32* %604, align 4
  %606 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %602, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %605)
  br label %783

607:                                              ; preds = %590
  %608 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %609 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 4
  %611 = load i32, i32* @INDEX_ENTRY_END, align 4
  %612 = and i32 %610, %611
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %615

614:                                              ; preds = %607
  br label %715

615:                                              ; preds = %607
  %616 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %617 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %616, i32 0, i32 2
  %618 = load i32, i32* %617, align 4
  %619 = call i32 @le16_to_cpu(i32 %618)
  %620 = add nsw i32 4, %619
  %621 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %622 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %621, i32 0, i32 4
  %623 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 4
  %626 = call i32 @le16_to_cpu(i32 %625)
  %627 = icmp sgt i32 %620, %626
  br i1 %627, label %647, label %628

628:                                              ; preds = %615
  %629 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %630 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %629, i32 0, i32 4
  %631 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %630, i32 0, i32 0
  %632 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = call i32 @le16_to_cpu(i32 %633)
  %635 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %636 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %635, i32 0, i32 4
  %637 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %637, i32 0, i32 0
  %639 = load i32, i32* %638, align 4
  %640 = call i32 @le16_to_cpu(i32 %639)
  %641 = add nsw i32 %634, %640
  %642 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %643 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 4
  %645 = call i32 @le16_to_cpu(i32 %644)
  %646 = icmp sgt i32 %641, %645
  br i1 %646, label %647, label %653

647:                                              ; preds = %628, %615
  %648 = load %struct.super_block*, %struct.super_block** %12, align 8
  %649 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %650 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %649, i32 0, i32 2
  %651 = load i32, i32* %650, align 4
  %652 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %648, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %651)
  br label %783

653:                                              ; preds = %628
  %654 = load i32, i32* %6, align 4
  %655 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %656 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %655, i32 0, i32 2
  %657 = load i32, i32* %656, align 4
  %658 = call i32 @le16_to_cpu(i32 %657)
  %659 = icmp eq i32 %654, %658
  br i1 %659, label %660, label %681

660:                                              ; preds = %653
  %661 = load i8*, i8** %5, align 8
  %662 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %663 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %662, i32 0, i32 3
  %664 = load i32, i32* %6, align 4
  %665 = call i32 @memcmp(i8* %661, i32* %663, i32 %664)
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %681, label %667

667:                                              ; preds = %660
  br label %668

668:                                              ; preds = %722, %703, %667
  %669 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %670 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %669, i32 0, i32 0
  store i32 0, i32* %670, align 8
  %671 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %672 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %671, i32 0, i32 5
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %672, align 8
  %673 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %674 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %673, i32 0, i32 4
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %674, align 8
  %675 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %676 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %677 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %676, i32 0, i32 3
  store %struct.TYPE_37__* %675, %struct.TYPE_37__** %677, align 8
  %678 = load %struct.page*, %struct.page** %22, align 8
  %679 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %680 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %679, i32 0, i32 2
  store %struct.page* %678, %struct.page** %680, align 8
  br label %280

681:                                              ; preds = %660, %653
  %682 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %683 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %684 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %683, i32 0, i32 3
  %685 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %684, i32 0, i32 0
  %686 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %685, i32 0, i32 2
  %687 = load i32, i32* %686, align 8
  %688 = load i8*, i8** %5, align 8
  %689 = load i32, i32* %6, align 4
  %690 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %691 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %690, i32 0, i32 3
  %692 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %693 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %692, i32 0, i32 2
  %694 = load i32, i32* %693, align 4
  %695 = call i32 @le16_to_cpu(i32 %694)
  %696 = call i32 @ntfs_collate(%struct.TYPE_31__* %682, i32 %687, i8* %688, i32 %689, i32* %691, i32 %695)
  store i32 %696, i32* %23, align 4
  %697 = load i32, i32* %23, align 4
  %698 = icmp eq i32 %697, -1
  br i1 %698, label %699, label %700

699:                                              ; preds = %681
  br label %715

700:                                              ; preds = %681
  %701 = load i32, i32* %23, align 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %704, label %703

703:                                              ; preds = %700
  br label %668

704:                                              ; preds = %700
  br label %705

705:                                              ; preds = %704
  %706 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %707 = bitcast %struct.TYPE_36__* %706 to i32*
  %708 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %709 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %708, i32 0, i32 1
  %710 = load i32, i32* %709, align 4
  %711 = call i32 @le16_to_cpu(i32 %710)
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds i32, i32* %707, i64 %712
  %714 = bitcast i32* %713 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %714, %struct.TYPE_36__** %16, align 8
  br label %578

715:                                              ; preds = %699, %614
  %716 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %717 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %716, i32 0, i32 0
  %718 = load i32, i32* %717, align 4
  %719 = load i32, i32* @INDEX_ENTRY_NODE, align 4
  %720 = and i32 %718, %719
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %726, label %722

722:                                              ; preds = %715
  %723 = call i32 @ntfs_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %724 = load i32, i32* @ENOENT, align 4
  %725 = sub nsw i32 0, %724
  store i32 %725, i32* %24, align 4
  br label %668

726:                                              ; preds = %715
  %727 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %728 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %727, i32 0, i32 0
  %729 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 4
  %731 = load i32, i32* @NODE_MASK, align 4
  %732 = and i32 %730, %731
  %733 = load i32, i32* @LEAF_NODE, align 4
  %734 = icmp eq i32 %732, %733
  br i1 %734, label %735, label %741

735:                                              ; preds = %726
  %736 = load %struct.super_block*, %struct.super_block** %12, align 8
  %737 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %738 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %737, i32 0, i32 2
  %739 = load i32, i32* %738, align 4
  %740 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %736, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0), i32 %739)
  br label %783

741:                                              ; preds = %726
  %742 = load i32, i32* %8, align 4
  store i32 %742, i32* %9, align 4
  %743 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %744 = bitcast %struct.TYPE_36__* %743 to i32*
  %745 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %746 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %745, i32 0, i32 1
  %747 = load i32, i32* %746, align 4
  %748 = call i32 @le16_to_cpu(i32 %747)
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i32, i32* %744, i64 %749
  %751 = getelementptr inbounds i32, i32* %750, i64 -8
  %752 = call i32 @sle64_to_cpup(i32* %751)
  store i32 %752, i32* %8, align 4
  %753 = load i32, i32* %8, align 4
  %754 = icmp sge i32 %753, 0
  br i1 %754, label %755, label %777

755:                                              ; preds = %741
  %756 = load i32, i32* %9, align 4
  %757 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %758 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %757, i32 0, i32 0
  %759 = load i32, i32* %758, align 8
  %760 = shl i32 %756, %759
  %761 = load i32, i32* @PAGE_SHIFT, align 4
  %762 = ashr i32 %760, %761
  %763 = load i32, i32* %8, align 4
  %764 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %765 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %764, i32 0, i32 0
  %766 = load i32, i32* %765, align 8
  %767 = shl i32 %763, %766
  %768 = load i32, i32* @PAGE_SHIFT, align 4
  %769 = ashr i32 %767, %768
  %770 = icmp eq i32 %762, %769
  br i1 %770, label %771, label %772

771:                                              ; preds = %755
  br label %409

772:                                              ; preds = %755
  %773 = load %struct.page*, %struct.page** %22, align 8
  %774 = call i32 @unlock_page(%struct.page* %773)
  %775 = load %struct.page*, %struct.page** %22, align 8
  %776 = call i32 @ntfs_unmap_page(%struct.page* %775)
  br label %380

777:                                              ; preds = %741
  %778 = load %struct.super_block*, %struct.super_block** %12, align 8
  %779 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %780 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %779, i32 0, i32 2
  %781 = load i32, i32* %780, align 4
  %782 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %778, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %781)
  br label %783

783:                                              ; preds = %777, %735, %647, %601, %558, %528, %493, %467, %452, %436
  %784 = load %struct.page*, %struct.page** %22, align 8
  %785 = call i32 @unlock_page(%struct.page* %784)
  %786 = load %struct.page*, %struct.page** %22, align 8
  %787 = call i32 @ntfs_unmap_page(%struct.page* %786)
  br label %788

788:                                              ; preds = %808, %783, %395, %355, %144, %114
  %789 = load i32, i32* %24, align 4
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %794, label %791

791:                                              ; preds = %788
  %792 = load i32, i32* @EIO, align 4
  %793 = sub nsw i32 0, %792
  store i32 %793, i32* %24, align 4
  br label %794

794:                                              ; preds = %791, %788
  %795 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %796 = icmp ne %struct.TYPE_34__* %795, null
  br i1 %796, label %797, label %800

797:                                              ; preds = %794
  %798 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %799 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_34__* %798)
  br label %800

800:                                              ; preds = %797, %794
  %801 = load %struct.page*, %struct.page** %14, align 8
  %802 = icmp ne %struct.page* %801, null
  br i1 %802, label %803, label %806

803:                                              ; preds = %800
  %804 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %805 = call i32 @unmap_mft_record(%struct.TYPE_32__* %804)
  br label %806

806:                                              ; preds = %803, %800
  %807 = load i32, i32* %24, align 4
  store i32 %807, i32* %4, align 4
  br label %811

808:                                              ; preds = %248, %207
  %809 = load %struct.super_block*, %struct.super_block** %12, align 8
  %810 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %809, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  br label %788

811:                                              ; preds = %806, %280, %96, %79
  %812 = load i32, i32* %4, align 4
  ret i32 %812
}

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @NInoAttr(%struct.TYPE_32__*) #1

declare dso_local i32 @ntfs_is_collation_rule_supported(i32) #1

declare dso_local i32 @ntfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.page* @map_mft_record(%struct.TYPE_32__*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.TYPE_34__* @ntfs_attr_get_search_ctx(%struct.TYPE_32__*, %struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_attr_lookup(i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @ntfs_collate(%struct.TYPE_31__*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @NInoIndexAllocPresent(%struct.TYPE_32__*) #1

declare dso_local i32 @sle64_to_cpup(i32*) #1

declare dso_local %struct.TYPE_39__* @VFS_I(%struct.TYPE_32__*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_34__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_32__*) #1

declare dso_local %struct.page* @ntfs_map_page(%struct.address_space*, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @ntfs_is_indx_record(i32) #1

declare dso_local i32 @sle64_to_cpu(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @ntfs_unmap_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
