; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_map_fnode_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_map_fnode_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i32, i32, i32, i32, i64 }
%struct.super_block = type { i32 }
%struct.fnode = type { i8*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i32, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"out of memory, can't map dirent\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"fnode %08x has non-directory parent %08x\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"pointer to dnode %08x not found in dnode %08x\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"map_fnode_dirent #1\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"map_fnode_dirent #2\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"dirent for fnode %08x not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpfs_dirent* @map_fnode_dirent(%struct.super_block* %0, i64 %1, %struct.fnode* %2, %struct.quad_buffer_head* %3) #0 {
  %5 = alloca %struct.hpfs_dirent*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fnode*, align 8
  %9 = alloca %struct.quad_buffer_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dnode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fnode*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.hpfs_dirent*, align 8
  %20 = alloca %struct.hpfs_dirent*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.fnode* %2, %struct.fnode** %8, align 8
  store %struct.quad_buffer_head* %3, %struct.quad_buffer_head** %9, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %26 = load %struct.fnode*, %struct.fnode** %8, align 8
  %27 = getelementptr inbounds %struct.fnode, %struct.fnode* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = call i8* @kmalloc(i32 256, i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %267

34:                                               ; preds = %4
  %35 = load %struct.fnode*, %struct.fnode** %8, align 8
  %36 = getelementptr inbounds %struct.fnode, %struct.fnode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 15
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.fnode*, %struct.fnode** %8, align 8
  %43 = getelementptr inbounds %struct.fnode, %struct.fnode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  store i32 %44, i32* %12, align 4
  %45 = call i32 @memcpy(i8* %40, i8* %41, i32 %44)
  br label %53

46:                                               ; preds = %34
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @memcpy(i8* %47, i8* %48, i32 15)
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 15
  %52 = call i32 @memset(i8* %51, i32 255, i32 241)
  store i32 15, i32* %12, align 4
  store i32 256, i32* %13, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = load %struct.fnode*, %struct.fnode** %8, align 8
  %56 = getelementptr inbounds %struct.fnode, %struct.fnode* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @le32_to_cpu(i32 %57)
  %59 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %54, i64 %58, %struct.buffer_head** %18)
  store %struct.fnode* %59, %struct.fnode** %17, align 8
  %60 = icmp ne %struct.fnode* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @kfree(i8* %62)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %267

64:                                               ; preds = %53
  %65 = load %struct.fnode*, %struct.fnode** %17, align 8
  %66 = call i32 @fnode_is_dir(%struct.fnode* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  %71 = load %struct.super_block*, %struct.super_block** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.fnode*, %struct.fnode** %8, align 8
  %74 = getelementptr inbounds %struct.fnode, %struct.fnode* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @le32_to_cpu(i32 %75)
  %77 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %76)
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @kfree(i8* %78)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %267

80:                                               ; preds = %64
  %81 = load %struct.fnode*, %struct.fnode** %17, align 8
  %82 = getelementptr inbounds %struct.fnode, %struct.fnode* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  store i64 %88, i64* %15, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  br label %91

91:                                               ; preds = %189, %80
  store i64 0, i64* %16, align 8
  br label %92

92:                                               ; preds = %258, %91
  %93 = load %struct.super_block*, %struct.super_block** %6, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %96 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %93, i64 %94, %struct.quad_buffer_head* %95)
  store %struct.dnode* %96, %struct.dnode** %14, align 8
  %97 = icmp ne %struct.dnode* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @kfree(i8* %99)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %267

101:                                              ; preds = %92
  %102 = load %struct.dnode*, %struct.dnode** %14, align 8
  %103 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %102)
  store %struct.hpfs_dirent* %103, %struct.hpfs_dirent** %20, align 8
  %104 = load %struct.dnode*, %struct.dnode** %14, align 8
  %105 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %104)
  store %struct.hpfs_dirent* %105, %struct.hpfs_dirent** %19, align 8
  %106 = load i64, i64* %16, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %125, %108
  %110 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %111 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %20, align 8
  %112 = icmp ult %struct.hpfs_dirent* %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %115 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %120 = call i64 @de_down_pointer(%struct.hpfs_dirent* %119)
  %121 = load i64, i64* %16, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %191

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %113
  %126 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %127 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %126)
  store %struct.hpfs_dirent* %127, %struct.hpfs_dirent** %19, align 8
  br label %109

128:                                              ; preds = %109
  %129 = load %struct.super_block*, %struct.super_block** %6, align 8
  %130 = load i64, i64* %16, align 8
  %131 = load i64, i64* %15, align 8
  %132 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %129, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %130, i64 %131)
  %133 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %134 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %133)
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @kfree(i8* %135)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %267

