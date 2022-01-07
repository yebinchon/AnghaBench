; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_addname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_addname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, i32, i64, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.xfs_inode*, %struct.xfs_trans* }
%struct.TYPE_7__ = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (%struct.xfs_dir2_leaf*, %struct.xfs_dir3_icleaf_hdr*)*, i64* (%struct.xfs_dir2_data_entry*)*, i32 (%struct.xfs_dir2_data_entry*, i32)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)* }
%struct.xfs_dir2_leaf = type { i32 }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32 }
%struct.xfs_dir2_data_entry = type { i32, i32, i32 }
%struct.xfs_dir2_data_free = type { i64, i64 }
%struct.xfs_dir2_leaf_entry = type { i8*, i8* }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { %struct.xfs_dir2_leaf* }
%struct.xfs_dir2_data_hdr = type opaque
%struct.xfs_dir2_data_unused = type { i32 }
%struct.xfs_dir2_leaf_tail = type { i8* }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@NULLDATAOFF = common dso_local global i32 0, align 4
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_addname(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %5 = alloca %struct.xfs_trans*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca %struct.xfs_dir2_leaf*, align 8
  %11 = alloca %struct.xfs_inode*, align 8
  %12 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %13 = alloca %struct.xfs_dir2_data_entry*, align 8
  %14 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %15 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %16 = alloca %struct.xfs_dir2_data_unused*, align 8
  %17 = alloca %struct.xfs_dir2_leaf_tail*, align 8
  %18 = alloca %struct.xfs_dir2_data_free*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %33 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %34 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %33, i32 0, i32 9
  %35 = load %struct.xfs_trans*, %struct.xfs_trans** %34, align 8
  store %struct.xfs_trans* %35, %struct.xfs_trans** %5, align 8
  %36 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %37 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %36, i32 0, i32 8
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %37, align 8
  store %struct.xfs_inode* %38, %struct.xfs_inode** %11, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %28, align 4
  %39 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %40 = call i32 @trace_xfs_dir2_leaf_addname(%struct.xfs_da_args* %39)
  %41 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %42 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %43 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %44 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xfs_dir3_leaf_read(%struct.xfs_trans* %41, %struct.xfs_inode* %42, i32 %47, i32 -1, %struct.xfs_buf** %9)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %2, align 4
  br label %637

53:                                               ; preds = %1
  %54 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %56 = call i32 @xfs_dir2_leaf_search_hash(%struct.xfs_da_args* %54, %struct.xfs_buf* %55)
  store i32 %56, i32* %24, align 4
  %57 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %58 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %57, i32 0, i32 0
  %59 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %58, align 8
  store %struct.xfs_dir2_leaf* %59, %struct.xfs_dir2_leaf** %10, align 8
  %60 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %61 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %60, i32 0, i32 3
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %10, align 8
  %64 = call %struct.xfs_dir2_leaf_tail* @xfs_dir2_leaf_tail_p(%struct.TYPE_7__* %62, %struct.xfs_dir2_leaf* %63)
  store %struct.xfs_dir2_leaf_tail* %64, %struct.xfs_dir2_leaf_tail** %17, align 8
  %65 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %66 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  %69 = load %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)** %68, align 8
  %70 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %10, align 8
  %71 = call %struct.xfs_dir2_leaf_entry* %69(%struct.xfs_dir2_leaf* %70)
  store %struct.xfs_dir2_leaf_entry* %71, %struct.xfs_dir2_leaf_entry** %15, align 8
  %72 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %73 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)** %75, align 8
  %77 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %10, align 8
  %78 = call i32 %76(%struct.xfs_dir3_icleaf_hdr* %4, %struct.xfs_dir2_leaf* %77)
  %79 = load %struct.xfs_dir2_leaf_tail*, %struct.xfs_dir2_leaf_tail** %17, align 8
  %80 = call i64* @xfs_dir2_leaf_bests_p(%struct.xfs_dir2_leaf_tail* %79)
  store i64* %80, i64** %6, align 8
  %81 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %82 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %87 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %85(i32 %88)
  store i32 %89, i32* %25, align 4
  store i32 -1, i32* %32, align 4
  %90 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %15, align 8
  %91 = load i32, i32* %24, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %90, i64 %92
  store %struct.xfs_dir2_leaf_entry* %93, %struct.xfs_dir2_leaf_entry** %14, align 8
  br label %94

