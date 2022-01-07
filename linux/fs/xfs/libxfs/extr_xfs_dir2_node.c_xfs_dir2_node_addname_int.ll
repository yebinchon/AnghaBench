; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_addname_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_addname_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.xfs_inode*, %struct.xfs_trans* }
%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32* (%struct.xfs_dir2_free*)*, i32* (%struct.xfs_dir2_data_entry*)*, i32 (%struct.xfs_dir2_data_entry*, i32)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_free*)* }
%struct.xfs_dir2_free = type { i32 }
%struct.xfs_dir2_data_entry = type { i32, i32, i32 }
%struct.xfs_dir2_data_free = type { i32, i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_da_state_blk = type { i32 }
%struct.xfs_dir2_data_unused = type { i32 }
%struct.xfs_dir2_data_hdr = type opaque
%struct.xfs_buf = type { %struct.xfs_dir2_free* }

@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_da_args*, %struct.xfs_da_state_blk*)* @xfs_dir2_node_addname_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_node_addname_int(%struct.xfs_da_args* %0, %struct.xfs_da_state_blk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_da_args*, align 8
  %5 = alloca %struct.xfs_da_state_blk*, align 8
  %6 = alloca %struct.xfs_dir2_data_unused*, align 8
  %7 = alloca %struct.xfs_dir2_data_entry*, align 8
  %8 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %9 = alloca %struct.xfs_dir2_data_free*, align 8
  %10 = alloca %struct.xfs_dir2_free*, align 8
  %11 = alloca %struct.xfs_trans*, align 8
  %12 = alloca %struct.xfs_inode*, align 8
  %13 = alloca %struct.xfs_buf*, align 8
  %14 = alloca %struct.xfs_buf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %4, align 8
  store %struct.xfs_da_state_blk* %1, %struct.xfs_da_state_blk** %5, align 8
  store %struct.xfs_dir2_free* null, %struct.xfs_dir2_free** %10, align 8
  %25 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %25, i32 0, i32 9
  %27 = load %struct.xfs_trans*, %struct.xfs_trans** %26, align 8
  store %struct.xfs_trans* %27, %struct.xfs_trans** %11, align 8
  %28 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %28, i32 0, i32 8
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %29, align 8
  store %struct.xfs_inode* %30, %struct.xfs_inode** %12, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %31 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %32 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %35(i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %41 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %42 = load i32, i32* %19, align 4
  %43 = call i32 @xfs_dir2_node_find_freeblk(%struct.xfs_da_args* %40, %struct.xfs_da_state_blk* %41, i32* %16, %struct.xfs_buf** %14, i32* %18, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %3, align 4
  br label %253

48:                                               ; preds = %2
  %49 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %253

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %253

62:                                               ; preds = %48
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  store i32 1, i32* %20, align 4
  %66 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %67 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %68 = call i32 @xfs_dir2_node_add_datablk(%struct.xfs_da_args* %66, %struct.xfs_da_state_blk* %67, i32* %16, %struct.xfs_buf** %13, %struct.xfs_buf** %14, i32* %18)
  store i32 %68, i32* %17, align 4
  br label %78

69:                                               ; preds = %62
  %70 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %72 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %73 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @xfs_dir2_db_to_da(i32 %74, i32 %75)
  %77 = call i32 @xfs_dir3_data_read(%struct.xfs_trans* %70, %struct.xfs_inode* %71, i32 %76, i32 -1, %struct.xfs_buf** %13)
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %69, %65
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %3, align 4
  br label %253

83:                                               ; preds = %78
  %84 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %85 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %84, i32 0, i32 0
  %86 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %85, align 8
  %87 = bitcast %struct.xfs_dir2_free* %86 to %struct.xfs_dir2_data_hdr*
  store %struct.xfs_dir2_data_hdr* %87, %struct.xfs_dir2_data_hdr** %8, align 8
  %88 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %89 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load %struct.xfs_dir2_data_free* (%struct.xfs_dir2_free*)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_free*)** %91, align 8
  %93 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %8, align 8
  %94 = bitcast %struct.xfs_dir2_data_hdr* %93 to %struct.xfs_dir2_free*
  %95 = call %struct.xfs_dir2_data_free* %92(%struct.xfs_dir2_free* %94)
  store %struct.xfs_dir2_data_free* %95, %struct.xfs_dir2_data_free** %9, align 8
  %96 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %9, align 8
  %97 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %96, i64 0
  %98 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @be16_to_cpu(i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = icmp sge i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  %105 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %8, align 8
  %106 = bitcast %struct.xfs_dir2_data_hdr* %105 to i8*
  %107 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %9, align 8
  %108 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %107, i64 0
  %109 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @be16_to_cpu(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %106, i64 %112
  %114 = bitcast i8* %113 to %struct.xfs_dir2_data_unused*
  store %struct.xfs_dir2_data_unused* %114, %struct.xfs_dir2_data_unused** %6, align 8
  %115 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %6, align 8
  %116 = bitcast %struct.xfs_dir2_data_unused* %115 to i8*
  %117 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %8, align 8
  %118 = bitcast %struct.xfs_dir2_data_hdr* %117 to i8*
  %119 = ptrtoint i8* %116 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  store i64 %121, i64* %15, align 8
  %122 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %123 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %124 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %6, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i32, i32* %19, align 4
  %127 = call i32 @xfs_dir2_data_use_free(%struct.xfs_da_args* %122, %struct.xfs_buf* %123, %struct.xfs_dir2_data_unused* %124, i64 %125, i32 %126, i32* %21, i32* %22)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %83
  %131 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %132 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %133 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %131, %struct.xfs_buf* %132)
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %3, align 4
  br label %253

135:                                              ; preds = %83
  %136 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %6, align 8
  %137 = bitcast %struct.xfs_dir2_data_unused* %136 to %struct.xfs_dir2_data_entry*
  store %struct.xfs_dir2_data_entry* %137, %struct.xfs_dir2_data_entry** %7, align 8
  %138 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %139 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @cpu_to_be64(i32 %140)
  %142 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %7, align 8
  %143 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %145 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %7, align 8
  %148 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %7, align 8
  %150 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %153 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %7, align 8
  %156 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @memcpy(i32 %151, i32 %154, i32 %157)
  %159 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %160 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i32 (%struct.xfs_dir2_data_entry*, i32)*, i32 (%struct.xfs_dir2_data_entry*, i32)** %162, align 8
  %164 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %7, align 8
  %165 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %166 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %163(%struct.xfs_dir2_data_entry* %164, i32 %167)
  %169 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %170 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %169, i32 0, i32 0
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load i32* (%struct.xfs_dir2_data_entry*)*, i32* (%struct.xfs_dir2_data_entry*)** %172, align 8
  %174 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %7, align 8
  %175 = call i32* %173(%struct.xfs_dir2_data_entry* %174)
  store i32* %175, i32** %23, align 8
  %176 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %7, align 8
  %177 = bitcast %struct.xfs_dir2_data_entry* %176 to i8*
  %178 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %8, align 8
  %179 = bitcast %struct.xfs_dir2_data_hdr* %178 to i8*
  %180 = ptrtoint i8* %177 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = trunc i64 %182 to i32
  %184 = call i32 @cpu_to_be16(i32 %183)
  %185 = load i32*, i32** %23, align 8
  store i32 %184, i32* %185, align 4
  %186 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %187 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %188 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %7, align 8
  %189 = call i32 @xfs_dir2_data_log_entry(%struct.xfs_da_args* %186, %struct.xfs_buf* %187, %struct.xfs_dir2_data_entry* %188)
  %190 = load i32, i32* %22, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %135
  %193 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %194 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %8, align 8
  %195 = bitcast %struct.xfs_dir2_data_hdr* %194 to %struct.xfs_dir2_free*
  %196 = call i32 @xfs_dir2_data_freescan(%struct.xfs_inode* %193, %struct.xfs_dir2_free* %195, i32* %21)
  br label %197

197:                                              ; preds = %192, %135
  %198 = load i32, i32* %21, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %202 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %203 = call i32 @xfs_dir2_data_log_header(%struct.xfs_da_args* %201, %struct.xfs_buf* %202)
  br label %204

204:                                              ; preds = %200, %197
  %205 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %206 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %205, i32 0, i32 0
  %207 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %206, align 8
  store %struct.xfs_dir2_free* %207, %struct.xfs_dir2_free** %10, align 8
  %208 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %209 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %208, i32 0, i32 0
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i32* (%struct.xfs_dir2_free*)*, i32* (%struct.xfs_dir2_free*)** %211, align 8
  %213 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %10, align 8
  %214 = call i32* %212(%struct.xfs_dir2_free* %213)
  store i32* %214, i32** %24, align 8
  %215 = load i32*, i32** %24, align 8
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %9, align 8
  %221 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %220, i64 0
  %222 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %219, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %204
  %226 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %9, align 8
  %227 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %226, i64 0
  %228 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %24, align 8
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %229, i32* %233, align 4
  store i32 1, i32* %20, align 4
  br label %234

234:                                              ; preds = %225, %204
  %235 = load i32, i32* %20, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %239 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %18, align 4
  %242 = call i32 @xfs_dir2_free_log_bests(%struct.xfs_da_args* %238, %struct.xfs_buf* %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %237, %234
  %244 = load i32, i32* %16, align 4
  %245 = sext i32 %244 to i64
  %246 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %247 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  %248 = load i32*, i32** %23, align 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @be16_to_cpu(i32 %249)
  %251 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %252 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %243, %130, %81, %61, %58, %46
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @xfs_dir2_node_find_freeblk(%struct.xfs_da_args*, %struct.xfs_da_state_blk*, i32*, %struct.xfs_buf**, i32*, i32) #1

declare dso_local i32 @xfs_dir2_node_add_datablk(%struct.xfs_da_args*, %struct.xfs_da_state_blk*, i32*, %struct.xfs_buf**, %struct.xfs_buf**, i32*) #1

declare dso_local i32 @xfs_dir3_data_read(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir2_db_to_da(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_data_use_free(%struct.xfs_da_args*, %struct.xfs_buf*, %struct.xfs_dir2_data_unused*, i64, i32, i32*, i32*) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_data_log_entry(%struct.xfs_da_args*, %struct.xfs_buf*, %struct.xfs_dir2_data_entry*) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.xfs_inode*, %struct.xfs_dir2_free*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.xfs_da_args*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_free_log_bests(%struct.xfs_da_args*, %struct.xfs_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
