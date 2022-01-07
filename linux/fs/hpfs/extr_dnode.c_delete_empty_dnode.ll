; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_delete_empty_dnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_delete_empty_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.hpfs_inode_info = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i32, i8*, i8* }
%struct.hpfs_dirent = type { i32, i32, i32, i32, i32 }
%struct.fnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"delete_empty_dnode\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"delete_empty_dnode: root dnode %08x is empty\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"bad pointer to fnode, dnode %08x, pointing to %08x, should be %08lx\00", align 1
@hpfs_pos_subst = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"delete_empty_dnode: pointer to dnode %08x not found in dnode %08x\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"delete_empty_dnode: dnode %08x, first_free == %03x\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"out of memory for dtree balancing\0A\00", align 1
@hpfs_pos_del = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"delete_empty_dnode: empty dnode %08x\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"unbalanced dnode tree, see hpfs.txt 4 more info\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"terminating balancing operation\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"goin'on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @delete_empty_dnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_empty_dnode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpfs_inode_info*, align 8
  %6 = alloca %struct.quad_buffer_head, align 4
  %7 = alloca %struct.dnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpfs_dirent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hpfs_dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.fnode*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.dnode*, align 8
  %20 = alloca %struct.quad_buffer_head, align 4
  %21 = alloca %struct.dnode*, align 8
  %22 = alloca %struct.quad_buffer_head, align 4
  %23 = alloca %struct.hpfs_dirent*, align 8
  %24 = alloca %struct.hpfs_dirent*, align 8
  %25 = alloca %struct.dnode*, align 8
  %26 = alloca %struct.quad_buffer_head, align 4
  %27 = alloca %struct.hpfs_dirent*, align 8
  %28 = alloca %struct.hpfs_dirent*, align 8
  %29 = alloca %struct.dnode*, align 8
  %30 = alloca %struct.quad_buffer_head, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.hpfs_dirent*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %33)
  store %struct.hpfs_inode_info* %34, %struct.hpfs_inode_info** %5, align 8
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %634, %426, %415, %2
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @hpfs_stop_cycles(i32 %38, i32 %39, i32* %13, i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %653

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call %struct.dnode* @hpfs_map_dnode(i32 %46, i32 %47, %struct.quad_buffer_head* %6)
  store %struct.dnode* %48, %struct.dnode** %7, align 8
  %49 = icmp ne %struct.dnode* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %653

51:                                               ; preds = %43
  %52 = load %struct.dnode*, %struct.dnode** %7, align 8
  %53 = getelementptr inbounds %struct.dnode, %struct.dnode* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @le32_to_cpu(i8* %54)
  %56 = icmp sgt i32 %55, 56
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %651

58:                                               ; preds = %51
  %59 = load %struct.dnode*, %struct.dnode** %7, align 8
  %60 = getelementptr inbounds %struct.dnode, %struct.dnode* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @le32_to_cpu(i8* %61)
  %63 = icmp eq i32 %62, 52
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.dnode*, %struct.dnode** %7, align 8
  %66 = getelementptr inbounds %struct.dnode, %struct.dnode* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @le32_to_cpu(i8* %67)
  %69 = icmp eq i32 %68, 56
  br i1 %69, label %70, label %312

70:                                               ; preds = %64, %58
  %71 = load %struct.dnode*, %struct.dnode** %7, align 8
  %72 = getelementptr inbounds %struct.dnode, %struct.dnode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %16, align 4
  %74 = load %struct.dnode*, %struct.dnode** %7, align 8
  %75 = getelementptr inbounds %struct.dnode, %struct.dnode* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @le32_to_cpu(i8* %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.dnode*, %struct.dnode** %7, align 8
  %79 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %78)
  store %struct.hpfs_dirent* %79, %struct.hpfs_dirent** %12, align 8
  %80 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %81 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %86 = call i32 @de_down_pointer(%struct.hpfs_dirent* %85)
  br label %88

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  store i32 %89, i32* %8, align 4
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_6__* @hpfs_sb(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %88
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load %struct.inode*, %struct.inode** %3, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %651

109:                                              ; preds = %100, %97
  br label %110

110:                                              ; preds = %109, %88
  %111 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @hpfs_free_dnode(i32 %114, i32 %115)
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 2048
  store i32 %120, i32* %118, align 4
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 4
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %199

127:                                              ; preds = %110
  %128 = load %struct.inode*, %struct.inode** %3, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.TYPE_6__* @hpfs_sb(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %127
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load %struct.inode*, %struct.inode** %3, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.inode*, %struct.inode** %3, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %144, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146, i64 %150)
  br label %653

152:                                              ; preds = %135
  br label %153

153:                                              ; preds = %152, %127
  %154 = load %struct.inode*, %struct.inode** %3, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call %struct.dnode* @hpfs_map_dnode(i32 %156, i32 %157, %struct.quad_buffer_head* %20)
  store %struct.dnode* %158, %struct.dnode** %19, align 8
  %159 = icmp ne %struct.dnode* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load i32, i32* %9, align 4
  %162 = call i8* @cpu_to_le32(i32 %161)
  %163 = load %struct.dnode*, %struct.dnode** %19, align 8
  %164 = getelementptr inbounds %struct.dnode, %struct.dnode* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.dnode*, %struct.dnode** %19, align 8
  %166 = getelementptr inbounds %struct.dnode, %struct.dnode* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %20)
  %168 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %20)
  br label %169