94:                                               ; preds = %156, %53
  %95 = load i32, i32* %24, align 4
  %96 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %4, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %101 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @be32_to_cpu(i8* %102)
  %104 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %105 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br label %108

108:                                              ; preds = %99, %94
  %109 = phi i1 [ false, %94 ], [ %107, %99 ]
  br i1 %109, label %110, label %161

110:                                              ; preds = %108
  %111 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %112 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @be32_to_cpu(i8* %113)
  %115 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %156

118:                                              ; preds = %110
  %119 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %120 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %119, i32 0, i32 3
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %123 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @be32_to_cpu(i8* %124)
  %126 = call i32 @xfs_dir2_dataptr_to_db(%struct.TYPE_7__* %121, i32 %125)
  store i32 %126, i32* %23, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load %struct.xfs_dir2_leaf_tail*, %struct.xfs_dir2_leaf_tail** %17, align 8
  %129 = getelementptr inbounds %struct.xfs_dir2_leaf_tail, %struct.xfs_dir2_leaf_tail* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @be32_to_cpu(i8* %130)
  %132 = icmp slt i32 %127, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @ASSERT(i32 %133)
  %135 = load i64*, i64** %6, align 8
  %136 = load i32, i32* %23, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @NULLDATAOFF, align 4
  %141 = call i64 @cpu_to_be16(i32 %140)
  %142 = icmp ne i64 %139, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @ASSERT(i32 %143)
  %145 = load i64*, i64** %6, align 8
  %146 = load i32, i32* %23, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @be16_to_cpu(i64 %149)
  %151 = load i32, i32* %25, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %118
  %154 = load i32, i32* %23, align 4
  store i32 %154, i32* %32, align 4
  br label %161

155:                                              ; preds = %118
  br label %156

156:                                              ; preds = %155, %117
  %157 = load i32, i32* %24, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %24, align 4
  %159 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %160 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %159, i32 1
  store %struct.xfs_dir2_leaf_entry* %160, %struct.xfs_dir2_leaf_entry** %14, align 8
  br label %94

161:                                              ; preds = %153, %108
  %162 = load i32, i32* %32, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %203

164:                                              ; preds = %161
  store i32 0, i32* %23, align 4
  br label %165

165:                                              ; preds = %199, %164
  %166 = load i32, i32* %23, align 4
  %167 = load %struct.xfs_dir2_leaf_tail*, %struct.xfs_dir2_leaf_tail** %17, align 8
  %168 = getelementptr inbounds %struct.xfs_dir2_leaf_tail, %struct.xfs_dir2_leaf_tail* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @be32_to_cpu(i8* %169)
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %165
  %173 = load i64*, i64** %6, align 8
  %174 = load i32, i32* %23, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @NULLDATAOFF, align 4
  %179 = call i64 @cpu_to_be16(i32 %178)
  %180 = icmp eq i64 %177, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %172
  %182 = load i32, i32* %32, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* %23, align 4
  store i32 %185, i32* %32, align 4
  br label %198

186:                                              ; preds = %181, %172
  %187 = load i64*, i64** %6, align 8
  %188 = load i32, i32* %23, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @be16_to_cpu(i64 %191)
  %193 = load i32, i32* %25, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = load i32, i32* %23, align 4
  store i32 %196, i32* %32, align 4
  br label %202

197:                                              ; preds = %186
  br label %198

198:                                              ; preds = %197, %184
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %23, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %23, align 4
  br label %165

202:                                              ; preds = %195, %165
  br label %203

203:                                              ; preds = %202, %161
  store i32 0, i32* %29, align 4
  %204 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %4, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %29, align 4
  %209 = sext i32 %208 to i64
  %210 = add i64 %209, 4
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %29, align 4
  br label %212

212:                                              ; preds = %207, %203
  %213 = load i32, i32* %32, align 4
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i32, i32* %29, align 4
  %217 = sext i32 %216 to i64
  %218 = add i64 %217, 4
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %29, align 4
  br label %220

220:                                              ; preds = %215, %212
  %221 = load i32, i32* %32, align 4
  %222 = icmp ne i32 %221, -1
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load i64*, i64** %6, align 8
  %225 = load i32, i32* %32, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* @NULLDATAOFF, align 4
  %230 = call i64 @cpu_to_be16(i32 %229)
  %231 = icmp eq i64 %228, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  store i32 -1, i32* %32, align 4
  br label %233

