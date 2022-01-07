; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, %struct.TYPE_3__, %struct.buffer_head*, i8* }
%struct.TYPE_3__ = type { i8* }
%struct.buffer_head = type { i64 }
%struct.nilfs_bmap_stats = type { i64 }
%struct.inode = type { i32 }
%struct.nilfs_btree_node = type { i32 }

@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@nilfs_btree_do_delete = common dso_local global i8* null, align 8
@nilfs_btree_borrow_left = common dso_local global i8* null, align 8
@nilfs_btree_concat_left = common dso_local global i8* null, align 8
@nilfs_btree_borrow_right = common dso_local global i8* null, align 8
@nilfs_btree_concat_right = common dso_local global i8* null, align 8
@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@nilfs_btree_shrink = common dso_local global i8* null, align 8
@nilfs_btree_nop = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32*, %struct.nilfs_bmap_stats*, %struct.inode*)* @nilfs_btree_prepare_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_prepare_delete(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32* %2, %struct.nilfs_bmap_stats* %3, %struct.inode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_bmap*, align 8
  %8 = alloca %struct.nilfs_btree_path*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nilfs_bmap_stats*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.nilfs_btree_node*, align 8
  %14 = alloca %struct.nilfs_btree_node*, align 8
  %15 = alloca %struct.nilfs_btree_node*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %7, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.nilfs_bmap_stats* %3, %struct.nilfs_bmap_stats** %10, align 8
  store %struct.inode* %4, %struct.inode** %11, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %25 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %27 = call i32 @nilfs_btree_node_size(%struct.nilfs_bmap* %26)
  %28 = call i32 @NILFS_BTREE_NODE_NCHILDREN_MIN(i32 %27)
  store i32 %28, i32* %20, align 4
  %29 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %30 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %29)
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %31, i32* %19, align 4
  %32 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %33 = load i32, i32* %19, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %32, i64 %34
  %36 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %18, align 4
  br label %38

38:                                               ; preds = %266, %5
  %39 = load i32, i32* %19, align 4
  %40 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %41 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %40)
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %269

44:                                               ; preds = %38
  %45 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %46 = load i32, i32* %19, align 4
  %47 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %45, i32 %46)
  store %struct.nilfs_btree_node* %47, %struct.nilfs_btree_node** %13, align 8
  %48 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %13, align 8
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %22, align 4
  %51 = call i8* @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %48, i32 %49, i32 %50)
  %52 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %52, i64 %54
  %56 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i8* %51, i8** %57, align 8
  %58 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %59 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %59, i64 %61
  %63 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %62, i32 0, i32 1
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = call i32 @nilfs_bmap_prepare_end_ptr(%struct.nilfs_bmap* %58, %struct.TYPE_3__* %63, %struct.inode* %64)
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %23, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  br label %318

69:                                               ; preds = %44
  %70 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %13, align 8
  %71 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %70)
  %72 = load i32, i32* %20, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i8*, i8** @nilfs_btree_do_delete, align 8
  %76 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %76, i64 %78
  %80 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %79, i32 0, i32 3
  store i8* %75, i8** %80, align 8
  %81 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %82 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %305

85:                                               ; preds = %69
  %86 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %87 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %88, 1
  %90 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %86, %struct.nilfs_btree_path* %87, i32 %89, i32* %21)
  store %struct.nilfs_btree_node* %90, %struct.nilfs_btree_node** %14, align 8
  %91 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %91, i64 %94
  %96 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %85
  %102 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %21, align 4
  %106 = call i8* @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %102, i32 %104, i32 %105)
  store i8* %106, i8** %16, align 8
  %107 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = call i32 @nilfs_btree_get_block(%struct.nilfs_bmap* %107, i8* %108, %struct.buffer_head** %12)
  store i32 %109, i32* %23, align 4
  %110 = load i32, i32* %23, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %309

