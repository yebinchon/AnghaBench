; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, %struct.TYPE_3__, %struct.buffer_head*, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.buffer_head = type { i64 }
%struct.nilfs_bmap_stats = type { i64 }
%struct.nilfs_btree_node = type { i32 }
%struct.inode = type { i32 }

@NILFS_BTREE_LEVEL_DATA = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@nilfs_btree_do_insert = common dso_local global i8* null, align 8
@nilfs_btree_carry_left = common dso_local global i8* null, align 8
@nilfs_btree_carry_right = common dso_local global i8* null, align 8
@nilfs_btree_split = common dso_local global i8* null, align 8
@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@nilfs_btree_grow = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32*, i32, i32, %struct.nilfs_bmap_stats*)* @nilfs_btree_prepare_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_prepare_insert(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32* %2, i32 %3, i32 %4, %struct.nilfs_bmap_stats* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_bmap*, align 8
  %9 = alloca %struct.nilfs_btree_path*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nilfs_bmap_stats*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.nilfs_btree_node*, align 8
  %16 = alloca %struct.nilfs_btree_node*, align 8
  %17 = alloca %struct.nilfs_btree_node*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.inode*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %8, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nilfs_bmap_stats* %5, %struct.nilfs_bmap_stats** %13, align 8
  store %struct.inode* null, %struct.inode** %24, align 8
  %25 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %26 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @NILFS_BTREE_LEVEL_DATA, align 4
  store i32 %27, i32* %20, align 4
  %28 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %29 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %6
  %32 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %33 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @nilfs_btree_find_target_v(%struct.nilfs_bmap* %32, %struct.nilfs_btree_path* %33, i32 %34)
  %36 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %37 = load i32, i32* %20, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %36, i64 %38
  %40 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 %35, i64* %41, align 8
  %42 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %43 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %42)
  store %struct.inode* %43, %struct.inode** %24, align 8
  br label %44

44:                                               ; preds = %31, %6
  %45 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %46 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %46, i64 %48
  %50 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %49, i32 0, i32 1
  %51 = load %struct.inode*, %struct.inode** %24, align 8
  %52 = call i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap* %45, %struct.TYPE_3__* %50, %struct.inode* %51)
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %396

56:                                               ; preds = %44
  %57 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %58 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %57)
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %59, i32* %20, align 4
  br label %60

60:                                               ; preds = %255, %56
  %61 = load i32, i32* %20, align 4
  %62 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %63 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %62)
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %258

66:                                               ; preds = %60
  %67 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %68 = load i32, i32* %20, align 4
  %69 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %67, i32 %68)
  store %struct.nilfs_btree_node* %69, %struct.nilfs_btree_node** %15, align 8
  %70 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %15, align 8
  %71 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %70)
  %72 = load i32, i32* %22, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load i8*, i8** @nilfs_btree_do_insert, align 8
  %76 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %76, i64 %78
  %80 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %79, i32 0, i32 3
  store i8* %75, i8** %80, align 8
  %81 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %82 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %348

85:                                               ; preds = %66
  %86 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %87 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %88 = load i32, i32* %20, align 4
  %89 = add nsw i32 %88, 1
  %90 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %86, %struct.nilfs_btree_path* %87, i32 %89, i32* %21)
  store %struct.nilfs_btree_node* %90, %struct.nilfs_btree_node** %16, align 8
  %91 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %91, i64 %94
  %96 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %85
  %101 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %16, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %21, align 4
  %105 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %101, i32 %103, i32 %104)
  store i32 %105, i32* %18, align 4
  %106 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @nilfs_btree_get_block(%struct.nilfs_bmap* %106, i32 %107, %struct.buffer_head** %14)
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %23, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %361

112:                                              ; preds = %100
  %113 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %114 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %116, %struct.nilfs_btree_node** %17, align 8
  %117 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %17, align 8
  %118 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %117)
  %119 = load i32, i32* %22, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %112
  %122 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %123 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %123, i64 %125
  %127 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %126, i32 0, i32 2
  store %struct.buffer_head* %122, %struct.buffer_head** %127, align 8
  %128 = load i8*, i8** @nilfs_btree_carry_left, align 8
  %129 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %129, i64 %131
  %133 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %132, i32 0, i32 3
  store i8* %128, i8** %133, align 8
  %134 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %135 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %348

138:                                              ; preds = %112
  %139 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %140 = call i32 @brelse(%struct.buffer_head* %139)
  br label %141

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141, %85
  %143 = load i32, i32* %19, align 4
  %144 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %16, align 8
  %145 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %144)
  %146 = sub nsw i32 %145, 1
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %190