233:                                              ; preds = %232, %223, %220
  %234 = load i64*, i64** %6, align 8
  %235 = bitcast i64* %234 to i8*
  %236 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %15, align 8
  %237 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %4, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %236, i64 %239
  %241 = bitcast %struct.xfs_dir2_leaf_entry* %240 to i8*
  %242 = ptrtoint i8* %235 to i64
  %243 = ptrtoint i8* %241 to i64
  %244 = sub i64 %242, %243
  %245 = load i32, i32* %29, align 4
  %246 = sext i32 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %233
  %249 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %4, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  store i32 1, i32* %19, align 4
  br label %299

253:                                              ; preds = %248, %233
  %254 = load i64*, i64** %6, align 8
  %255 = bitcast i64* %254 to i8*
  %256 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %15, align 8
  %257 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %4, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %256, i64 %259
  %261 = bitcast %struct.xfs_dir2_leaf_entry* %260 to i8*
  %262 = ptrtoint i8* %255 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = load i32, i32* %29, align 4
  %266 = sext i32 %265 to i64
  %267 = icmp slt i64 %264, %266
  br i1 %267, label %268, label %297

268:                                              ; preds = %253
  %269 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %270 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %268
  %276 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %277 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %275, %268
  %281 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %282 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %283 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %281, %struct.xfs_buf* %282)
  %284 = load i32, i32* @ENOSPC, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %2, align 4
  br label %637

286:                                              ; preds = %275
  %287 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %288 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %289 = call i32 @xfs_dir2_leaf_to_node(%struct.xfs_da_args* %287, %struct.xfs_buf* %288)
  store i32 %289, i32* %20, align 4
  %290 = load i32, i32* %20, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %286
  %293 = load i32, i32* %20, align 4
  store i32 %293, i32* %2, align 4
  br label %637

294:                                              ; preds = %286
  %295 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %296 = call i32 @xfs_dir2_node_addname(%struct.xfs_da_args* %295)
  store i32 %296, i32* %2, align 4
  br label %637

297:                                              ; preds = %253
  store i32 0, i32* %19, align 4
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298, %252
  %300 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %301 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %299
  %307 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %308 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %309 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %307, %struct.xfs_buf* %308)
  %310 = load i32, i32* %32, align 4
  %311 = icmp eq i32 %310, -1
  br i1 %311, label %312, label %315

312:                                              ; preds = %306
  %313 = load i32, i32* @ENOSPC, align 4
  %314 = sub nsw i32 0, %313
  br label %316

315:                                              ; preds = %306
  br label %316

316:                                              ; preds = %315, %312
  %317 = phi i32 [ %314, %312 ], [ 0, %315 ]
  store i32 %317, i32* %2, align 4
  br label %637

318:                                              ; preds = %299
  %319 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %320 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %318
  %324 = load i32, i32* %32, align 4
  %325 = icmp eq i32 %324, -1
  br i1 %325, label %326, label %332

326:                                              ; preds = %323
  %327 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %328 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %329 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %327, %struct.xfs_buf* %328)
  %330 = load i32, i32* @ENOSPC, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %2, align 4
  br label %637

332:                                              ; preds = %323, %318
  %333 = load i32, i32* %19, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %332
  %336 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %15, align 8
  %337 = call i32 @xfs_dir3_leaf_compact_x1(%struct.xfs_dir3_icleaf_hdr* %4, %struct.xfs_dir2_leaf_entry* %336, i32* %24, i32* %28, i32* %22, i32* %26, i32* %27)
  br label %346

338:                                              ; preds = %332
  %339 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %4, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %4, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  br label %345

345:                                              ; preds = %342, %338
  br label %346

346:                                              ; preds = %345, %335
  %347 = load i32, i32* %32, align 4
  %348 = icmp eq i32 %347, -1
  br i1 %348, label %349, label %432

349:                                              ; preds = %346
  %350 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %351 = load i32, i32* @XFS_DIR2_DATA_SPACE, align 4
  %352 = call i32 @xfs_dir2_grow_inode(%struct.xfs_da_args* %350, i32 %351, i32* %32)
  store i32 %352, i32* %20, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %349
  %355 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %356 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %357 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %355, %struct.xfs_buf* %356)
  %358 = load i32, i32* %20, align 4
  store i32 %358, i32* %2, align 4
  br label %637

