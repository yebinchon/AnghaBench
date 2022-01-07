; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_setup_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_setup_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.xfs_sb }
%struct.xfs_sb = type { i32, i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.xfs_ino_geometry = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i32, i64 }

@uint16_t = common dso_local global i32 0, align 4
@XFS_INODES_PER_CHUNK = common dso_local global i32 0, align 4
@XFS_INODES_PER_CHUNK_LOG = common dso_local global i64 0, align 8
@XFS_INODE_BIG_CLUSTER_SIZE = common dso_local global i32 0, align 4
@XFS_DINODE_MIN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_ialloc_setup_geometry(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca %struct.xfs_sb*, align 8
  %4 = alloca %struct.xfs_ino_geometry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %9 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %8, i32 0, i32 1
  store %struct.xfs_sb* %9, %struct.xfs_sb** %3, align 8
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %11 = call %struct.xfs_ino_geometry* @M_IGEO(%struct.xfs_mount* %10)
  store %struct.xfs_ino_geometry* %11, %struct.xfs_ino_geometry** %4, align 8
  %12 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %20, i32 0, i32 15
  store i64 %19, i64* %21, align 8
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %23 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @xfs_inobt_maxrecs(%struct.xfs_mount* %22, i32 %25, i32 1)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %33 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %34 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @xfs_inobt_maxrecs(%struct.xfs_mount* %32, i32 %35, i32 0)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %39 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 2
  %48 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %49 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %53 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 2
  %58 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @uint16_t, align 4
  %63 = load i32, i32* @XFS_INODES_PER_CHUNK, align 4
  %64 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %65 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @max_t(i32 %62, i32 %63, i32 %66)
  %68 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %69 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %71 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %74 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %72, %75
  %77 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %78 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %80 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %1
  %84 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %85 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %88 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  br label %95

89:                                               ; preds = %1
  %90 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %91 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %94 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %97 = call i64 @XFS_INO_AGINO_BITS(%struct.xfs_mount* %96)
  %98 = shl i64 1, %97
  %99 = load i64, i64* @XFS_INODES_PER_CHUNK_LOG, align 8
  %100 = ashr i64 %98, %99
  store i64 %100, i64* %6, align 8
  %101 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %102 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @xfs_btree_compute_maxlevels(i32* %103, i64 %104)
  %106 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %107 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %106, i32 0, i32 14
  store i32 %105, i32* %107, align 8
  %108 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %109 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %141

112:                                              ; preds = %95
  %113 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %114 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %112
  %118 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %119 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xfs_sb*, %struct.xfs_sb** %3, align 8
  %122 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %120, %123
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @do_div(i32 %125, i32 100)
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %129 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @do_div(i32 %127, i32 %130)
  %132 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %135 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = call i8* @XFS_FSB_TO_INO(%struct.xfs_mount* %132, i32 %137)
  %139 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %140 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %139, i32 0, i32 13
  store i8* %138, i8** %140, align 8
  br label %144

141:                                              ; preds = %112, %95
  %142 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %143 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %142, i32 0, i32 13
  store i8* null, i8** %143, align 8
  br label %144

144:                                              ; preds = %141, %117
  %145 = load i32, i32* @XFS_INODE_BIG_CLUSTER_SIZE, align 4
  %146 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %147 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %149 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %148, i32 0, i32 1
  %150 = call i64 @xfs_sb_version_hascrc(%struct.xfs_sb* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %144
  %153 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %154 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %7, align 4
  %156 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %157 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @XFS_DINODE_MIN_SIZE, align 4
  %161 = sdiv i32 %159, %160
  %162 = load i32, i32* %7, align 4
  %163 = mul nsw i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %165 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %168, i32 %169)
  %171 = icmp sge i64 %167, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %152
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %175 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %152
  br label %177

177:                                              ; preds = %176, %144
  %178 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %179 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %182 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %180, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %177
  %187 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %188 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %189 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %187, i32 %190)
  %192 = trunc i64 %191 to i32
  %193 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %194 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  br label %198

195:                                              ; preds = %177
  %196 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %197 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %196, i32 0, i32 6
  store i32 1, i32* %197, align 8
  br label %198

198:                                              ; preds = %195, %186
  %199 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %200 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %201 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @XFS_FSB_TO_B(%struct.xfs_mount* %199, i32 %202)
  %204 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %205 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %204, i32 0, i32 12
  store i32 %203, i32* %205, align 8
  %206 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %207 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %208 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = call i8* @XFS_FSB_TO_INO(%struct.xfs_mount* %206, i32 %209)
  %211 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %212 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %211, i32 0, i32 11
  store i8* %210, i8** %212, align 8
  %213 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %214 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %213, i32 0, i32 1
  %215 = call i64 @xfs_sb_version_hasalign(%struct.xfs_sb* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %198
  %218 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %219 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %223 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = icmp sge i64 %221, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %217
  %228 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %229 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %229, i32 0, i32 6
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %234 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %233, i32 0, i32 7
  store i32 %232, i32* %234, align 4
  br label %238

235:                                              ; preds = %217, %198
  %236 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %237 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %236, i32 0, i32 7
  store i32 1, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %227
  %239 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %240 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %241, 1
  %243 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %244 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %243, i32 0, i32 8
  store i32 %242, i32* %244, align 8
  %245 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %246 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %247 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @XFS_FSB_TO_INO(%struct.xfs_mount* %245, i32 %248)
  %250 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %251 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %250, i32 0, i32 10
  store i8* %249, i8** %251, align 8
  %252 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %253 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %276

256:                                              ; preds = %238
  %257 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %258 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %276

261:                                              ; preds = %256
  %262 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %263 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %266 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %264, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %261
  %271 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %272 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %275 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %274, i32 0, i32 9
  store i32 %273, i32* %275, align 4
  br label %279

276:                                              ; preds = %261, %256, %238
  %277 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %4, align 8
  %278 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %277, i32 0, i32 9
  store i32 0, i32* %278, align 4
  br label %279

279:                                              ; preds = %276, %270
  ret void
}

declare dso_local %struct.xfs_ino_geometry* @M_IGEO(%struct.xfs_mount*) #1

declare dso_local i8* @xfs_inobt_maxrecs(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i64 @XFS_INO_AGINO_BITS(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_btree_compute_maxlevels(i32*, i64) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i8* @XFS_FSB_TO_INO(%struct.xfs_mount*, i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.xfs_sb*) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_B(%struct.xfs_mount*, i32) #1

declare dso_local i64 @xfs_sb_version_hasalign(%struct.xfs_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