148:                                              ; preds = %142
  %149 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %16, align 8
  %150 = load i32, i32* %19, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %149, i32 %151, i32 %152)
  store i32 %153, i32* %18, align 4
  %154 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @nilfs_btree_get_block(%struct.nilfs_bmap* %154, i32 %155, %struct.buffer_head** %14)
  store i32 %156, i32* %23, align 4
  %157 = load i32, i32* %23, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %361

160:                                              ; preds = %148
  %161 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %162 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %164, %struct.nilfs_btree_node** %17, align 8
  %165 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %17, align 8
  %166 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %165)
  %167 = load i32, i32* %22, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %160
  %170 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %171 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %171, i64 %173
  %175 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %174, i32 0, i32 2
  store %struct.buffer_head* %170, %struct.buffer_head** %175, align 8
  %176 = load i8*, i8** @nilfs_btree_carry_right, align 8
  %177 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %177, i64 %179
  %181 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %180, i32 0, i32 3
  store i8* %176, i8** %181, align 8
  %182 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %183 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %183, align 8
  br label %348

186:                                              ; preds = %160
  %187 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %188 = call i32 @brelse(%struct.buffer_head* %187)
  br label %189

189:                                              ; preds = %186
  br label %190

190:                                              ; preds = %189, %142
  %191 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %192 = load i32, i32* %20, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %191, i64 %194
  %196 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1
  %200 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %200, i64 %202
  %204 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i64 %199, i64* %205, align 8
  %206 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %207 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %207, i64 %209
  %211 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %210, i32 0, i32 1
  %212 = load %struct.inode*, %struct.inode** %24, align 8
  %213 = call i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap* %206, %struct.TYPE_3__* %211, %struct.inode* %212)
  store i32 %213, i32* %23, align 4
  %214 = load i32, i32* %23, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %190
  br label %361

217:                                              ; preds = %190
  %218 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %219 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %220 = load i32, i32* %20, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %219, i64 %221
  %223 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @nilfs_btree_get_new_block(%struct.nilfs_bmap* %218, i64 %225, %struct.buffer_head** %14)
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %23, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %217
  br label %352

230:                                              ; preds = %217
  %231 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %232 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %232, align 8
  %235 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %236 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = inttoptr i64 %237 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %238, %struct.nilfs_btree_node** %17, align 8
  %239 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %17, align 8
  %240 = load i32, i32* %20, align 4
  %241 = load i32, i32* %22, align 4
  %242 = call i32 @nilfs_btree_node_init(%struct.nilfs_btree_node* %239, i32 0, i32 %240, i32 0, i32 %241, i32* null, i32* null)
  %243 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %244 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %245 = load i32, i32* %20, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %244, i64 %246
  %248 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %247, i32 0, i32 2
  store %struct.buffer_head* %243, %struct.buffer_head** %248, align 8
  %249 = load i8*, i8** @nilfs_btree_split, align 8
  %250 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %251 = load i32, i32* %20, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %250, i64 %252
  %254 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %253, i32 0, i32 3
  store i8* %249, i8** %254, align 8
  br label %255

255:                                              ; preds = %230
  %256 = load i32, i32* %20, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %20, align 4
  br label %60

258:                                              ; preds = %60
  %259 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %260 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %259)
  store %struct.nilfs_btree_node* %260, %struct.nilfs_btree_node** %15, align 8
  %261 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %15, align 8
  %262 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %261)
  %263 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %276

265:                                              ; preds = %258
  %266 = load i8*, i8** @nilfs_btree_do_insert, align 8
  %267 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %267, i64 %269
  %271 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %270, i32 0, i32 3
  store i8* %266, i8** %271, align 8
  %272 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %273 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 1
  store i64 %275, i64* %273, align 8
  br label %348

276:                                              ; preds = %258
  %277 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %278 = load i32, i32* %20, align 4
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %277, i64 %280
  %282 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  %286 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %287 = load i32, i32* %20, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %286, i64 %288
  %290 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 0
  store i64 %285, i64* %291, align 8
  %292 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %293 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %294 = load i32, i32* %20, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %293, i64 %295
  %297 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %296, i32 0, i32 1
  %298 = load %struct.inode*, %struct.inode** %24, align 8
  %299 = call i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap* %292, %struct.TYPE_3__* %297, %struct.inode* %298)
  store i32 %299, i32* %23, align 4
  %300 = load i32, i32* %23, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %276
  br label %361

303:                                              ; preds = %276
  %304 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %305 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %306 = load i32, i32* %20, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %305, i64 %307
  %309 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @nilfs_btree_get_new_block(%struct.nilfs_bmap* %304, i64 %311, %struct.buffer_head** %14)
  store i32 %312, i32* %23, align 4
  %313 = load i32, i32* %23, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %303
  br label %352