359:                                              ; preds = %349
  %360 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %361 = load i32, i32* %32, align 4
  %362 = call i32 @xfs_dir3_data_init(%struct.xfs_da_args* %360, i32 %361, %struct.xfs_buf** %8)
  store i32 %362, i32* %20, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %359
  %365 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %366 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %367 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %365, %struct.xfs_buf* %366)
  %368 = load i32, i32* %20, align 4
  store i32 %368, i32* %2, align 4
  br label %637

369:                                              ; preds = %359
  %370 = load i32, i32* %32, align 4
  %371 = load %struct.xfs_dir2_leaf_tail*, %struct.xfs_dir2_leaf_tail** %17, align 8
  %372 = getelementptr inbounds %struct.xfs_dir2_leaf_tail, %struct.xfs_dir2_leaf_tail* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @be32_to_cpu(i8* %373)
  %375 = icmp sge i32 %370, %374
  br i1 %375, label %376, label %405

376:                                              ; preds = %369
  %377 = load i64*, i64** %6, align 8
  %378 = getelementptr inbounds i64, i64* %377, i32 -1
  store i64* %378, i64** %6, align 8
  %379 = load i64*, i64** %6, align 8
  %380 = getelementptr inbounds i64, i64* %379, i64 0
  %381 = load i64*, i64** %6, align 8
  %382 = getelementptr inbounds i64, i64* %381, i64 1
  %383 = load %struct.xfs_dir2_leaf_tail*, %struct.xfs_dir2_leaf_tail** %17, align 8
  %384 = getelementptr inbounds %struct.xfs_dir2_leaf_tail, %struct.xfs_dir2_leaf_tail* %383, i32 0, i32 0
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 @be32_to_cpu(i8* %385)
  %387 = sext i32 %386 to i64
  %388 = mul i64 %387, 8
  %389 = trunc i64 %388 to i32
  %390 = call i32 @memmove(i64* %380, i64* %382, i32 %389)
  %391 = load %struct.xfs_dir2_leaf_tail*, %struct.xfs_dir2_leaf_tail** %17, align 8
  %392 = getelementptr inbounds %struct.xfs_dir2_leaf_tail, %struct.xfs_dir2_leaf_tail* %391, i32 0, i32 0
  %393 = call i32 @be32_add_cpu(i8** %392, i32 1)
  %394 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %395 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %396 = call i32 @xfs_dir3_leaf_log_tail(%struct.xfs_da_args* %394, %struct.xfs_buf* %395)
  %397 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %398 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %399 = load %struct.xfs_dir2_leaf_tail*, %struct.xfs_dir2_leaf_tail** %17, align 8
  %400 = getelementptr inbounds %struct.xfs_dir2_leaf_tail, %struct.xfs_dir2_leaf_tail* %399, i32 0, i32 0
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @be32_to_cpu(i8* %401)
  %403 = sub nsw i32 %402, 1
  %404 = call i32 @xfs_dir3_leaf_log_bests(%struct.xfs_da_args* %397, %struct.xfs_buf* %398, i32 0, i32 %403)
  br label %411

405:                                              ; preds = %369
  %406 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %407 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %408 = load i32, i32* %32, align 4
  %409 = load i32, i32* %32, align 4
  %410 = call i32 @xfs_dir3_leaf_log_bests(%struct.xfs_da_args* %406, %struct.xfs_buf* %407, i32 %408, i32 %409)
  br label %411

411:                                              ; preds = %405, %376
  %412 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %413 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %412, i32 0, i32 0
  %414 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %413, align 8
  %415 = bitcast %struct.xfs_dir2_leaf* %414 to %struct.xfs_dir2_data_hdr*
  store %struct.xfs_dir2_data_hdr* %415, %struct.xfs_dir2_data_hdr** %12, align 8
  %416 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %417 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %416, i32 0, i32 0
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 4
  %420 = load %struct.xfs_dir2_data_free* (%struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_leaf*)** %419, align 8
  %421 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %12, align 8
  %422 = bitcast %struct.xfs_dir2_data_hdr* %421 to %struct.xfs_dir2_leaf*
  %423 = call %struct.xfs_dir2_data_free* %420(%struct.xfs_dir2_leaf* %422)
  store %struct.xfs_dir2_data_free* %423, %struct.xfs_dir2_data_free** %18, align 8
  %424 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %18, align 8
  %425 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %424, i64 0
  %426 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i64*, i64** %6, align 8
  %429 = load i32, i32* %32, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i64, i64* %428, i64 %430
  store i64 %427, i64* %431, align 8
  store i32 1, i32* %21, align 4
  br label %461

