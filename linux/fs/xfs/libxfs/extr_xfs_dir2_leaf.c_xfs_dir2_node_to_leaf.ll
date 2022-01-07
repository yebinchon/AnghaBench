; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_node_to_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_node_to_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_28__, i32*, %struct.TYPE_32__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.xfs_buf* }
%struct.xfs_buf = type { i32*, i32* }
%struct.TYPE_32__ = type { %struct.TYPE_25__*, i32*, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { i64, i64, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (i32*)*, i32 (%struct.xfs_dir3_icfree_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)* }
%struct.xfs_dir3_icleaf_hdr = type { i64, i64 }
%struct.xfs_dir3_icfree_hdr = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_LEAF_OFFSET = common dso_local global i64 0, align 8
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR3_LEAFN_MAGIC = common dso_local global i64 0, align 8
@xfs_dir3_leaf1_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_DIR_LEAF1_BUF = common dso_local global i32 0, align 4
@XFS_DIR2_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_FREE_OFFSET = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_to_leaf(%struct.TYPE_31__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.xfs_dir3_icleaf_hdr, align 8
  %17 = alloca %struct.xfs_dir3_icfree_hdr, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %279

24:                                               ; preds = %1
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  store %struct.TYPE_32__* %27, %struct.TYPE_32__** %4, align 8
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %29 = call i32 @trace_xfs_dir2_node_to_leaf(%struct.TYPE_32__* %28)
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %13, align 8
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  store %struct.TYPE_29__* %35, %struct.TYPE_29__** %5, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %15, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %40 = load i32, i32* @XFS_DATA_FORK, align 4
  %41 = call i32 @xfs_bmap_last_offset(%struct.TYPE_29__* %39, i64* %8, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %279

45:                                               ; preds = %24
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %80, %45
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %54, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %53
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @xfs_dir2_node_trim_free(%struct.TYPE_32__* %62, i64 %63, i32* %14)
  store i32 %64, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %279

68:                                               ; preds = %61
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub nsw i64 %77, %76
  store i64 %78, i64* %8, align 8
  br label %80

79:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %279

80:                                               ; preds = %71
  br label %53

81:                                               ; preds = %53
  %82 = load i32*, i32** %15, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %84 = load i32, i32* @XFS_DATA_FORK, align 4
  %85 = call i32 @xfs_bmap_last_before(i32* %82, %struct.TYPE_29__* %83, i64* %8, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %279

89:                                               ; preds = %81
  %90 = load i32*, i32** %13, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i64 @XFS_FSB_TO_B(i32* %90, i64 %91)
  %93 = load i64, i64* @XFS_DIR2_LEAF_OFFSET, align 8
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %93, %98
  %100 = icmp sgt i64 %92, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %279

102:                                              ; preds = %89
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = load %struct.xfs_buf*, %struct.xfs_buf** %108, align 8
  store %struct.xfs_buf* %109, %struct.xfs_buf** %10, align 8
  %110 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %111 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %12, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 3
  %117 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %116, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 %117(%struct.xfs_dir3_icleaf_hdr* %16, i32* %118)
  %120 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %102
  %125 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @XFS_DIR3_LEAFN_MAGIC, align 8
  %128 = icmp eq i64 %126, %127
  br label %129

129:                                              ; preds = %124, %102
  %130 = phi i1 [ true, %102 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @ASSERT(i32 %131)
  %133 = load i32*, i32** %15, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @xfs_dir2_free_read(i32* %133, %struct.TYPE_29__* %134, i64 %139, %struct.xfs_buf** %7)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %129
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %279

145:                                              ; preds = %129
  %146 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %147 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %9, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 2
  %153 = load i32 (%struct.xfs_dir3_icfree_hdr*, i32*)*, i32 (%struct.xfs_dir3_icfree_hdr*, i32*)** %152, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 %153(%struct.xfs_dir3_icfree_hdr* %17, i32* %154)
  %156 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %17, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @ASSERT(i32 %160)
  %162 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %17, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @xfs_dir3_leaf_size(%struct.xfs_dir3_icleaf_hdr* %16, i32 %163)
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %164, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %145
  %172 = load i32*, i32** %15, align 8
  %173 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %174 = call i32 @xfs_trans_brelse(i32* %172, %struct.xfs_buf* %173)
  store i32 0, i32* %2, align 4
  br label %279

175:                                              ; preds = %145
  %176 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %181 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %182 = call i32 @xfs_dir3_leaf_compact(%struct.TYPE_32__* %180, %struct.xfs_dir3_icleaf_hdr* %16, %struct.xfs_buf* %181)
  br label %183

183:                                              ; preds = %179, %175
  %184 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %185 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %184, i32 0, i32 0
  store i32* @xfs_dir3_leaf1_buf_ops, i32** %185, align 8
  %186 = load i32*, i32** %15, align 8
  %187 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %188 = load i32, i32* @XFS_BLFT_DIR_LEAF1_BUF, align 4
  %189 = call i32 @xfs_trans_buf_set_type(i32* %186, %struct.xfs_buf* %187, i32 %188)
  %190 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  br label %198

196:                                              ; preds = %183
  %197 = load i64, i64* @XFS_DIR3_LEAF1_MAGIC, align 8
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i64 [ %195, %194 ], [ %197, %196 ]
  %200 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 0
  store i64 %199, i64* %200, align 8
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %202, align 8
  %204 = load i32*, i32** %12, align 8
  %205 = call %struct.TYPE_30__* @xfs_dir2_leaf_tail_p(%struct.TYPE_25__* %203, i32* %204)
  store %struct.TYPE_30__* %205, %struct.TYPE_30__** %11, align 8
  %206 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %17, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @cpu_to_be32(i32 %207)
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %212 = call i32 @xfs_dir2_leaf_bests_p(%struct.TYPE_30__* %211)
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 1
  %217 = load i32 (i32*)*, i32 (i32*)** %216, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 %217(i32* %218)
  %220 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %17, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 4
  %224 = trunc i64 %223 to i32
  %225 = call i32 @memcpy(i32 %212, i32 %219, i32 %224)
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 0
  %230 = load i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)** %229, align 8
  %231 = load i32*, i32** %12, align 8
  %232 = call i32 %230(i32* %231, %struct.xfs_dir3_icleaf_hdr* %16)
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %234 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %235 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_32__* %233, %struct.xfs_buf* %234)
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %237 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @be32_to_cpu(i32 %240)
  %242 = sub nsw i64 %241, 1
  %243 = call i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_32__* %236, %struct.xfs_buf* %237, i32 0, i64 %242)
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %245 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %246 = call i32 @xfs_dir3_leaf_log_tail(%struct.TYPE_32__* %244, %struct.xfs_buf* %245)
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %248 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %249 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_29__* %247, %struct.xfs_buf* %248)
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %252, align 8
  %254 = load i32, i32* @XFS_DIR2_FREE_OFFSET, align 4
  %255 = call i32 @xfs_dir2_byte_to_db(%struct.TYPE_25__* %253, i32 %254)
  %256 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %257 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_32__* %250, i32 %255, %struct.xfs_buf* %256)
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* %6, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %198
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* @ENOSPC, align 4
  %263 = sub nsw i32 0, %262
  %264 = icmp ne i32 %261, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @ASSERT(i32 %265)
  %267 = load i32, i32* %6, align 4
  store i32 %267, i32* %2, align 4
  br label %279