316:                                              ; preds = %303
  %317 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %318 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = inttoptr i64 %319 to %struct.nilfs_btree_node*
  %321 = load i32, i32* %20, align 4
  %322 = load i32, i32* %22, align 4
  %323 = call i32 @nilfs_btree_node_init(%struct.nilfs_btree_node* %320, i32 0, i32 %321, i32 0, i32 %322, i32* null, i32* null)
  %324 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %325 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %326 = load i32, i32* %20, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %325, i64 %327
  %329 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %328, i32 0, i32 2
  store %struct.buffer_head* %324, %struct.buffer_head** %329, align 8
  %330 = load i8*, i8** @nilfs_btree_grow, align 8
  %331 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %332 = load i32, i32* %20, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %331, i64 %333
  %335 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %334, i32 0, i32 3
  store i8* %330, i8** %335, align 8
  %336 = load i32, i32* %20, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %20, align 4
  %338 = load i8*, i8** @nilfs_btree_do_insert, align 8
  %339 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %340 = load i32, i32* %20, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %339, i64 %341
  %343 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %342, i32 0, i32 3
  store i8* %338, i8** %343, align 8
  %344 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %345 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %346, 2
  store i64 %347, i64* %345, align 8
  br label %348

348:                                              ; preds = %316, %265, %169, %121, %74
  %349 = load i32, i32* %20, align 4
  %350 = load i32*, i32** %10, align 8
  store i32 %349, i32* %350, align 4
  %351 = load i32, i32* %23, align 4
  store i32 %351, i32* %7, align 4
  br label %402

352:                                              ; preds = %315, %229
  %353 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %354 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %355 = load i32, i32* %20, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %354, i64 %356
  %358 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %357, i32 0, i32 1
  %359 = load %struct.inode*, %struct.inode** %24, align 8
  %360 = call i32 @nilfs_bmap_abort_alloc_ptr(%struct.nilfs_bmap* %353, %struct.TYPE_3__* %358, %struct.inode* %359)
  br label %361

361:                                              ; preds = %352, %302, %216, %159, %111
  %362 = load i32, i32* %20, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %20, align 4
  br label %364

364:                                              ; preds = %384, %361
  %365 = load i32, i32* %20, align 4
  %366 = load i32, i32* @NILFS_BTREE_LEVEL_DATA, align 4
  %367 = icmp sgt i32 %365, %366
  br i1 %367, label %368, label %387

368:                                              ; preds = %364
  %369 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %370 = load i32, i32* %20, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %369, i64 %371
  %373 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %372, i32 0, i32 2
  %374 = load %struct.buffer_head*, %struct.buffer_head** %373, align 8
  %375 = call i32 @nilfs_btnode_delete(%struct.buffer_head* %374)
  %376 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %377 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %378 = load i32, i32* %20, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %377, i64 %379
  %381 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %380, i32 0, i32 1
  %382 = load %struct.inode*, %struct.inode** %24, align 8
  %383 = call i32 @nilfs_bmap_abort_alloc_ptr(%struct.nilfs_bmap* %376, %struct.TYPE_3__* %381, %struct.inode* %382)
  br label %384

384:                                              ; preds = %368
  %385 = load i32, i32* %20, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %20, align 4
  br label %364

387:                                              ; preds = %364
  %388 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %389 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %390 = load i32, i32* %20, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %389, i64 %391
  %393 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %392, i32 0, i32 1
  %394 = load %struct.inode*, %struct.inode** %24, align 8
  %395 = call i32 @nilfs_bmap_abort_alloc_ptr(%struct.nilfs_bmap* %388, %struct.TYPE_3__* %393, %struct.inode* %394)
  br label %396

396:                                              ; preds = %387, %55
  %397 = load i32, i32* %20, align 4
  %398 = load i32*, i32** %10, align 8
  store i32 %397, i32* %398, align 4
  %399 = load %struct.nilfs_bmap_stats*, %struct.nilfs_bmap_stats** %13, align 8
  %400 = getelementptr inbounds %struct.nilfs_bmap_stats, %struct.nilfs_bmap_stats* %399, i32 0, i32 0
  store i64 0, i64* %400, align 8
  %401 = load i32, i32* %23, align 4
  store i32 %401, i32* %7, align 4
  br label %402

402:                                              ; preds = %396, %348
  %403 = load i32, i32* %7, align 4
  ret i32 %403
}

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local i64 @nilfs_btree_find_target_v(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap*, %struct.TYPE_3__*, %struct.inode*) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_btree_get_block(%struct.nilfs_bmap*, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_get_new_block(%struct.nilfs_bmap*, i64, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_btree_node_init(%struct.nilfs_btree_node*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_abort_alloc_ptr(%struct.nilfs_bmap*, %struct.TYPE_3__*, %struct.inode*) #1

declare dso_local i32 @nilfs_btnode_delete(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
