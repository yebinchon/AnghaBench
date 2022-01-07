; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_file_extend.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_file_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.hfsplus_sb_info = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hfsplus_inode_info = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"extend alloc file! (%llu,%u,%u)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"extend %lu: %u,%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"first extents\0A\00", align 1
@HFSPLUS_EXT_DIRTY = common dso_local global i32 0, align 4
@HFSPLUS_I_ALLOC_DIRTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"insert new extent\0A\00", align 1
@HFSPLUS_EXT_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_file_extend(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.hfsplus_sb_info*, align 8
  %8 = alloca %struct.hfsplus_inode_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %16)
  store %struct.hfsplus_sb_info* %17, %struct.hfsplus_sb_info** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %18)
  store %struct.hfsplus_inode_info* %19, %struct.hfsplus_inode_info** %8, align 8
  %20 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 8
  %26 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %27 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %30 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = add nsw i32 %32, 8
  %34 = icmp slt i32 %25, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %2
  %36 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %37 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 8
  %42 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %43 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %46 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %295

51:                                               ; preds = %2
  %52 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %53 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %52, i32 0, i32 7
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %56 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %59 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %64 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %63, i32 0, i32 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i64 @hfsplus_ext_lastblock(%struct.TYPE_7__* %65)
  store i64 %66, i64* %11, align 8
  br label %81

