; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_toosmall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_toosmall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.xfs_inode* }
%struct.TYPE_12__ = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.xfs_dir2_leaf_entry* (i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)* }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32, i64, i64 }
%struct.xfs_buf = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leafn_toosmall(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfs_dir3_icleaf_hdr, align 8
  %17 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %18 = alloca %struct.xfs_inode*, align 8
  %19 = alloca %struct.xfs_dir3_icleaf_hdr, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %23, align 8
  store %struct.xfs_inode* %24, %struct.xfs_inode** %18, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i64 %34
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %6, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %14, align 8
  %41 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %42 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %44, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 %45(%struct.xfs_dir3_icleaf_hdr* %16, i32* %46)
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %49 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %51, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call %struct.xfs_dir2_leaf_entry* %52(i32* %53)
  store %struct.xfs_dir2_leaf_entry* %54, %struct.xfs_dir2_leaf_entry** %17, align 8
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = call i32 @xfs_dir3_leaf_check(%struct.xfs_inode* %55, %struct.TYPE_17__* %58)
  %60 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %61, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %66 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = add i64 %70, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 1
  %85 = icmp sgt i32 %76, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %2
  %87 = load i32*, i32** %5, align 8
  store i32 0, i32* %87, align 4
  store i32 0, i32* %3, align 4
  br label %263

88:                                               ; preds = %2
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %12, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = call i32 @memcpy(%struct.TYPE_18__* %97, %struct.TYPE_18__* %99, i32 16)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @xfs_da3_path_shift(%struct.TYPE_15__* %101, %struct.TYPE_18__* %103, i32 %104, i32 0, i32* %15)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %91
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %3, align 4
  br label %263

110:                                              ; preds = %91
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 2, i32 0
  %115 = load i32*, i32** %5, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %3, align 4
  br label %263

116:                                              ; preds = %88
  %117 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %118, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.xfs_buf* null, %struct.xfs_buf** %8, align 8
  br label %123

123:                                              ; preds = %217, %116
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %224

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  br label %135

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i64 [ %131, %129 ], [ %134, %132 ]
  store i64 %136, i64* %7, align 8
  %137 = load i64, i64* %7, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %217

140:                                              ; preds = %135
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @xfs_dir3_leafn_read(i32 %145, %struct.xfs_inode* %146, i64 %147, i32 -1, %struct.xfs_buf** %8)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %3, align 4
  br label %263

153:                                              ; preds = %140
  %154 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %16, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %155, %157
  store i32 %158, i32* %10, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 2
  %174 = sub nsw i32 %165, %173
  store i32 %174, i32* %9, align 4
  %175 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %176 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %14, align 8
  %178 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %179 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %178, i32 0, i32 0
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %181, align 8
  %183 = load i32*, i32** %14, align 8
  %184 = call i32 %182(%struct.xfs_dir3_icleaf_hdr* %19, i32* %183)
  %185 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %186 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %185, i32 0, i32 0
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %188, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = call %struct.xfs_dir2_leaf_entry* %189(i32* %190)
  store %struct.xfs_dir2_leaf_entry* %191, %struct.xfs_dir2_leaf_entry** %17, align 8
  %192 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %19, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %19, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %193, %195
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = sub i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %153
  br label %224

209:                                              ; preds = %153
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %216 = call i32 @xfs_trans_brelse(i32 %214, %struct.xfs_buf* %215)
  br label %217

217:                                              ; preds = %209, %139
  %218 = load i32, i32* %12, align 4
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %13, align 4
  br label %123

224:                                              ; preds = %208, %123
  %225 = load i32, i32* %13, align 4
  %226 = icmp sge i32 %225, 2
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32*, i32** %5, align 8
  store i32 0, i32* %228, align 4
  store i32 0, i32* %3, align 4
  br label %263

229:                                              ; preds = %224
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = call i32 @memcpy(%struct.TYPE_18__* %231, %struct.TYPE_18__* %233, i32 16)
  %235 = load i64, i64* %7, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp slt i64 %235, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %229
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @xfs_da3_path_shift(%struct.TYPE_15__* %241, %struct.TYPE_18__* %243, i32 %244, i32 0, i32* %15)
  store i32 %245, i32* %11, align 4
  br label %252

246:                                              ; preds = %229
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @xfs_da3_path_shift(%struct.TYPE_15__* %247, %struct.TYPE_18__* %249, i32 %250, i32 0, i32* %15)
  store i32 %251, i32* %11, align 4
  br label %252

252:                                              ; preds = %246, %240
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = load i32, i32* %11, align 4
  store i32 %256, i32* %3, align 4
  br label %263

257:                                              ; preds = %252
  %258 = load i32, i32* %15, align 4
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 0, i32 1
  %262 = load i32*, i32** %5, align 8
  store i32 %261, i32* %262, align 4
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %257, %255, %227, %151, %110, %108, %86
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i32 @xfs_dir3_leaf_check(%struct.xfs_inode*, %struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @xfs_da3_path_shift(%struct.TYPE_15__*, %struct.TYPE_18__*, i32, i32, i32*) #1

declare dso_local i32 @xfs_dir3_leafn_read(i32, %struct.xfs_inode*, i64, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_trans_brelse(i32, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