169:                                              ; preds = %160, %153
  %170 = load %struct.inode*, %struct.inode** %3, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call %struct.fnode* @hpfs_map_fnode(i32 %172, i32 %173, %struct.buffer_head** %18)
  store %struct.fnode* %174, %struct.fnode** %17, align 8
  %175 = icmp ne %struct.fnode* %174, null
  br i1 %175, label %176, label %189

176:                                              ; preds = %169
  %177 = load i32, i32* %8, align 4
  %178 = call i8* @cpu_to_le32(i32 %177)
  %179 = load %struct.fnode*, %struct.fnode** %17, align 8
  %180 = getelementptr inbounds %struct.fnode, %struct.fnode* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i8* %178, i8** %184, align 8
  %185 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %186 = call i32 @mark_buffer_dirty(%struct.buffer_head* %185)
  %187 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %188 = call i32 @brelse(%struct.buffer_head* %187)
  br label %189

189:                                              ; preds = %176, %169
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %192 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = load %struct.inode*, %struct.inode** %3, align 8
  %194 = load i32, i32* @hpfs_pos_subst, align 4
  %195 = load i32, i32* %4, align 4
  %196 = shl i32 %195, 4
  %197 = or i32 %196, 1
  %198 = call i32 @for_all_poss(%struct.inode* %193, i32 %194, i32 %197, i32 12)
  br label %653

199:                                              ; preds = %110
  %200 = load %struct.inode*, %struct.inode** %3, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call %struct.dnode* @hpfs_map_dnode(i32 %202, i32 %203, %struct.quad_buffer_head* %6)
  store %struct.dnode* %204, %struct.dnode** %7, align 8
  %205 = icmp ne %struct.dnode* %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %199
  br label %653

207:                                              ; preds = %199
  store i32 1, i32* %11, align 4
  %208 = load %struct.dnode*, %struct.dnode** %7, align 8
  %209 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %208)
  store %struct.hpfs_dirent* %209, %struct.hpfs_dirent** %15, align 8
  %210 = load %struct.dnode*, %struct.dnode** %7, align 8
  %211 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %210)
  store %struct.hpfs_dirent* %211, %struct.hpfs_dirent** %12, align 8
  br label %212

212:                                              ; preds = %229, %207
  %213 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %214 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %215 = icmp ult %struct.hpfs_dirent* %213, %214
  br i1 %215, label %216, label %234

216:                                              ; preds = %212
  %217 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %218 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %223 = call i32 @de_down_pointer(%struct.hpfs_dirent* %222)
  %224 = load i32, i32* %4, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %241

227:                                              ; preds = %221
  br label %228

228:                                              ; preds = %227, %216
  br label %229

229:                                              ; preds = %228
  %230 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %231 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %230)
  store %struct.hpfs_dirent* %231, %struct.hpfs_dirent** %12, align 8
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %212