67:                                               ; preds = %51
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %70 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @hfsplus_ext_read_extent(%struct.inode* %68, i64 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %229

76:                                               ; preds = %67
  %77 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %78 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %77, i32 0, i32 6
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i64 @hfsplus_ext_lastblock(%struct.TYPE_7__* %79)
  store i64 %80, i64* %11, align 8
  br label %81

81:                                               ; preds = %76, %62
  %82 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %83 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load %struct.super_block*, %struct.super_block** %6, align 8
  %86 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %87 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @hfsplus_block_allocate(%struct.super_block* %85, i64 %89, i64 %90, i64* %10)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %7, align 8
  %94 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = icmp sge i64 %92, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %81
  %99 = load %struct.super_block*, %struct.super_block** %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @hfsplus_block_allocate(%struct.super_block* %99, i64 %100, i64 0, i64* %10)
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %11, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOSPC, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %12, align 4
  br label %229

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %81
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.super_block*, %struct.super_block** %6, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* @GFP_NOFS, align 4
  %117 = call i32 @sb_issue_zeroout(%struct.super_block* %113, i64 %114, i64 %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %229

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %109
  %123 = load i32, i32* @EXTENT, align 4
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %126, i64 %127, i64 %128)
  %130 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %131 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %134 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sle i64 %132, %135
  br i1 %136, label %137, label %189

137:                                              ; preds = %122
  %138 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %139 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %159, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @EXTENT, align 4
  %144 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %145 = load i64, i64* %9, align 8
  %146 = call i8* @cpu_to_be32(i64 %145)
  %147 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %148 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %147, i32 0, i32 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i8* %146, i8** %151, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i8* @cpu_to_be32(i64 %152)
  %154 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %155 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %154, i32 0, i32 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i8* %153, i8** %158, align 8
  store i32 0, i32* %12, align 4
  br label %175

159:                                              ; preds = %137
  %160 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %161 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %160, i32 0, i32 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %164 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @hfsplus_add_extent(%struct.TYPE_7__* %162, i64 %165, i64 %166, i64 %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @ENOSPC, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %159
  br label %249

174:                                              ; preds = %159
  br label %175

175:                                              ; preds = %174, %142
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %175
  %179 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %180 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %179, i32 0, i32 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = call i32 @hfsplus_dump_extent(%struct.TYPE_7__* %181)
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %185 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  br label %188

188:                                              ; preds = %178, %175
  br label %228

189:                                              ; preds = %122
  %190 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %191 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %190, i32 0, i32 6
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %194 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %197 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %195, %198
  %200 = load i64, i64* %9, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @hfsplus_add_extent(%struct.TYPE_7__* %192, i64 %199, i64 %200, i64 %201)
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %189
  %206 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %207 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %206, i32 0, i32 6
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = call i32 @hfsplus_dump_extent(%struct.TYPE_7__* %208)
  %210 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %211 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %212 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %217 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, %215
  store i64 %219, i64* %217, align 8
  br label %227

220:                                              ; preds = %189
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @ENOSPC, align 4
  %223 = sub nsw i32 0, %222
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %249

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %226, %205
  br label %228

228:                                              ; preds = %227, %188
  br label %229

229:                                              ; preds = %257, %256, %228, %120, %105, %75
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %244, label %232

232:                                              ; preds = %229
  %233 = load i64, i64* %10, align 8
  %234 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %235 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, %233
  store i64 %237, i64* %235, align 8
  %238 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %239 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %238, i32 0, i32 7
  %240 = call i32 @mutex_unlock(i32* %239)
  %241 = load %struct.inode*, %struct.inode** %4, align 8
  %242 = load i32, i32* @HFSPLUS_I_ALLOC_DIRTY, align 4
  %243 = call i32 @hfsplus_mark_inode_dirty(%struct.inode* %241, i32 %242)
  store i32 0, i32* %3, align 4
  br label %295

244:                                              ; preds = %229
  %245 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %246 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %245, i32 0, i32 7
  %247 = call i32 @mutex_unlock(i32* %246)
  %248 = load i32, i32* %12, align 4
  store i32 %248, i32* %3, align 4
  br label %295

249:                                              ; preds = %225, %173
  %250 = load i32, i32* @EXTENT, align 4
  %251 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %252 = load %struct.inode*, %struct.inode** %4, align 8
  %253 = call i32 @hfsplus_ext_write_extent_locked(%struct.inode* %252)
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  br label %229

257:                                              ; preds = %249
  %258 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %259 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %258, i32 0, i32 6
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = call i32 @memset(%struct.TYPE_7__* %260, i32 0, i32 4)
  %262 = load i64, i64* %9, align 8
  %263 = call i8* @cpu_to_be32(i64 %262)
  %264 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %265 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %264, i32 0, i32 6
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  store i8* %263, i8** %268, align 8
  %269 = load i64, i64* %10, align 8
  %270 = call i8* @cpu_to_be32(i64 %269)
  %271 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %272 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %271, i32 0, i32 6
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i64 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  store i8* %270, i8** %275, align 8
  %276 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %277 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %276, i32 0, i32 6
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = call i32 @hfsplus_dump_extent(%struct.TYPE_7__* %278)
  %280 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %281 = load i32, i32* @HFSPLUS_EXT_NEW, align 4
  %282 = or i32 %280, %281
  %283 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %284 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 8
  %287 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %288 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %291 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %290, i32 0, i32 3
  store i64 %289, i64* %291, align 8
  %292 = load i64, i64* %10, align 8
  %293 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %294 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %293, i32 0, i32 5
  store i64 %292, i64* %294, align 8
  store i32 0, i32* %12, align 4
  br label %229

295:                                              ; preds = %244, %232, %35
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @hfsplus_ext_lastblock(%struct.TYPE_7__*) #1

declare dso_local i32 @hfsplus_ext_read_extent(%struct.inode*, i64) #1

declare dso_local i64 @hfsplus_block_allocate(%struct.super_block*, i64, i64, i64*) #1

declare dso_local i32 @sb_issue_zeroout(%struct.super_block*, i64, i64, i32) #1

declare dso_local i32 @hfs_dbg(i32, i8*, ...) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @hfsplus_add_extent(%struct.TYPE_7__*, i64, i64, i64) #1

declare dso_local i32 @hfsplus_dump_extent(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hfsplus_mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @hfsplus_ext_write_extent_locked(%struct.inode*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
