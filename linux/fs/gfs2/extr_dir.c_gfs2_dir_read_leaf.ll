; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_read_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_read_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dir_context = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64, i32, i64 }
%struct.gfs2_leaf = type { i64, i32, i64 }
%struct.gfs2_dirent = type { i32 }
%struct.dirent_gather = type { i32, %struct.gfs2_dirent** }

@GFS2_DIR_MAX_DEPTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gfs2_dirent_gather = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Number of entries corrupt in dir leaf %llu, entries2 (%u) != g.offset (%u)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dir_context*, i32*, i32*, i64)* @gfs2_dir_read_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dir_read_leaf(%struct.inode* %0, %struct.dir_context* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dir_context*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.gfs2_leaf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.gfs2_dirent**, align 8
  %23 = alloca %struct.gfs2_dirent*, align 8
  %24 = alloca %struct.dirent_gather, align 8
  %25 = alloca %struct.buffer_head**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dir_context* %1, %struct.dir_context** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %31)
  store %struct.gfs2_inode* %32, %struct.gfs2_inode** %12, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %33)
  store %struct.gfs2_sbd* %34, %struct.gfs2_sbd** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %28, align 4
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %30, align 8
  br label %36

36:                                               ; preds = %71, %5
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %38 = load i64, i64* %30, align 8
  %39 = call i32 @get_leaf(%struct.gfs2_inode* %37, i64 %38, %struct.buffer_head** %14)
  store i32 %39, i32* %26, align 4
  %40 = load i32, i32* %26, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %255

43:                                               ; preds = %36
  %44 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %47, %struct.gfs2_leaf** %15, align 8
  %48 = load i32, i32* %18, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %52 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @be16_to_cpu(i64 %53)
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %58 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @be16_to_cpu(i64 %59)
  %61 = load i32, i32* %16, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %18, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %18, align 4
  %65 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %66 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @be64_to_cpu(i32 %67)
  store i64 %68, i64* %30, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  br label %71

71:                                               ; preds = %56
  %72 = load i64, i64* %30, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %36, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @GFS2_DIR_MAX_DEPTH, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %81 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79, %74
  store i32 1, i32* %28, align 4
  store i32 0, i32* %21, align 4
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %257

90:                                               ; preds = %86
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %26, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %16, align 4
  %95 = add i32 %93, %94
  %96 = add i32 %95, 99
  %97 = zext i32 %96 to i64
  %98 = mul i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = call %struct.buffer_head** @gfs2_alloc_sort_buffer(i32 %99)
  store %struct.buffer_head** %100, %struct.buffer_head*** %25, align 8
  %101 = load %struct.buffer_head**, %struct.buffer_head*** %25, align 8
  %102 = icmp ne %struct.buffer_head** %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %90
  br label %255

104:                                              ; preds = %90
  %105 = load %struct.buffer_head**, %struct.buffer_head*** %25, align 8
  %106 = load i32, i32* %18, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %105, i64 %107
  %109 = bitcast %struct.buffer_head** %108 to %struct.gfs2_dirent**
  store %struct.gfs2_dirent** %109, %struct.gfs2_dirent*** %22, align 8
  %110 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %22, align 8
  %111 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %24, i32 0, i32 1
  store %struct.gfs2_dirent** %110, %struct.gfs2_dirent*** %111, align 8
  %112 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %24, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %30, align 8
  br label %114

114:                                              ; preds = %214, %104
  %115 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %116 = load i64, i64* %30, align 8
  %117 = call i32 @get_leaf(%struct.gfs2_inode* %115, i64 %116, %struct.buffer_head** %14)
  store i32 %117, i32* %26, align 4
  %118 = load i32, i32* %26, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %237

121:                                              ; preds = %114
  %122 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %125, %struct.gfs2_leaf** %15, align 8
  %126 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %127 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @be64_to_cpu(i32 %128)
  store i64 %129, i64* %30, align 8
  %130 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %131 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %205

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %24, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %20, align 4
  %137 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %138 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @be16_to_cpu(i64 %139)
  %141 = load i32, i32* %17, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %17, align 4
  %143 = load %struct.inode*, %struct.inode** %7, align 8
  %144 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %148 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @gfs2_dirent_gather, align 4
  %151 = call %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %143, i64 %146, i32 %149, i32 %150, i32* null, %struct.dirent_gather* %24)
  store %struct.gfs2_dirent* %151, %struct.gfs2_dirent** %23, align 8
  %152 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %23, align 8
  %153 = call i32 @PTR_ERR(%struct.gfs2_dirent* %152)
  store i32 %153, i32* %26, align 4
  %154 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %23, align 8
  %155 = call i64 @IS_ERR(%struct.gfs2_dirent* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %134
  br label %237

158:                                              ; preds = %134
  %159 = load i32, i32* %17, align 4
  %160 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %24, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %159, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %165 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %166 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %24, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @fs_warn(%struct.gfs2_sbd* %164, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %167, i32 %168, i32 %170)
  %172 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %173 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %172)
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %26, align 4
  br label %237