234:                                              ; preds = %212
  %235 = load %struct.inode*, %struct.inode** %3, align 8
  %236 = getelementptr inbounds %struct.inode, %struct.inode* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* %9, align 4
  %240 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %237, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %238, i32 %239)
  br label %651

241:                                              ; preds = %226
  %242 = load %struct.inode*, %struct.inode** %3, align 8
  %243 = load i32, i32* @hpfs_pos_subst, align 4
  %244 = load i32, i32* %4, align 4
  %245 = shl i32 %244, 4
  %246 = or i32 %245, 1
  %247 = load i32, i32* %9, align 4
  %248 = shl i32 %247, 4
  %249 = load i32, i32* %11, align 4
  %250 = or i32 %248, %249
  %251 = call i32 @for_all_poss(%struct.inode* %242, i32 %243, i32 %246, i32 %250)
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %285, label %254

254:                                              ; preds = %241
  %255 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %256 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %255, i32 0, i32 0
  store i32 0, i32* %256, align 4
  %257 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %258 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %257, i32 0, i32 3
  %259 = call i32 @le16_add_cpu(i32* %258, i32 -4)
  %260 = load %struct.dnode*, %struct.dnode** %7, align 8
  %261 = getelementptr inbounds %struct.dnode, %struct.dnode* %260, i32 0, i32 2
  %262 = call i32 @le32_add_cpu(i8** %261, i32 -4)
  %263 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %264 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %263)
  %265 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %266 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %265)
  %267 = bitcast %struct.hpfs_dirent* %266 to i8*
  %268 = getelementptr inbounds i8, i8* %267, i64 4
  %269 = load %struct.dnode*, %struct.dnode** %7, align 8
  %270 = bitcast %struct.dnode* %269 to i8*
  %271 = load %struct.dnode*, %struct.dnode** %7, align 8
  %272 = getelementptr inbounds %struct.dnode, %struct.dnode* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @le32_to_cpu(i8* %273)
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %270, i64 %275
  %277 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %278 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %277)
  %279 = bitcast %struct.hpfs_dirent* %278 to i8*
  %280 = ptrtoint i8* %276 to i64
  %281 = ptrtoint i8* %279 to i64
  %282 = sub i64 %280, %281
  %283 = trunc i64 %282 to i32
  %284 = call i32 @memmove(%struct.hpfs_dirent* %264, i8* %268, i32 %283)
  br label %311

285:                                              ; preds = %241
  %286 = load i32, i32* %8, align 4
  %287 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %288 = bitcast %struct.hpfs_dirent* %287 to i8*
  %289 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %290 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @le16_to_cpu(i32 %291)
  %293 = sext i32 %292 to i64
  %294 = getelementptr i8, i8* %288, i64 %293
  %295 = getelementptr i8, i8* %294, i64 -4
  %296 = bitcast i8* %295 to i32*
  store i32 %286, i32* %296, align 4
  %297 = load %struct.inode*, %struct.inode** %3, align 8
  %298 = getelementptr inbounds %struct.inode, %struct.inode* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %8, align 4
  %301 = call %struct.dnode* @hpfs_map_dnode(i32 %299, i32 %300, %struct.quad_buffer_head* %22)
  store %struct.dnode* %301, %struct.dnode** %21, align 8
  %302 = icmp ne %struct.dnode* %301, null
  br i1 %302, label %303, label %310

303:                                              ; preds = %285
  %304 = load i32, i32* %9, align 4
  %305 = call i8* @cpu_to_le32(i32 %304)
  %306 = load %struct.dnode*, %struct.dnode** %21, align 8
  %307 = getelementptr inbounds %struct.dnode, %struct.dnode* %306, i32 0, i32 1
  store i8* %305, i8** %307, align 8
  %308 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %22)
  %309 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %22)
  br label %310

310:                                              ; preds = %303, %285
  br label %311

311:                                              ; preds = %310, %254
  br label %322

312:                                              ; preds = %64
  %313 = load %struct.inode*, %struct.inode** %3, align 8
  %314 = getelementptr inbounds %struct.inode, %struct.inode* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %4, align 4
  %317 = load %struct.dnode*, %struct.dnode** %7, align 8
  %318 = getelementptr inbounds %struct.dnode, %struct.dnode* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @le32_to_cpu(i8* %319)
  %321 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %315, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %316, i32 %320)
  br label %651