137:                                              ; preds = %101
  br label %138

138:                                              ; preds = %229, %137
  %139 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %140 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @le32_to_cpu(i32 %141)
  %143 = load i64, i64* %7, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @kfree(i8* %146)
  %148 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  store %struct.hpfs_dirent* %148, %struct.hpfs_dirent** %5, align 8
  br label %267

149:                                              ; preds = %138
  %150 = load %struct.super_block*, %struct.super_block** %6, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %154 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %157 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %160 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @hpfs_compare_names(%struct.super_block* %150, i8* %151, i32 %152, i32 %155, i32 %158, i32 %161)
  store i32 %162, i32* %21, align 4
  %163 = load i32, i32* %21, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %190

165:                                              ; preds = %149
  %166 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %167 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %165
  %171 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %172 = call i64 @de_down_pointer(%struct.hpfs_dirent* %171)
  store i64 %172, i64* %15, align 8
  %173 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %174 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %173)
  %175 = load %struct.super_block*, %struct.super_block** %6, align 8
  %176 = call %struct.TYPE_6__* @hpfs_sb(%struct.super_block* %175)
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %170
  %181 = load %struct.super_block*, %struct.super_block** %6, align 8
  %182 = load i64, i64* %15, align 8
  %183 = call i64 @hpfs_stop_cycles(%struct.super_block* %181, i64 %182, i32* %22, i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i8*, i8** %11, align 8
  %187 = call i32 @kfree(i8* %186)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %267

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %170
  br label %91

190:                                              ; preds = %165, %149
  br label %191

191:                                              ; preds = %190, %123
  %192 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %193 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @le32_to_cpu(i32 %194)
  %196 = load i64, i64* %7, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %191
  %199 = load i8*, i8** %11, align 8
  %200 = call i32 @kfree(i8* %199)
  %201 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  store %struct.hpfs_dirent* %201, %struct.hpfs_dirent** %5, align 8
  br label %267

202:                                              ; preds = %191
  %203 = load %struct.super_block*, %struct.super_block** %6, align 8
  %204 = load i8*, i8** %11, align 8
  %205 = load i32, i32* %13, align 4
  %206 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %207 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %210 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %213 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @hpfs_compare_names(%struct.super_block* %203, i8* %204, i32 %205, i32 %208, i32 %211, i32 %214)
  store i32 %215, i32* %21, align 4
  %216 = load i32, i32* %21, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %202
  %219 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %220 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  br label %259

224:                                              ; preds = %218, %202
  %225 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %226 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %225)
  store %struct.hpfs_dirent* %226, %struct.hpfs_dirent** %19, align 8
  %227 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %20, align 8
  %228 = icmp ult %struct.hpfs_dirent* %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %138

230:                                              ; preds = %224
  %231 = load %struct.dnode*, %struct.dnode** %14, align 8
  %232 = getelementptr inbounds %struct.dnode, %struct.dnode* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %259

236:                                              ; preds = %230
  %237 = load i64, i64* %15, align 8
  store i64 %237, i64* %16, align 8
  %238 = load %struct.dnode*, %struct.dnode** %14, align 8
  %239 = getelementptr inbounds %struct.dnode, %struct.dnode* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @le32_to_cpu(i32 %240)
  store i64 %241, i64* %15, align 8
  %242 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %243 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %242)
  %244 = load %struct.super_block*, %struct.super_block** %6, align 8
  %245 = call %struct.TYPE_6__* @hpfs_sb(%struct.super_block* %244)
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %236
  %250 = load %struct.super_block*, %struct.super_block** %6, align 8
  %251 = load i64, i64* %16, align 8
  %252 = call i64 @hpfs_stop_cycles(%struct.super_block* %250, i64 %251, i32* %24, i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i8*, i8** %11, align 8
  %256 = call i32 @kfree(i8* %255)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %267

257:                                              ; preds = %249
  br label %258

258:                                              ; preds = %257, %236
  br label %92

259:                                              ; preds = %235, %223
  %260 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %261 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %260)
  %262 = load %struct.super_block*, %struct.super_block** %6, align 8
  %263 = load i64, i64* %7, align 8
  %264 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %262, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %263)
  %265 = load i8*, i8** %11, align 8
  %266 = call i32 @kfree(i8* %265)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %267

267:                                              ; preds = %259, %254, %198, %185, %145, %128, %98, %68, %61, %32
  %268 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  ret %struct.hpfs_dirent* %268
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @fnode_is_dir(%struct.fnode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64, ...) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block*, i64, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i64 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_compare_names(%struct.super_block*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i64, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