432:                                              ; preds = %346
  %433 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %434 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %435 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %436 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %435, i32 0, i32 3
  %437 = load %struct.TYPE_7__*, %struct.TYPE_7__** %436, align 8
  %438 = load i32, i32* %32, align 4
  %439 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_7__* %437, i32 %438)
  %440 = call i32 @xfs_dir3_data_read(%struct.xfs_trans* %433, %struct.xfs_inode* %434, i32 %439, i32 -1, %struct.xfs_buf** %8)
  store i32 %440, i32* %20, align 4
  %441 = load i32, i32* %20, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %448

443:                                              ; preds = %432
  %444 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %445 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %446 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %444, %struct.xfs_buf* %445)
  %447 = load i32, i32* %20, align 4
  store i32 %447, i32* %2, align 4
  br label %637

448:                                              ; preds = %432
  %449 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %450 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %449, i32 0, i32 0
  %451 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %450, align 8
  %452 = bitcast %struct.xfs_dir2_leaf* %451 to %struct.xfs_dir2_data_hdr*
  store %struct.xfs_dir2_data_hdr* %452, %struct.xfs_dir2_data_hdr** %12, align 8
  %453 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %454 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %453, i32 0, i32 0
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 4
  %457 = load %struct.xfs_dir2_data_free* (%struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_leaf*)** %456, align 8
  %458 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %12, align 8
  %459 = bitcast %struct.xfs_dir2_data_hdr* %458 to %struct.xfs_dir2_leaf*
  %460 = call %struct.xfs_dir2_data_free* %457(%struct.xfs_dir2_leaf* %459)
  store %struct.xfs_dir2_data_free* %460, %struct.xfs_dir2_data_free** %18, align 8
  store i32 0, i32* %21, align 4
  br label %461

461:                                              ; preds = %448, %411
  %462 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %12, align 8
  %463 = bitcast %struct.xfs_dir2_data_hdr* %462 to i8*
  %464 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %18, align 8
  %465 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %464, i64 0
  %466 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = call i32 @be16_to_cpu(i64 %467)
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8, i8* %463, i64 %469
  %471 = bitcast i8* %470 to %struct.xfs_dir2_data_unused*
  store %struct.xfs_dir2_data_unused* %471, %struct.xfs_dir2_data_unused** %16, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %472 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %473 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %474 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %16, align 8
  %475 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %16, align 8
  %476 = bitcast %struct.xfs_dir2_data_unused* %475 to i8*
  %477 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %12, align 8
  %478 = bitcast %struct.xfs_dir2_data_hdr* %477 to i8*
  %479 = ptrtoint i8* %476 to i64
  %480 = ptrtoint i8* %478 to i64
  %481 = sub i64 %479, %480
  %482 = trunc i64 %481 to i32
  %483 = load i32, i32* %25, align 4
  %484 = call i32 @xfs_dir2_data_use_free(%struct.xfs_da_args* %472, %struct.xfs_buf* %473, %struct.xfs_dir2_data_unused* %474, i32 %482, i32 %483, i32* %30, i32* %31)
  store i32 %484, i32* %20, align 4
  %485 = load i32, i32* %20, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %461
  %488 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %489 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %490 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %488, %struct.xfs_buf* %489)
  %491 = load i32, i32* %20, align 4
  store i32 %491, i32* %2, align 4
  br label %637