322:                                              ; preds = %311
  %323 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %324 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %421, label %327

327:                                              ; preds = %322
  %328 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %329 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %328)
  store %struct.hpfs_dirent* %329, %struct.hpfs_dirent** %23, align 8
  %330 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %23, align 8
  %331 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %327
  br label %649

335:                                              ; preds = %327
  %336 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %23, align 8
  %337 = call i32 @de_down_pointer(%struct.hpfs_dirent* %336)
  store i32 %337, i32* %10, align 4
  %338 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %339 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @le16_to_cpu(i32 %340)
  %342 = load i32, i32* @GFP_NOFS, align 4
  %343 = call %struct.hpfs_dirent* @kmalloc(i32 %341, i32 %342)
  store %struct.hpfs_dirent* %343, %struct.hpfs_dirent** %24, align 8
  %344 = icmp ne %struct.hpfs_dirent* %343, null
  br i1 %344, label %347, label %345

345:                                              ; preds = %335
  %346 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %649

347:                                              ; preds = %335
  %348 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %349 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %350 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %351 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @le16_to_cpu(i32 %352)
  %354 = call i32 @memcpy(%struct.hpfs_dirent* %348, %struct.hpfs_dirent* %349, i32 %353)
  %355 = load %struct.inode*, %struct.inode** %3, align 8
  %356 = getelementptr inbounds %struct.inode, %struct.inode* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.dnode*, %struct.dnode** %7, align 8
  %359 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %360 = call i32 @hpfs_delete_de(i32 %357, %struct.dnode* %358, %struct.hpfs_dirent* %359)
  %361 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %362 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %363 = load %struct.inode*, %struct.inode** %3, align 8
  %364 = load i32, i32* @hpfs_pos_subst, align 4
  %365 = load i32, i32* %9, align 4
  %366 = shl i32 %365, 4
  %367 = load i32, i32* %11, align 4
  %368 = or i32 %366, %367
  %369 = call i32 @for_all_poss(%struct.inode* %363, i32 %364, i32 %368, i32 4)
  %370 = load %struct.inode*, %struct.inode** %3, align 8
  %371 = load i32, i32* @hpfs_pos_del, align 4
  %372 = load i32, i32* %9, align 4
  %373 = shl i32 %372, 4
  %374 = load i32, i32* %11, align 4
  %375 = or i32 %373, %374
  %376 = call i32 @for_all_poss(%struct.inode* %370, i32 %371, i32 %375, i32 1)
  %377 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %378 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %397

381:                                              ; preds = %347
  %382 = load %struct.inode*, %struct.inode** %3, align 8
  %383 = getelementptr inbounds %struct.inode, %struct.inode* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %386 = call i32 @de_down_pointer(%struct.hpfs_dirent* %385)
  %387 = call %struct.dnode* @hpfs_map_dnode(i32 %384, i32 %386, %struct.quad_buffer_head* %26)
  store %struct.dnode* %387, %struct.dnode** %25, align 8
  %388 = icmp ne %struct.dnode* %387, null
  br i1 %388, label %389, label %396

389:                                              ; preds = %381
  %390 = load i32, i32* %10, align 4
  %391 = call i8* @cpu_to_le32(i32 %390)
  %392 = load %struct.dnode*, %struct.dnode** %25, align 8
  %393 = getelementptr inbounds %struct.dnode, %struct.dnode* %392, i32 0, i32 1
  store i8* %391, i8** %393, align 8
  %394 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %26)
  %395 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %26)
  br label %396

396:                                              ; preds = %389, %381
  br label %397

397:                                              ; preds = %396, %347
  %398 = load %struct.inode*, %struct.inode** %3, align 8
  %399 = load i32, i32* %10, align 4
  %400 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %401 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %404 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %407 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %408 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %397
  %412 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %413 = call i32 @de_down_pointer(%struct.hpfs_dirent* %412)
  br label %415

414:                                              ; preds = %397
  br label %415

