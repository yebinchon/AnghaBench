; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, %struct.TYPE_26__*, i32*, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 (%struct.TYPE_26__*, i64)*, i64 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*, i64)*, i32, i64, i32 (%struct.xfs_dir3_icfree_hdr*, i32*)*, i32 (i32)*, %struct.xfs_dir2_data_free* (i32*)*, i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, %struct.xfs_dir2_leaf_entry* (i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)* }
%struct.xfs_dir3_icfree_hdr = type { i64 }
%struct.xfs_dir2_data_free = type { i32 }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_buf = type { i32* }
%struct.TYPE_30__ = type { i64, i32, %struct.xfs_buf* }
%struct.TYPE_29__ = type { i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.xfs_buf*, i32, %struct.TYPE_30__*, i32*)* @xfs_dir2_leafn_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_leafn_remove(%struct.TYPE_31__* %0, %struct.xfs_buf* %1, i32 %2, %struct.TYPE_30__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.xfs_buf*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.xfs_dir2_data_free*, align 8
  %25 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %26 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.xfs_buf*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %7, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %10, align 8
  store i32* %4, i32** %11, align 8
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @trace_xfs_dir2_leafn_remove(%struct.TYPE_31__* %32, i32 %33)
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  store %struct.TYPE_28__* %37, %struct.TYPE_28__** %16, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %23, align 8
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %42 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %17, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 10
  %48 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %47, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 %48(%struct.xfs_dir3_icleaf_hdr* %25, i32* %49)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 9
  %55 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %54, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call %struct.xfs_dir2_leaf_entry* %55(i32* %56)
  store %struct.xfs_dir2_leaf_entry* %57, %struct.xfs_dir2_leaf_entry** %26, align 8
  %58 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %26, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %58, i64 %60
  store %struct.xfs_dir2_leaf_entry* %61, %struct.xfs_dir2_leaf_entry** %18, align 8
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %63, align 8
  %65 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  %66 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  %69 = call i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_26__* %64, i32 %68)
  store i64 %69, i64* %13, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %78, align 8
  %80 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  %81 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be32_to_cpu(i32 %82)
  %84 = call i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_26__* %79, i32 %83)
  store i32 %84, i32* %20, align 4
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %20, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %25, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 8
  %99 = load i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)** %98, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 %99(i32* %100, %struct.xfs_dir3_icleaf_hdr* %25)
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %103 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %104 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_31__* %102, %struct.xfs_buf* %103)
  %105 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %106 = call i32 @cpu_to_be32(i32 %105)
  %107 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  %108 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %110 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @xfs_dir3_leaf_log_ents(%struct.TYPE_31__* %109, %struct.xfs_buf* %110, i32 %111, i32 %112)
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 2
  %116 = load %struct.xfs_buf*, %struct.xfs_buf** %115, align 8
  store %struct.xfs_buf* %116, %struct.xfs_buf** %14, align 8
  %117 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %118 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %12, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = bitcast i32* %120 to i8*
  %122 = load i32, i32* %20, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = bitcast i8* %124 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %125, %struct.TYPE_29__** %15, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 7
  %130 = load %struct.xfs_dir2_data_free* (i32*)*, %struct.xfs_dir2_data_free* (i32*)** %129, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call %struct.xfs_dir2_data_free* %130(i32* %131)
  store %struct.xfs_dir2_data_free* %132, %struct.xfs_dir2_data_free** %24, align 8
  %133 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %24, align 8
  %134 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %133, i64 0
  %135 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @be16_to_cpu(i32 %136)
  store i32 %137, i32* %19, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %139 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %140 = load i32, i32* %20, align 4
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 6
  %145 = load i32 (i32)*, i32 (i32)** %144, align 8
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 %145(i32 %148)
  %150 = call i32 @xfs_dir2_data_make_free(%struct.TYPE_31__* %138, %struct.xfs_buf* %139, i32 %140, i32 %149, i32* %21, i32* %22)
  %151 = load i32, i32* %22, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %5
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_28__* %154, i32* %155, i32* %21)
  br label %157

157:                                              ; preds = %153, %5
  %158 = load i32, i32* %21, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %162 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %163 = call i32 @xfs_dir2_data_log_header(%struct.TYPE_31__* %161, %struct.xfs_buf* %162)
  br label %164