113:                                              ; preds = %101
  %114 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %117, %struct.nilfs_btree_node** %15, align 8
  %118 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %15, align 8
  %119 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %118)
  %120 = load i32, i32* %20, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %113
  %123 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %124 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %124, i64 %126
  %128 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %127, i32 0, i32 2
  store %struct.buffer_head* %123, %struct.buffer_head** %128, align 8
  %129 = load i8*, i8** @nilfs_btree_borrow_left, align 8
  %130 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %130, i64 %132
  %134 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %133, i32 0, i32 3
  store i8* %129, i8** %134, align 8
  %135 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %136 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  br label %305

139:                                              ; preds = %113
  %140 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %141 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %141, i64 %143
  %145 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %144, i32 0, i32 2
  store %struct.buffer_head* %140, %struct.buffer_head** %145, align 8
  %146 = load i8*, i8** @nilfs_btree_concat_left, align 8
  %147 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %147, i64 %149
  %151 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %150, i32 0, i32 3
  store i8* %146, i8** %151, align 8
  %152 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %153 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %139
  br label %265

157:                                              ; preds = %85
  %158 = load i32, i32* %17, align 4
  %159 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %160 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %159)
  %161 = sub nsw i32 %160, 1
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %221

163:                                              ; preds = %157
  %164 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* %21, align 4
  %168 = call i8* @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %164, i32 %166, i32 %167)
  store i8* %168, i8** %16, align 8
  %169 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = call i32 @nilfs_btree_get_block(%struct.nilfs_bmap* %169, i8* %170, %struct.buffer_head** %12)
  store i32 %171, i32* %23, align 4
  %172 = load i32, i32* %23, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  br label %309

175:                                              ; preds = %163
  %176 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %177 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %179, %struct.nilfs_btree_node** %15, align 8
  %180 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %15, align 8
  %181 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %180)
  %182 = load i32, i32* %20, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %175
  %185 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %186 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %187 = load i32, i32* %19, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %186, i64 %188
  %190 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %189, i32 0, i32 2
  store %struct.buffer_head* %185, %struct.buffer_head** %190, align 8
  %191 = load i8*, i8** @nilfs_btree_borrow_right, align 8
  %192 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %192, i64 %194
  %196 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %195, i32 0, i32 3
  store i8* %191, i8** %196, align 8
  %197 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %198 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %198, align 8
  br label %305

201:                                              ; preds = %175
  %202 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %203 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %203, i64 %205
  %207 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %206, i32 0, i32 2
  store %struct.buffer_head* %202, %struct.buffer_head** %207, align 8
  %208 = load i8*, i8** @nilfs_btree_concat_right, align 8
  %209 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %210 = load i32, i32* %19, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %209, i64 %211
  %213 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %212, i32 0, i32 3
  store i8* %208, i8** %213, align 8
  %214 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %215 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %215, align 8
  %218 = load i32, i32* %17, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %18, align 4
  br label %220

220:                                              ; preds = %201
  br label %264

221:                                              ; preds = %157
  %222 = load i32, i32* %19, align 4
  %223 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %224 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %223)
  %225 = sub nsw i32 %224, 2
  %226 = icmp ne i32 %222, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @WARN_ON(i32 %227)
  %229 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %13, align 8
  %230 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %229)
  %231 = sub nsw i32 %230, 1
  %232 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %221
  %235 = load i8*, i8** @nilfs_btree_shrink, align 8
  %236 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %236, i64 %238
  %240 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %239, i32 0, i32 3
  store i8* %235, i8** %240, align 8
  %241 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %242 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 2
  store i64 %244, i64* %242, align 8
  %245 = load i32, i32* %19, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %19, align 4
  %247 = load i8*, i8** @nilfs_btree_nop, align 8
  %248 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %248, i64 %250
  %252 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %251, i32 0, i32 3
  store i8* %247, i8** %252, align 8
  br label %280

253:                                              ; preds = %221
  %254 = load i8*, i8** @nilfs_btree_do_delete, align 8
  %255 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %256 = load i32, i32* %19, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %255, i64 %257
  %259 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %258, i32 0, i32 3
  store i8* %254, i8** %259, align 8
  %260 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %261 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %261, align 8
  br label %305

264:                                              ; preds = %220
  br label %265

265:                                              ; preds = %264, %156
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %19, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %19, align 4
  br label %38