415:                                              ; preds = %414, %411
  %416 = phi i32 [ %413, %411 ], [ 0, %414 ]
  %417 = call i32 @hpfs_add_to_dnode(%struct.inode* %398, i32 %399, i32 %402, i32 %405, %struct.hpfs_dirent* %406, i32 %416)
  %418 = load i32, i32* %9, align 4
  store i32 %418, i32* %4, align 4
  %419 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %420 = call i32 @kfree(%struct.hpfs_dirent* %419)
  br label %35

421:                                              ; preds = %322
  %422 = load %struct.dnode*, %struct.dnode** %7, align 8
  %423 = call %struct.hpfs_dirent* @dnode_pre_last_de(%struct.dnode* %422)
  store %struct.hpfs_dirent* %423, %struct.hpfs_dirent** %27, align 8
  %424 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %425 = icmp ne %struct.hpfs_dirent* %424, null
  br i1 %425, label %435, label %426

426:                                              ; preds = %421
  %427 = load %struct.inode*, %struct.inode** %3, align 8
  %428 = getelementptr inbounds %struct.inode, %struct.inode* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %9, align 4
  %431 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %429, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %430)
  %432 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %433 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %434 = load i32, i32* %9, align 4
  store i32 %434, i32* %4, align 4
  br label %35

435:                                              ; preds = %421
  %436 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %437 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %435
  br label %649

441:                                              ; preds = %435
  %442 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %443 = call i32 @de_down_pointer(%struct.hpfs_dirent* %442)
  store i32 %443, i32* %10, align 4
  %444 = load %struct.inode*, %struct.inode** %3, align 8
  %445 = getelementptr inbounds %struct.inode, %struct.inode* %444, i32 0, i32 3
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %10, align 4
  %448 = call %struct.dnode* @hpfs_map_dnode(i32 %446, i32 %447, %struct.quad_buffer_head* %30)
  store %struct.dnode* %448, %struct.dnode** %29, align 8
  %449 = icmp ne %struct.dnode* %448, null
  br i1 %449, label %450, label %540

450:                                              ; preds = %441
  %451 = load %struct.dnode*, %struct.dnode** %29, align 8
  %452 = call %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %451)
  store %struct.hpfs_dirent* %452, %struct.hpfs_dirent** %32, align 8
  %453 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %454 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %450
  %458 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %459 = call i32 @de_down_pointer(%struct.hpfs_dirent* %458)
  br label %461

460:                                              ; preds = %450
  br label %461

461:                                              ; preds = %460, %457
  %462 = phi i32 [ %459, %457 ], [ 0, %460 ]
  store i32 %462, i32* %31, align 4
  %463 = load i32, i32* %31, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %507, label %465

465:                                              ; preds = %461
  %466 = load i32, i32* %8, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %507

468:                                              ; preds = %465
  %469 = load %struct.dnode*, %struct.dnode** %29, align 8
  %470 = getelementptr inbounds %struct.dnode, %struct.dnode* %469, i32 0, i32 2
  %471 = load i8*, i8** %470, align 8
  %472 = call i32 @le32_to_cpu(i8* %471)
  %473 = icmp sgt i32 %472, 2044
  br i1 %473, label %474, label %487

474:                                              ; preds = %468
  %475 = load %struct.inode*, %struct.inode** %3, align 8
  %476 = getelementptr inbounds %struct.inode, %struct.inode* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = call %struct.TYPE_6__* @hpfs_sb(i32 %477)
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = icmp sge i32 %480, 2
  br i1 %481, label %482, label %485

482:                                              ; preds = %474
  %483 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %484 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %485

485:                                              ; preds = %482, %474
  %486 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %30)
  br label %649

487:                                              ; preds = %468
  %488 = load %struct.inode*, %struct.inode** %3, align 8
  %489 = getelementptr inbounds %struct.inode, %struct.inode* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 4
  %491 = call %struct.TYPE_6__* @hpfs_sb(i32 %490)
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = icmp sge i32 %493, 2
  br i1 %494, label %495, label %498

495:                                              ; preds = %487
  %496 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %497 = call i32 @pr_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %498

