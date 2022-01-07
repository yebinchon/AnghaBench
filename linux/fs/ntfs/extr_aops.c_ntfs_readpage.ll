; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_aops.c_ntfs_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_aops.c_ntfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Read outside i_size - truncated?\00", align 1
@AT_INDEX_ALLOCATION = common dso_local global i64 0, align 8
@AT_DATA = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @ntfs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %144, %2
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @PageLocked(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call i32 @i_size_read(%struct.inode* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = icmp sge i32 %32, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %16
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = call i32 @zero_user(%struct.page* %44, i32 0, i32 %45)
  %47 = call i32 @ntfs_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %255

48:                                               ; preds = %16
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i64 @PageUptodate(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  store i32 0, i32* %3, align 4
  br label %262

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call %struct.TYPE_24__* @NTFS_I(%struct.inode* %56)
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %8, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AT_INDEX_ALLOCATION, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %55
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %65 = call i64 @NInoEncrypted(%struct.TYPE_24__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AT_DATA, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load i32, i32* @EACCES, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  br label %258

77:                                               ; preds = %63
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %79 = call i32 @NInoNonResident(%struct.TYPE_24__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %83 = call i64 @NInoCompressed(%struct.TYPE_24__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AT_DATA, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load %struct.page*, %struct.page** %5, align 8
  %98 = call i32 @ntfs_read_compressed_block(%struct.page* %97)
  store i32 %98, i32* %3, align 4
  br label %262

99:                                               ; preds = %81, %77
  br label %100

100:                                              ; preds = %99, %55
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %102 = call i32 @NInoNonResident(%struct.TYPE_24__* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.page*, %struct.page** %5, align 8
  %106 = call i32 @ntfs_read_block(%struct.page* %105)
  store i32 %106, i32* %3, align 4
  br label %262

107:                                              ; preds = %100
  %108 = load %struct.page*, %struct.page** %5, align 8
  %109 = getelementptr inbounds %struct.page, %struct.page* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.page*, %struct.page** %5, align 8
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = call i32 @zero_user(%struct.page* %116, i32 0, i32 %117)
  br label %255

119:                                              ; preds = %107
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %121 = call i32 @NInoAttr(%struct.TYPE_24__* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %124, %struct.TYPE_24__** %9, align 8
  br label %130

125:                                              ; preds = %119
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %128, align 8
  store %struct.TYPE_24__* %129, %struct.TYPE_24__** %9, align 8
  br label %130

130:                                              ; preds = %125, %123
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %132 = call i32* @map_mft_record(%struct.TYPE_24__* %131)
  store i32* %132, i32** %12, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = call i64 @IS_ERR(i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @PTR_ERR(i32* %137)
  store i32 %138, i32* %15, align 4
  br label %258

139:                                              ; preds = %130
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %141 = call i32 @NInoNonResident(%struct.TYPE_24__* %140)
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %146 = call i32 @unmap_mft_record(%struct.TYPE_24__* %145)
  br label %16

147:                                              ; preds = %139
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %149 = load i32*, i32** %12, align 8
  %150 = call %struct.TYPE_25__* @ntfs_attr_get_search_ctx(%struct.TYPE_24__* %148, i32* %149)
  store %struct.TYPE_25__* %150, %struct.TYPE_25__** %11, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %152 = icmp ne %struct.TYPE_25__* %151, null
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %147
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %15, align 4
  br label %252

160:                                              ; preds = %147
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CASE_SENSITIVE, align 4
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %172 = call i32 @ntfs_attr_lookup(i64 %163, i32 %166, i32 %169, i32 %170, i32 0, i32* null, i32 0, %struct.TYPE_25__* %171)
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %160
  br label %249

177:                                              ; preds = %160
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le32_to_cpu(i32 %184)
  store i32 %185, i32* %14, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 3
  %188 = load i64, i64* %13, align 8
  %189 = call i32 @read_lock_irqsave(i32* %187, i64 %188)
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %190, %193
  %195 = zext i1 %194 to i32
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %177
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %198, %177
  %203 = load %struct.inode*, %struct.inode** %7, align 8
  %204 = call i32 @i_size_read(%struct.inode* %203)
  store i32 %204, i32* %6, align 4
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 3
  %207 = load i64, i64* %13, align 8
  %208 = call i32 @read_unlock_irqrestore(i32* %206, i64 %207)
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp sgt i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = call i64 @unlikely(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %202
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %215, %202
  %218 = load %struct.page*, %struct.page** %5, align 8
  %219 = call i32* @kmap_atomic(%struct.page* %218)
  store i32* %219, i32** %10, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %222, align 8
  %224 = bitcast %struct.TYPE_23__* %223 to i32*
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @le16_to_cpu(i32 %231)
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %224, i64 %233
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @memcpy(i32* %220, i32* %234, i32 %235)
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* @PAGE_SIZE, align 4
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 %241, %242
  %244 = call i32 @memset(i32* %240, i32 0, i32 %243)
  %245 = load %struct.page*, %struct.page** %5, align 8
  %246 = call i32 @flush_dcache_page(%struct.page* %245)
  %247 = load i32*, i32** %10, align 8
  %248 = call i32 @kunmap_atomic(i32* %247)
  br label %249

249:                                              ; preds = %217, %176
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %251 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_25__* %250)
  br label %252

252:                                              ; preds = %249, %157
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %254 = call i32 @unmap_mft_record(%struct.TYPE_24__* %253)
  br label %255

255:                                              ; preds = %252, %115, %43
  %256 = load %struct.page*, %struct.page** %5, align 8
  %257 = call i32 @SetPageUptodate(%struct.page* %256)
  br label %258

258:                                              ; preds = %255, %136, %67
  %259 = load %struct.page*, %struct.page** %5, align 8
  %260 = call i32 @unlock_page(%struct.page* %259)
  %261 = load i32, i32* %15, align 4
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %258, %104, %85, %52
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local %struct.TYPE_24__* @NTFS_I(%struct.inode*) #1

declare dso_local i64 @NInoEncrypted(%struct.TYPE_24__*) #1

declare dso_local i32 @NInoNonResident(%struct.TYPE_24__*) #1

declare dso_local i64 @NInoCompressed(%struct.TYPE_24__*) #1

declare dso_local i32 @ntfs_read_compressed_block(%struct.page*) #1

declare dso_local i32 @ntfs_read_block(%struct.page*) #1

declare dso_local i32 @NInoAttr(%struct.TYPE_24__*) #1

declare dso_local i32* @map_mft_record(%struct.TYPE_24__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @ntfs_attr_get_search_ctx(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ntfs_attr_lookup(i64, i32, i32, i32, i32, i32*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_25__*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