176:                                              ; preds = %158
  store i32 0, i32* %26, align 4
  %177 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %178 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %179 = load i32, i32* %19, align 4
  %180 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %22, align 8
  %181 = load i32, i32* %20, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.gfs2_dirent*, %struct.gfs2_dirent** %180, i64 %182
  %184 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %185 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @be16_to_cpu(i64 %186)
  %188 = call i32 @gfs2_set_cookies(%struct.gfs2_sbd* %177, %struct.buffer_head* %178, i32 %179, %struct.gfs2_dirent** %183, i32 %187)
  store i32 %188, i32* %29, align 4
  %189 = load i32, i32* %28, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %176
  %192 = load i32, i32* %29, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  store i32 1, i32* %28, align 4
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %29, align 4
  %197 = add i32 %195, %196
  store i32 %197, i32* %21, align 4
  br label %198

198:                                              ; preds = %194, %191, %176
  %199 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %200 = load %struct.buffer_head**, %struct.buffer_head*** %25, align 8
  %201 = load i32, i32* %19, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %19, align 4
  %203 = zext i32 %201 to i64
  %204 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %200, i64 %203
  store %struct.buffer_head* %199, %struct.buffer_head** %204, align 8
  br label %213

205:                                              ; preds = %121
  %206 = load %struct.buffer_head**, %struct.buffer_head*** %25, align 8
  %207 = load i32, i32* %19, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %19, align 4
  %209 = zext i32 %207 to i64
  %210 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %206, i64 %209
  store %struct.buffer_head* null, %struct.buffer_head** %210, align 8
  %211 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %212 = call i32 @brelse(%struct.buffer_head* %211)
  br label %213

213:                                              ; preds = %205, %198
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %30, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %114, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @BUG_ON(i32 %221)
  %223 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %224 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %225 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %22, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %28, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %217
  %230 = load i32, i32* %21, align 4
  br label %233

231:                                              ; preds = %217
  %232 = load i32, i32* %16, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  %235 = load i32*, i32** %9, align 8
  %236 = call i32 @do_filldir_main(%struct.gfs2_inode* %223, %struct.dir_context* %224, %struct.gfs2_dirent** %225, i32 %226, i32 %234, i32* %235)
  store i32 %236, i32* %26, align 4
  br label %237

237:                                              ; preds = %233, %163, %157, %120
  store i32 0, i32* %27, align 4
  br label %238

238:                                              ; preds = %249, %237
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* %19, align 4
  %241 = icmp ult i32 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load %struct.buffer_head**, %struct.buffer_head*** %25, align 8
  %244 = load i32, i32* %27, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %243, i64 %245
  %247 = load %struct.buffer_head*, %struct.buffer_head** %246, align 8
  %248 = call i32 @brelse(%struct.buffer_head* %247)
  br label %249

249:                                              ; preds = %242
  %250 = load i32, i32* %27, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %27, align 4
  br label %238

252:                                              ; preds = %238
  %253 = load %struct.buffer_head**, %struct.buffer_head*** %25, align 8
  %254 = call i32 @kvfree(%struct.buffer_head** %253)
  br label %255

255:                                              ; preds = %252, %103, %42
  %256 = load i32, i32* %26, align 4
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %255, %89
  %258 = load i32, i32* %6, align 4
  ret i32 %258
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head** @gfs2_alloc_sort_buffer(i32) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode*, i64, i32, i32, i32*, %struct.dirent_gather*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i64, i32, i32) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_set_cookies(%struct.gfs2_sbd*, %struct.buffer_head*, i32, %struct.gfs2_dirent**, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_filldir_main(%struct.gfs2_inode*, %struct.dir_context*, %struct.gfs2_dirent**, i32, i32, i32*) #1

declare dso_local i32 @kvfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