498:                                              ; preds = %495, %487
  %499 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %500 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %499, i32 0, i32 3
  %501 = call i32 @le16_add_cpu(i32* %500, i32 4)
  %502 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %503 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %502, i32 0, i32 0
  store i32 1, i32* %503, align 4
  %504 = load %struct.dnode*, %struct.dnode** %29, align 8
  %505 = getelementptr inbounds %struct.dnode, %struct.dnode* %504, i32 0, i32 2
  %506 = call i32 @le32_add_cpu(i8** %505, i32 4)
  br label %507

507:                                              ; preds = %498, %465, %461
  %508 = load i32, i32* %31, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %522

510:                                              ; preds = %507
  %511 = load i32, i32* %8, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %522, label %513

513:                                              ; preds = %510
  %514 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %515 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %514, i32 0, i32 3
  %516 = call i32 @le16_add_cpu(i32* %515, i32 -4)
  %517 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %518 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %517, i32 0, i32 0
  store i32 0, i32* %518, align 4
  %519 = load %struct.dnode*, %struct.dnode** %29, align 8
  %520 = getelementptr inbounds %struct.dnode, %struct.dnode* %519, i32 0, i32 2
  %521 = call i32 @le32_add_cpu(i8** %520, i32 -4)
  br label %539

522:                                              ; preds = %510, %507
  %523 = load i32, i32* %8, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %538

525:                                              ; preds = %522
  %526 = load i32, i32* %8, align 4
  %527 = call i8* @cpu_to_le32(i32 %526)
  %528 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %529 = bitcast %struct.hpfs_dirent* %528 to i8*
  %530 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %531 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @le16_to_cpu(i32 %532)
  %534 = sext i32 %533 to i64
  %535 = getelementptr i8, i8* %529, i64 %534
  %536 = getelementptr i8, i8* %535, i64 -4
  %537 = bitcast i8* %536 to i8**
  store i8* %527, i8** %537, align 8
  br label %538

538:                                              ; preds = %525, %522
  br label %539

539:                                              ; preds = %538, %513
  br label %541

540:                                              ; preds = %441
  br label %649

541:                                              ; preds = %539
  %542 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %543 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @le16_to_cpu(i32 %544)
  %546 = load i32, i32* @GFP_NOFS, align 4
  %547 = call %struct.hpfs_dirent* @kmalloc(i32 %545, i32 %546)
  store %struct.hpfs_dirent* %547, %struct.hpfs_dirent** %28, align 8
  %548 = icmp ne %struct.hpfs_dirent* %547, null
  br i1 %548, label %552, label %549

549:                                              ; preds = %541
  %550 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %551 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %30)
  br label %649

552:                                              ; preds = %541
  %553 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %30)
  %554 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %30)
  %555 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %556 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %557 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %558 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @le16_to_cpu(i32 %559)
  %561 = call i32 @memcpy(%struct.hpfs_dirent* %555, %struct.hpfs_dirent* %556, i32 %560)
  %562 = load %struct.inode*, %struct.inode** %3, align 8
  %563 = getelementptr inbounds %struct.inode, %struct.inode* %562, i32 0, i32 3
  %564 = load i32, i32* %563, align 4
  %565 = load %struct.dnode*, %struct.dnode** %7, align 8
  %566 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %567 = call i32 @hpfs_delete_de(i32 %564, %struct.dnode* %565, %struct.hpfs_dirent* %566)
  %568 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %569 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %581, label %572

572:                                              ; preds = %552
  %573 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %574 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %573, i32 0, i32 3
  %575 = call i32 @le16_add_cpu(i32* %574, i32 4)
  %576 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %577 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %576, i32 0, i32 0
  store i32 1, i32* %577, align 4
  %578 = load %struct.dnode*, %struct.dnode** %7, align 8
  %579 = getelementptr inbounds %struct.dnode, %struct.dnode* %578, i32 0, i32 2
  %580 = call i32 @le32_add_cpu(i8** %579, i32 4)
  br label %581

