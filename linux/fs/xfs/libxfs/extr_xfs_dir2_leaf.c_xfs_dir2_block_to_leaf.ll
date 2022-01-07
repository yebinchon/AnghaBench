; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_block_to_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_block_to_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_35__*, i32*, %struct.TYPE_37__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32 (%struct.TYPE_39__*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.TYPE_39__*)*, %struct.xfs_dir2_leaf_entry* (%struct.TYPE_39__*)*, %struct.xfs_dir2_data_free* (%struct.TYPE_39__*)* }
%struct.TYPE_39__ = type { i64 }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_dir2_data_free = type { i32 }
%struct.xfs_buf = type { i32*, %struct.TYPE_39__* }
%struct.TYPE_40__ = type { i32, i32 }
%struct.TYPE_38__ = type { i64 }

@XFS_DIR2_LEAF_OFFSET = common dso_local global i32 0, align 4
@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4
@xfs_dir3_data_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_DATA_BUF = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_to_leaf(%struct.TYPE_41__* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_41__*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_buf*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_39__*, align 8
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.xfs_dir2_data_free*, align 8
  %21 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %22 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  %23 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %24 = call i32 @trace_xfs_dir2_block_to_leaf(%struct.TYPE_41__* %23)
  %25 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  store %struct.TYPE_37__* %27, %struct.TYPE_37__** %11, align 8
  %28 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %19, align 8
  %31 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %32 = call i32 @xfs_da_grow_inode(%struct.TYPE_41__* %31, i32* %7)
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %3, align 4
  br label %221

36:                                               ; preds = %2
  %37 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @xfs_dir2_da_to_db(%struct.TYPE_35__* %39, i32 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %44, align 8
  %46 = load i32, i32* @XFS_DIR2_LEAF_OFFSET, align 4
  %47 = call i64 @xfs_dir2_byte_to_db(%struct.TYPE_35__* %45, i32 %46)
  %48 = icmp eq i64 %42, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %54 = call i32 @xfs_dir3_leaf_get_buf(%struct.TYPE_41__* %51, i64 %52, %struct.xfs_buf** %13, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  br label %221

59:                                               ; preds = %36
  %60 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %61 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %60, i32 0, i32 1
  %62 = load %struct.TYPE_39__*, %struct.TYPE_39__** %61, align 8
  store %struct.TYPE_39__* %62, %struct.TYPE_39__** %15, align 8
  %63 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %64 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %63, i32 0, i32 1
  %65 = load %struct.TYPE_39__*, %struct.TYPE_39__** %64, align 8
  store %struct.TYPE_39__* %65, %struct.TYPE_39__** %8, align 8
  %66 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %67 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %68 = call i32 @xfs_dir3_data_check(%struct.TYPE_37__* %66, %struct.xfs_buf* %67)
  %69 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %70, align 8
  %72 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %73 = call %struct.TYPE_40__* @xfs_dir2_block_tail_p(%struct.TYPE_35__* %71, %struct.TYPE_39__* %72)
  store %struct.TYPE_40__* %73, %struct.TYPE_40__** %10, align 8
  %74 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %75 = call i32* @xfs_dir2_block_leaf_p(%struct.TYPE_40__* %74)
  store i32* %75, i32** %9, align 8
  %76 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %78, i32 0, i32 3
  %80 = load %struct.xfs_dir2_data_free* (%struct.TYPE_39__*)*, %struct.xfs_dir2_data_free* (%struct.TYPE_39__*)** %79, align 8
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %82 = call %struct.xfs_dir2_data_free* %80(%struct.TYPE_39__* %81)
  store %struct.xfs_dir2_data_free* %82, %struct.xfs_dir2_data_free** %20, align 8
  %83 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 2
  %87 = load %struct.xfs_dir2_leaf_entry* (%struct.TYPE_39__*)*, %struct.xfs_dir2_leaf_entry* (%struct.TYPE_39__*)** %86, align 8
  %88 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %89 = call %struct.xfs_dir2_leaf_entry* %87(%struct.TYPE_39__* %88)
  store %struct.xfs_dir2_leaf_entry* %89, %struct.xfs_dir2_leaf_entry** %21, align 8
  %90 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 1
  %94 = load i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.TYPE_39__*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.TYPE_39__*)** %93, align 8
  %95 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %96 = call i32 %94(%struct.xfs_dir3_icleaf_hdr* %22, %struct.TYPE_39__* %95)
  %97 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @be32_to_cpu(i32 %99)
  %101 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %22, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be32_to_cpu(i32 %104)
  %106 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %22, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_36__*, %struct.TYPE_36__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_39__*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (%struct.TYPE_39__*, %struct.xfs_dir3_icleaf_hdr*)** %110, align 8
  %112 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %113 = call i32 %111(%struct.TYPE_39__* %112, %struct.xfs_dir3_icleaf_hdr* %22)
  %114 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %115 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %116 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_41__* %114, %struct.xfs_buf* %115)
  %117 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %21, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(%struct.xfs_dir2_leaf_entry* %117, i32* %118, i32 %125)
  %127 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %128 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %129 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %22, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = call i32 @xfs_dir3_leaf_log_ents(%struct.TYPE_41__* %127, %struct.xfs_buf* %128, i32 0, i32 %131)
  store i32 0, i32* %18, align 4
  store i32 1, i32* %17, align 4
  %133 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %134 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = bitcast i32* %135 to i8*
  %137 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %138 = bitcast %struct.TYPE_39__* %137 to i8*
  %139 = ptrtoint i8* %136 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %144 = bitcast %struct.TYPE_39__* %143 to i8*
  %145 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %144, i64 %150
  %152 = load i32*, i32** %9, align 8
  %153 = bitcast i32* %152 to i8*
  %154 = ptrtoint i8* %151 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  %158 = call i32 @xfs_dir2_data_make_free(%struct.TYPE_41__* %133, %struct.xfs_buf* %134, i32 %142, i32 %157, i32* %17, i32* %18)
  %159 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %160 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %159, i32 0, i32 0
  store i32* @xfs_dir3_data_buf_ops, i32** %160, align 8
  %161 = load i32*, i32** %19, align 8
  %162 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %163 = load i32, i32* @XFS_BLFT_DIR_DATA_BUF, align 4
  %164 = call i32 @xfs_trans_buf_set_type(i32* %161, %struct.xfs_buf* %162, i32 %163)
  %165 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %169 = call i64 @cpu_to_be32(i32 %168)
  %170 = icmp eq i64 %167, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %59
  %172 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %173 = call i64 @cpu_to_be32(i32 %172)
  %174 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %181

176:                                              ; preds = %59
  %177 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %178 = call i64 @cpu_to_be32(i32 %177)
  %179 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %176, %171
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %186 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %187 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_37__* %185, %struct.TYPE_39__* %186, i32* %17)
  br label %188

