; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c___ocfs2_move_extents_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c___ocfs2_move_extents_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.ocfs2_move_extents_context = type { i32, i32, i32, i32, i32, i32, %struct.ocfs2_move_extents*, %struct.inode* }
%struct.ocfs2_move_extents = type { i32, i32, i32, i8*, i8*, i32, i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_super = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Inode: %llu, start: %llu, len: %llu, cstart: %u, clen: %u, thresh: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"#Defrag: cpos: %u, phys_cpos: %u, alloc_size: %u, len_defraged: %u\0A\00", align 1
@OCFS2_MOVE_EXT_FL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.ocfs2_move_extents_context*)* @__ocfs2_move_extents_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_move_extents_range(%struct.buffer_head* %0, %struct.ocfs2_move_extents_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.ocfs2_move_extents_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.inode*, align 8
  %19 = alloca %struct.ocfs2_dinode*, align 8
  %20 = alloca %struct.ocfs2_move_extents*, align 8
  %21 = alloca %struct.ocfs2_super*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %4, align 8
  store %struct.ocfs2_move_extents_context* %1, %struct.ocfs2_move_extents_context** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %22, i32 0, i32 7
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %18, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %28, %struct.ocfs2_dinode** %19, align 8
  %29 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %29, i32 0, i32 6
  %31 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %30, align 8
  store %struct.ocfs2_move_extents* %31, %struct.ocfs2_move_extents** %20, align 8
  %32 = load %struct.inode*, %struct.inode** %18, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.ocfs2_super* @OCFS2_SB(i32 %34)
  store %struct.ocfs2_super* %35, %struct.ocfs2_super** %21, align 8
  %36 = load %struct.inode*, %struct.inode** %18, align 8
  %37 = call i64 @i_size_read(%struct.inode* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %2
  %40 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %41 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %2
  store i32 0, i32* %3, align 4
  br label %251

45:                                               ; preds = %39
  %46 = load %struct.inode*, %struct.inode** %18, align 8
  %47 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %251

54:                                               ; preds = %45
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %56 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le64_to_cpu(i32 %57)
  %59 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %60 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %62 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %61, i32 0, i32 4
  %63 = load %struct.inode*, %struct.inode** %18, align 8
  %64 = call i32 @INODE_CACHE(%struct.inode* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %66 = call i32 @ocfs2_init_dinode_extent_tree(i32* %62, i32 %64, %struct.buffer_head* %65)
  %67 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %68 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %67, i32 0, i32 3
  %69 = call i32 @ocfs2_init_dealloc_ctxt(i32* %68)
  %70 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %71 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %8, align 4
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %74 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %77 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ocfs2_clusters_for_bytes(i32 %75, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %81 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %84 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  %87 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %88 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %86, %89
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %54
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %13, align 4
  br label %99

98:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %104 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %107 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %105, %108
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp sle i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %219

113:                                              ; preds = %102
  br label %122

114:                                              ; preds = %99
  %115 = load %struct.inode*, %struct.inode** %18, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %119 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ocfs2_blocks_to_clusters(i32 %117, i32 %120)
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %114, %113
  %123 = load %struct.inode*, %struct.inode** %18, align 8
  %124 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %129 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = trunc i64 %131 to i32
  %133 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %134 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %132, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %211, %122
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %218

146:                                              ; preds = %143
  %147 = load %struct.inode*, %struct.inode** %18, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @ocfs2_get_clusters(%struct.inode* %147, i32 %148, i32* %11, i32* %14, i32* %7)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @mlog_errno(i32 %153)
  br label %225

155:                                              ; preds = %146
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %159, %155
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %167, %164
  br label %211

169:                                              ; preds = %161
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %169
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @ocfs2_calc_extent_defrag_len(i32* %14, i32* %15, i32 %173, i32* %9)
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 0, i32* %9, align 4
  br label %211

178:                                              ; preds = %172
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %15, align 4
  %183 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @ocfs2_defrag_extent(%struct.ocfs2_move_extents_context* %184, i32 %185, i32 %186, i32* %14, i32 %187)
  store i32 %188, i32* %6, align 4
  br label %199

189:                                              ; preds = %169
  %190 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @ocfs2_move_extent(%struct.ocfs2_move_extents_context* %190, i32 %191, i32 %192, i32* %17, i32 %193, i32 %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %17, align 4
  br label %199

199:                                              ; preds = %189, %178
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @mlog_errno(i32 %203)
  br label %225

205:                                              ; preds = %199
  %206 = load i32, i32* %14, align 4
  %207 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %208 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %205, %177, %168
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %13, align 4
  %217 = sub nsw i32 %216, %215
  store i32 %217, i32* %13, align 4
  br label %143

218:                                              ; preds = %143
  br label %219

219:                                              ; preds = %218, %112
  %220 = load i32, i32* @OCFS2_MOVE_EXT_FL_COMPLETE, align 4
  %221 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %222 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %219, %202, %152
  %226 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %227 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %230 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @ocfs2_clusters_to_bytes(i32 %228, i32 %231)
  %233 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %234 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %233, i32 0, i32 4
  store i8* %232, i8** %234, align 8
  %235 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %236 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %239 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @ocfs2_clusters_to_bytes(i32 %237, i32 %240)
  %242 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %20, align 8
  %243 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  %244 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %245 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %244, i32 1)
  %246 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %247 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %5, align 8
  %248 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %247, i32 0, i32 3
  %249 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %246, i32* %248)
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %225, %53, %44
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(i32*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_calc_extent_defrag_len(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ocfs2_defrag_extent(%struct.ocfs2_move_extents_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @ocfs2_move_extent(%struct.ocfs2_move_extents_context*, i32, i32, i32*, i32, i32) #1

declare dso_local i8* @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