164:                                              ; preds = %160, %157
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %166 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %167 = call i32 @xfs_dir3_data_check(%struct.TYPE_28__* %165, %struct.xfs_buf* %166)
  %168 = load i32, i32* %19, align 4
  %169 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %24, align 8
  %170 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %169, i64 0
  %171 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @be16_to_cpu(i32 %172)
  %174 = icmp slt i32 %168, %173
  br i1 %174, label %175, label %268

175:                                              ; preds = %164
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load i64 (%struct.TYPE_26__*, i64)*, i64 (%struct.TYPE_26__*, i64)** %179, align 8
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = call i64 %180(%struct.TYPE_26__* %183, i64 %184)
  store i64 %185, i64* %29, align 8
  %186 = load i32*, i32** %23, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %189, align 8
  %191 = load i64, i64* %29, align 8
  %192 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_26__* %190, i64 %191)
  %193 = call i32 @xfs_dir2_free_read(i32* %186, %struct.TYPE_28__* %187, i32 %192, %struct.xfs_buf** %28)
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %27, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %175
  %197 = load i32, i32* %27, align 4
  store i32 %197, i32* %6, align 4
  br label %293

198:                                              ; preds = %175
  %199 = load %struct.xfs_buf*, %struct.xfs_buf** %28, align 8
  %200 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  store i32* %201, i32** %31, align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 2
  %206 = load i32 (%struct.TYPE_26__*, i64)*, i32 (%struct.TYPE_26__*, i64)** %205, align 8
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %208, align 8
  %210 = load i64, i64* %13, align 8
  %211 = call i32 %206(%struct.TYPE_26__* %209, i64 %210)
  store i32 %211, i32* %30, align 4
  %212 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %24, align 8
  %213 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %212, i64 0
  %214 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @be16_to_cpu(i32 %215)
  store i32 %216, i32* %19, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %222, %227
  %229 = icmp eq i32 %217, %228
  br i1 %229, label %230, label %254

230:                                              ; preds = %198
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %232 = load i64, i64* %13, align 8
  %233 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %234 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_31__* %231, i64 %232, %struct.xfs_buf* %233)
  store i32 %234, i32* %27, align 4
  %235 = load i32, i32* %27, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %230
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 2
  store %struct.xfs_buf* null, %struct.xfs_buf** %239, align 8
  store i32* null, i32** %12, align 8
  br label %253

240:                                              ; preds = %230
  %241 = load i32, i32* %27, align 4
  %242 = load i32, i32* @ENOSPC, align 4
  %243 = sub nsw i32 0, %242
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %245, %240
  %251 = load i32, i32* %27, align 4
  store i32 %251, i32* %6, align 4
  br label %293

252:                                              ; preds = %245
  br label %253

253:                                              ; preds = %252, %237
  br label %254

254:                                              ; preds = %253, %198
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %256 = load i32*, i32** %12, align 8
  %257 = load i32*, i32** %31, align 8
  %258 = load i64, i64* %29, align 8
  %259 = load i32, i32* %30, align 4
  %260 = load %struct.xfs_buf*, %struct.xfs_buf** %28, align 8
  %261 = load i32, i32* %19, align 4
  %262 = call i32 @xfs_dir3_data_block_free(%struct.TYPE_31__* %255, i32* %256, i32* %257, i64 %258, i32 %259, %struct.xfs_buf* %260, i32 %261)
  store i32 %262, i32* %27, align 4
  %263 = load i32, i32* %27, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %254
  %266 = load i32, i32* %27, align 4
  store i32 %266, i32* %6, align 4
  br label %293

267:                                              ; preds = %254
  br label %268

268:                                              ; preds = %267, %164
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %270 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %271 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_28__* %269, %struct.xfs_buf* %270)
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %25, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %25, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %278, %280
  %282 = mul nsw i32 4, %281
  %283 = sext i32 %282 to i64
  %284 = add nsw i64 %276, %283
  %285 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp slt i64 %284, %289
  %291 = zext i1 %290 to i32
  %292 = load i32*, i32** %11, align 8
  store i32 %291, i32* %292, align 4
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %268, %265, %250, %196
  %294 = load i32, i32* %6, align 4
  ret i32 %294
}

declare dso_local i32 @trace_xfs_dir2_leafn_remove(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.TYPE_31__*, %struct.xfs_buf*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_ents(%struct.TYPE_31__*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_data_make_free(%struct.TYPE_31__*, %struct.xfs_buf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.TYPE_31__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.TYPE_28__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_free_read(i32*, %struct.TYPE_28__*, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir2_db_to_da(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_31__*, i64, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_data_block_free(%struct.TYPE_31__*, i32*, i32*, i64, i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.TYPE_28__*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