188:                                              ; preds = %184, %181
  %189 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %190, align 8
  %192 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %193 = call %struct.TYPE_38__* @xfs_dir2_leaf_tail_p(%struct.TYPE_35__* %191, %struct.TYPE_39__* %192)
  store %struct.TYPE_38__* %193, %struct.TYPE_38__** %16, align 8
  %194 = call i64 @cpu_to_be32(i32 1)
  %195 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %198 = call i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_38__* %197)
  store i32* %198, i32** %6, align 8
  %199 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %200 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %199, i64 0
  %201 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %188
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %209 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %210 = call i32 @xfs_dir2_data_log_header(%struct.TYPE_41__* %208, %struct.xfs_buf* %209)
  br label %211

211:                                              ; preds = %207, %188
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %213 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %214 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_37__* %212, %struct.xfs_buf* %213)
  %215 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %216 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %217 = call i32 @xfs_dir3_data_check(%struct.TYPE_37__* %215, %struct.xfs_buf* %216)
  %218 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %219 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %220 = call i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_41__* %218, %struct.xfs_buf* %219, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %211, %57, %34
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @trace_xfs_dir2_block_to_leaf(%struct.TYPE_41__*) #1

declare dso_local i32 @xfs_da_grow_inode(%struct.TYPE_41__*, i32*) #1

declare dso_local i64 @xfs_dir2_da_to_db(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_dir2_byte_to_db(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @xfs_dir3_leaf_get_buf(%struct.TYPE_41__*, i64, %struct.xfs_buf**, i32) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.TYPE_37__*, %struct.xfs_buf*) #1

declare dso_local %struct.TYPE_40__* @xfs_dir2_block_tail_p(%struct.TYPE_35__*, %struct.TYPE_39__*) #1

declare dso_local i32* @xfs_dir2_block_leaf_p(%struct.TYPE_40__*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.TYPE_41__*, %struct.xfs_buf*) #1

declare dso_local i32 @memcpy(%struct.xfs_dir2_leaf_entry*, i32*, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_ents(%struct.TYPE_41__*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir2_data_make_free(%struct.TYPE_41__*, %struct.xfs_buf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32*, %struct.xfs_buf*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_37__*, %struct.TYPE_39__*, i32*) #1

declare dso_local %struct.TYPE_38__* @xfs_dir2_leaf_tail_p(%struct.TYPE_35__*, %struct.TYPE_39__*) #1

declare dso_local i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_38__*) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.TYPE_41__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.TYPE_37__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_41__*, %struct.xfs_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