268:                                              ; preds = %198
  store %struct.xfs_buf* null, %struct.xfs_buf** %7, align 8
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %270 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %271 = call i32 @xfs_dir2_leaf_to_block(%struct.TYPE_32__* %269, %struct.xfs_buf* %270, i32* null)
  store i32 %271, i32* %6, align 4
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i64 0
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 0
  store %struct.xfs_buf* null, %struct.xfs_buf** %277, align 8
  %278 = load i32, i32* %6, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %268, %260, %171, %143, %101, %87, %79, %66, %43, %23
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @trace_xfs_dir2_node_to_leaf(%struct.TYPE_32__*) #1

declare dso_local i32 @xfs_bmap_last_offset(%struct.TYPE_29__*, i64*, i32) #1

declare dso_local i32 @xfs_dir2_node_trim_free(%struct.TYPE_32__*, i64, i32*) #1

declare dso_local i32 @xfs_bmap_last_before(i32*, %struct.TYPE_29__*, i64*, i32) #1

declare dso_local i64 @XFS_FSB_TO_B(i32*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_free_read(i32*, %struct.TYPE_29__*, i64, %struct.xfs_buf**) #1

declare dso_local i64 @xfs_dir3_leaf_size(%struct.xfs_dir3_icleaf_hdr*, i32) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_compact(%struct.TYPE_32__*, %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32*, %struct.xfs_buf*, i32) #1

declare dso_local %struct.TYPE_30__* @xfs_dir2_leaf_tail_p(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @xfs_dir2_leaf_bests_p(%struct.TYPE_30__*) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.TYPE_32__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_32__*, %struct.xfs_buf*, i32, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_tail(%struct.TYPE_32__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.TYPE_29__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_32__*, i32, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_byte_to_db(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_dir2_leaf_to_block(%struct.TYPE_32__*, %struct.xfs_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