492:                                              ; preds = %461
  %493 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %16, align 8
  %494 = bitcast %struct.xfs_dir2_data_unused* %493 to %struct.xfs_dir2_data_entry*
  store %struct.xfs_dir2_data_entry* %494, %struct.xfs_dir2_data_entry** %13, align 8
  %495 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %496 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %495, i32 0, i32 7
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @cpu_to_be64(i32 %497)
  %499 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %13, align 8
  %500 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %499, i32 0, i32 2
  store i32 %498, i32* %500, align 4
  %501 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %502 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %501, i32 0, i32 6
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %13, align 8
  %505 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %504, i32 0, i32 0
  store i32 %503, i32* %505, align 4
  %506 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %13, align 8
  %507 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %510 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %509, i32 0, i32 5
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %13, align 8
  %513 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @memcpy(i32 %508, i32 %511, i32 %514)
  %516 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %517 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %516, i32 0, i32 0
  %518 = load %struct.TYPE_6__*, %struct.TYPE_6__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %518, i32 0, i32 3
  %520 = load i32 (%struct.xfs_dir2_data_entry*, i32)*, i32 (%struct.xfs_dir2_data_entry*, i32)** %519, align 8
  %521 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %13, align 8
  %522 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %523 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %522, i32 0, i32 4
  %524 = load i32, i32* %523, align 8
  %525 = call i32 %520(%struct.xfs_dir2_data_entry* %521, i32 %524)
  %526 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %527 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %526, i32 0, i32 0
  %528 = load %struct.TYPE_6__*, %struct.TYPE_6__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 2
  %530 = load i64* (%struct.xfs_dir2_data_entry*)*, i64* (%struct.xfs_dir2_data_entry*)** %529, align 8
  %531 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %13, align 8
  %532 = call i64* %530(%struct.xfs_dir2_data_entry* %531)
  store i64* %532, i64** %7, align 8
  %533 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %13, align 8
  %534 = bitcast %struct.xfs_dir2_data_entry* %533 to i8*
  %535 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %12, align 8
  %536 = bitcast %struct.xfs_dir2_data_hdr* %535 to i8*
  %537 = ptrtoint i8* %534 to i64
  %538 = ptrtoint i8* %536 to i64
  %539 = sub i64 %537, %538
  %540 = trunc i64 %539 to i32
  %541 = call i64 @cpu_to_be16(i32 %540)
  %542 = load i64*, i64** %7, align 8
  store i64 %541, i64* %542, align 8
  %543 = load i32, i32* %31, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %550

545:                                              ; preds = %492
  %546 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %547 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %12, align 8
  %548 = bitcast %struct.xfs_dir2_data_hdr* %547 to %struct.xfs_dir2_leaf*
  %549 = call i32 @xfs_dir2_data_freescan(%struct.xfs_inode* %546, %struct.xfs_dir2_leaf* %548, i32* %30)
  br label %550

550:                                              ; preds = %545, %492
  %551 = load i32, i32* %30, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %557

553:                                              ; preds = %550
  %554 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %555 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %556 = call i32 @xfs_dir2_data_log_header(%struct.xfs_da_args* %554, %struct.xfs_buf* %555)
  br label %557

557:                                              ; preds = %553, %550
  %558 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %559 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %560 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %13, align 8
  %561 = call i32 @xfs_dir2_data_log_entry(%struct.xfs_da_args* %558, %struct.xfs_buf* %559, %struct.xfs_dir2_data_entry* %560)
  %562 = load i64*, i64** %6, align 8
  %563 = load i32, i32* %32, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i64, i64* %562, i64 %564
  %566 = load i64, i64* %565, align 8
  %567 = call i32 @be16_to_cpu(i64 %566)
  %568 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %18, align 8
  %569 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %568, i64 0
  %570 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = call i32 @be16_to_cpu(i64 %571)
  %573 = icmp ne i32 %567, %572
  br i1 %573, label %574, label %592

574:                                              ; preds = %557
  %575 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %18, align 8
  %576 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %575, i64 0
  %577 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %576, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = load i64*, i64** %6, align 8
  %580 = load i32, i32* %32, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i64, i64* %579, i64 %581
  store i64 %578, i64* %582, align 8
  %583 = load i32, i32* %21, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %591, label %585

585:                                              ; preds = %574
  %586 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %587 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %588 = load i32, i32* %32, align 4
  %589 = load i32, i32* %32, align 4
  %590 = call i32 @xfs_dir3_leaf_log_bests(%struct.xfs_da_args* %586, %struct.xfs_buf* %587, i32 %588, i32 %589)
  br label %591

591:                                              ; preds = %585, %574
  br label %592