581:                                              ; preds = %572, %552
  %582 = load i32, i32* %10, align 4
  %583 = call i8* @cpu_to_le32(i32 %582)
  %584 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %585 = bitcast %struct.hpfs_dirent* %584 to i8*
  %586 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %587 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %586, i32 0, i32 3
  %588 = load i32, i32* %587, align 4
  %589 = call i32 @le16_to_cpu(i32 %588)
  %590 = sext i32 %589 to i64
  %591 = getelementptr i8, i8* %585, i64 %590
  %592 = getelementptr i8, i8* %591, i64 -4
  %593 = bitcast i8* %592 to i8**
  store i8* %583, i8** %593, align 8
  %594 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %595 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %596 = load %struct.inode*, %struct.inode** %3, align 8
  %597 = load i32, i32* @hpfs_pos_subst, align 4
  %598 = load i32, i32* %9, align 4
  %599 = shl i32 %598, 4
  %600 = load i32, i32* %11, align 4
  %601 = sub nsw i32 %600, 1
  %602 = or i32 %599, %601
  %603 = call i32 @for_all_poss(%struct.inode* %596, i32 %597, i32 %602, i32 4)
  %604 = load %struct.inode*, %struct.inode** %3, align 8
  %605 = load i32, i32* @hpfs_pos_subst, align 4
  %606 = load i32, i32* %9, align 4
  %607 = shl i32 %606, 4
  %608 = load i32, i32* %11, align 4
  %609 = or i32 %607, %608
  %610 = load i32, i32* %9, align 4
  %611 = shl i32 %610, 4
  %612 = load i32, i32* %11, align 4
  %613 = sub nsw i32 %612, 1
  %614 = or i32 %611, %613
  %615 = call i32 @for_all_poss(%struct.inode* %604, i32 %605, i32 %609, i32 %614)
  %616 = load i32, i32* %8, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %634

618:                                              ; preds = %581
  %619 = load %struct.inode*, %struct.inode** %3, align 8
  %620 = getelementptr inbounds %struct.inode, %struct.inode* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %623 = call i32 @de_down_pointer(%struct.hpfs_dirent* %622)
  %624 = call %struct.dnode* @hpfs_map_dnode(i32 %621, i32 %623, %struct.quad_buffer_head* %30)
  store %struct.dnode* %624, %struct.dnode** %29, align 8
  %625 = icmp ne %struct.dnode* %624, null
  br i1 %625, label %626, label %633

626:                                              ; preds = %618
  %627 = load i32, i32* %10, align 4
  %628 = call i8* @cpu_to_le32(i32 %627)
  %629 = load %struct.dnode*, %struct.dnode** %29, align 8
  %630 = getelementptr inbounds %struct.dnode, %struct.dnode* %629, i32 0, i32 1
  store i8* %628, i8** %630, align 8
  %631 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %30)
  %632 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %30)
  br label %633

633:                                              ; preds = %626, %618
  br label %634

634:                                              ; preds = %633, %581
  %635 = load %struct.inode*, %struct.inode** %3, align 8
  %636 = load i32, i32* %10, align 4
  %637 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %638 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %637, i32 0, i32 2
  %639 = load i32, i32* %638, align 4
  %640 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %641 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 4
  %643 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %644 = load i32, i32* %31, align 4
  %645 = call i32 @hpfs_add_to_dnode(%struct.inode* %635, i32 %636, i32 %639, i32 %642, %struct.hpfs_dirent* %643, i32 %644)
  %646 = load i32, i32* %9, align 4
  store i32 %646, i32* %4, align 4
  %647 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %648 = call i32 @kfree(%struct.hpfs_dirent* %647)
  br label %35

649:                                              ; preds = %549, %540, %485, %440, %345, %334
  %650 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  br label %651

651:                                              ; preds = %649, %312, %234, %103, %57
  %652 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %653

653:                                              ; preds = %651, %206, %189, %141, %50, %42
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i64 @hpfs_stop_cycles(i32, i32, i32*, i32*, i8*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(i32, i32, %struct.quad_buffer_head*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.TYPE_6__* @hpfs_sb(i32) #1

declare dso_local i32 @hpfs_error(i32, i8*, i32, ...) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_free_dnode(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @for_all_poss(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le32_add_cpu(i8**, i32) #1

declare dso_local i32 @memmove(%struct.hpfs_dirent*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.hpfs_dirent* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(%struct.hpfs_dirent*, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @hpfs_delete_de(i32, %struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_add_to_dnode(%struct.inode*, i32, i32, i32, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @kfree(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_pre_last_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_last_de(%struct.dnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