269:                                              ; preds = %38
  %270 = load i8*, i8** @nilfs_btree_do_delete, align 8
  %271 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %272 = load i32, i32* %19, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %271, i64 %273
  %275 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %274, i32 0, i32 3
  store i8* %270, i8** %275, align 8
  %276 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %277 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %277, align 8
  br label %280

280:                                              ; preds = %269, %234
  %281 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %282 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %281)
  store %struct.nilfs_btree_node* %282, %struct.nilfs_btree_node** %13, align 8
  %283 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %13, align 8
  %284 = load i32, i32* %18, align 4
  %285 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %286 = call i8* @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %283, i32 %284, i32 %285)
  %287 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %288 = load i32, i32* %19, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %287, i64 %289
  %291 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  store i8* %286, i8** %292, align 8
  %293 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %294 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %295 = load i32, i32* %19, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %294, i64 %296
  %298 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %297, i32 0, i32 1
  %299 = load %struct.inode*, %struct.inode** %11, align 8
  %300 = call i32 @nilfs_bmap_prepare_end_ptr(%struct.nilfs_bmap* %293, %struct.TYPE_3__* %298, %struct.inode* %299)
  store i32 %300, i32* %23, align 4
  %301 = load i32, i32* %23, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %280
  br label %318

304:                                              ; preds = %280
  br label %305

305:                                              ; preds = %304, %253, %184, %122, %74
  %306 = load i32, i32* %19, align 4
  %307 = load i32*, i32** %9, align 8
  store i32 %306, i32* %307, align 4
  %308 = load i32, i32* %23, align 4
  store i32 %308, i32* %6, align 4
  br label %350

309:                                              ; preds = %174, %112
  %310 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %311 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %312 = load i32, i32* %19, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %311, i64 %313
  %315 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %314, i32 0, i32 1
  %316 = load %struct.inode*, %struct.inode** %11, align 8
  %317 = call i32 @nilfs_bmap_abort_end_ptr(%struct.nilfs_bmap* %310, %struct.TYPE_3__* %315, %struct.inode* %316)
  br label %318

318:                                              ; preds = %309, %303, %68
  %319 = load i32, i32* %19, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %19, align 4
  br label %321

321:                                              ; preds = %341, %318
  %322 = load i32, i32* %19, align 4
  %323 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %324 = icmp sge i32 %322, %323
  br i1 %324, label %325, label %344

325:                                              ; preds = %321
  %326 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %327 = load i32, i32* %19, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %326, i64 %328
  %330 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %329, i32 0, i32 2
  %331 = load %struct.buffer_head*, %struct.buffer_head** %330, align 8
  %332 = call i32 @brelse(%struct.buffer_head* %331)
  %333 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %334 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %335 = load i32, i32* %19, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %334, i64 %336
  %338 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %337, i32 0, i32 1
  %339 = load %struct.inode*, %struct.inode** %11, align 8
  %340 = call i32 @nilfs_bmap_abort_end_ptr(%struct.nilfs_bmap* %333, %struct.TYPE_3__* %338, %struct.inode* %339)
  br label %341

341:                                              ; preds = %325
  %342 = load i32, i32* %19, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %19, align 4
  br label %321

344:                                              ; preds = %321
  %345 = load i32, i32* %19, align 4
  %346 = load i32*, i32** %9, align 8
  store i32 %345, i32* %346, align 4
  %347 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %10, align 8
  %348 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %347, i32 0, i32 0
  store i64 0, i64* %348, align 8
  %349 = load i32, i32* %23, align 4
  store i32 %349, i32* %6, align 4
  br label %350

350:                                              ; preds = %344, %305
  %351 = load i32, i32* %6, align 4
  ret i32 %351
}

declare dso_local i32 @NILFS_BTREE_NODE_NCHILDREN_MIN(i32) #1

declare dso_local i32 @nilfs_btree_node_size(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i8* @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_bmap_prepare_end_ptr(%struct.nilfs_bmap*, %struct.TYPE_3__*, %struct.inode*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_get_block(%struct.nilfs_bmap*, i8*, %struct.buffer_head**) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_abort_end_ptr(%struct.nilfs_bmap*, %struct.TYPE_3__*, %struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