592:                                              ; preds = %591, %557
  %593 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %15, align 8
  %594 = load i32, i32* %24, align 4
  %595 = load i32, i32* %19, align 4
  %596 = load i32, i32* %28, align 4
  %597 = load i32, i32* %22, align 4
  %598 = call %struct.xfs_dir2_leaf_entry* @xfs_dir3_leaf_find_entry(%struct.xfs_dir3_icleaf_hdr* %4, %struct.xfs_dir2_leaf_entry* %593, i32 %594, i32 %595, i32 %596, i32 %597, i32* %26, i32* %27)
  store %struct.xfs_dir2_leaf_entry* %598, %struct.xfs_dir2_leaf_entry** %14, align 8
  %599 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %600 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 8
  %602 = call i8* @cpu_to_be32(i32 %601)
  %603 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %604 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %603, i32 0, i32 1
  store i8* %602, i8** %604, align 8
  %605 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %606 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %605, i32 0, i32 3
  %607 = load %struct.TYPE_7__*, %struct.TYPE_7__** %606, align 8
  %608 = load i32, i32* %32, align 4
  %609 = load i64*, i64** %7, align 8
  %610 = load i64, i64* %609, align 8
  %611 = call i32 @be16_to_cpu(i64 %610)
  %612 = call i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_7__* %607, i32 %608, i32 %611)
  %613 = call i8* @cpu_to_be32(i32 %612)
  %614 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %615 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %614, i32 0, i32 0
  store i8* %613, i8** %615, align 8
  %616 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %617 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %616, i32 0, i32 0
  %618 = load %struct.TYPE_6__*, %struct.TYPE_6__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %618, i32 0, i32 1
  %620 = load i32 (%struct.xfs_dir2_leaf*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (%struct.xfs_dir2_leaf*, %struct.xfs_dir3_icleaf_hdr*)** %619, align 8
  %621 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %10, align 8
  %622 = call i32 %620(%struct.xfs_dir2_leaf* %621, %struct.xfs_dir3_icleaf_hdr* %4)
  %623 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %624 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %625 = call i32 @xfs_dir3_leaf_log_header(%struct.xfs_da_args* %623, %struct.xfs_buf* %624)
  %626 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %627 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %628 = load i32, i32* %26, align 4
  %629 = load i32, i32* %27, align 4
  %630 = call i32 @xfs_dir3_leaf_log_ents(%struct.xfs_da_args* %626, %struct.xfs_buf* %627, i32 %628, i32 %629)
  %631 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %632 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %633 = call i32 @xfs_dir3_leaf_check(%struct.xfs_inode* %631, %struct.xfs_buf* %632)
  %634 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %635 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %636 = call i32 @xfs_dir3_data_check(%struct.xfs_inode* %634, %struct.xfs_buf* %635)
  store i32 0, i32* %2, align 4
  br label %637

637:                                              ; preds = %592, %487, %443, %364, %354, %326, %316, %294, %292, %280, %51
  %638 = load i32, i32* %2, align 4
  ret i32 %638
}

declare dso_local i32 @trace_xfs_dir2_leaf_addname(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir3_leaf_read(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir2_leaf_search_hash(%struct.xfs_da_args*, %struct.xfs_buf*) #1

declare dso_local %struct.xfs_dir2_leaf_tail* @xfs_dir2_leaf_tail_p(%struct.TYPE_7__*, %struct.xfs_dir2_leaf*) #1

declare dso_local i64* @xfs_dir2_leaf_bests_p(%struct.xfs_dir2_leaf_tail*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_db(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_leaf_to_node(%struct.xfs_da_args*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_node_addname(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir3_leaf_compact_x1(%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_grow_inode(%struct.xfs_da_args*, i32, i32*) #1

declare dso_local i32 @xfs_dir3_data_init(%struct.xfs_da_args*, i32, %struct.xfs_buf**) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @be32_add_cpu(i8**, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_tail(%struct.xfs_da_args*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_bests(%struct.xfs_da_args*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir3_data_read(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir2_db_to_da(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xfs_dir2_data_use_free(%struct.xfs_da_args*, %struct.xfs_buf*, %struct.xfs_dir2_data_unused*, i32, i32, i32*, i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.xfs_inode*, %struct.xfs_dir2_leaf*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.xfs_da_args*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_data_log_entry(%struct.xfs_da_args*, %struct.xfs_buf*, %struct.xfs_dir2_data_entry*) #1

declare dso_local %struct.xfs_dir2_leaf_entry* @xfs_dir3_leaf_find_entry(%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.xfs_da_args*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_ents(%struct.xfs_da_args*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.xfs_inode*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.xfs_inode*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
