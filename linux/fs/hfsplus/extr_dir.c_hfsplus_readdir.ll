; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.hfsplus_readdir_data* }
%struct.hfsplus_readdir_data = type { i32, i32, %struct.file* }
%struct.dir_context = type { i64 }
%struct.inode = type { i64, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_17__, i32, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.hfs_find_data = type { i32, %struct.TYPE_21__*, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@HFSPLUS_MAX_STRLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hfs_find_rec_by_key = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HFSPLUS_FOLDER_THREAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"bad catalog folder thread\0A\00", align 1
@HFSPLUS_MIN_THREAD_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"truncated catalog thread\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"walked past end of dir\0A\00", align 1
@HFSPLUS_FOLDER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"small dir entry\0A\00", align 1
@HFSPLUS_FILE = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"small file entry\0A\00", align 1
@DT_REG = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i32 0, align 4
@DT_FIFO = common dso_local global i32 0, align 4
@DT_CHR = common dso_local global i32 0, align 4
@DT_BLK = common dso_local global i32 0, align 4
@DT_SOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"bad catalog entry type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @hfsplus_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__, align 4
  %12 = alloca %struct.hfs_find_data, align 8
  %13 = alloca %struct.hfsplus_readdir_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call %struct.inode* @file_inode(%struct.file* %17)
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %7, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %396

30:                                               ; preds = %2
  %31 = load %struct.super_block*, %struct.super_block** %7, align 8
  %32 = call %struct.TYPE_12__* @HFSPLUS_SB(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @hfs_find_init(i32 %34, %struct.hfs_find_data* %12)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %396

40:                                               ; preds = %30
  %41 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %42 = load i32, i32* @HFSPLUS_MAX_STRLEN, align 4
  %43 = mul nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %391

52:                                               ; preds = %40
  %53 = load %struct.super_block*, %struct.super_block** %7, align 8
  %54 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block* %53, i32 %55, i64 %58)
  %60 = load i32, i32* @hfs_find_rec_by_key, align 4
  %61 = call i32 @hfs_brec_find(%struct.hfs_find_data* %12, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %391

65:                                               ; preds = %52
  %66 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %67 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.file*, %struct.file** %4, align 8
  %72 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %73 = call i32 @dir_emit_dot(%struct.file* %71, %struct.dir_context* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %391

76:                                               ; preds = %70
  %77 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %78 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %77, i32 0, i32 0
  store i64 1, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %65
  %80 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %81 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 1
  br i1 %83, label %84, label %135

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp ugt i64 %87, 20
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %84
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %391

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @hfs_bnode_read(i32 %98, %struct.TYPE_20__* %11, i32 %100, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @be16_to_cpu(i32 %105)
  %107 = load i64, i64* @HFSPLUS_FOLDER_THREAD, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %391

113:                                              ; preds = %96
  %114 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @HFSPLUS_MIN_THREAD_SZ, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %391

122:                                              ; preds = %113
  %123 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @be32_to_cpu(i32 %126)
  %128 = load i32, i32* @DT_DIR, align 4
  %129 = call i32 @dir_emit(%struct.dir_context* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, i64 %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %122
  br label %391

132:                                              ; preds = %122
  %133 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %134 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %133, i32 0, i32 0
  store i64 2, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %79
  %136 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %137 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %391

144:                                              ; preds = %135
  %145 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %146 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %147, 1
  %149 = trunc i64 %148 to i32
  %150 = call i32 @hfs_brec_goto(%struct.hfs_find_data* %12, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %391

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %348, %154
  %156 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @be32_to_cpu(i32 %160)
  %162 = load %struct.inode*, %struct.inode** %6, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %155
  %167 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %9, align 4
  br label %391

170:                                              ; preds = %155
  %171 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = icmp ugt i64 %173, 20
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175, %170
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %9, align 4
  br label %391

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @hfs_bnode_read(i32 %184, %struct.TYPE_20__* %11, i32 %186, i32 %188)
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @be16_to_cpu(i32 %191)
  store i64 %192, i64* %14, align 8
  %193 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %194 = load i32, i32* @HFSPLUS_MAX_STRLEN, align 4
  %195 = mul nsw i32 %193, %194
  store i32 %195, i32* %8, align 4
  %196 = load %struct.super_block*, %struct.super_block** %7, align 8
  %197 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i8*, i8** %10, align 8
  %202 = call i32 @hfsplus_uni2asc(%struct.super_block* %196, i32* %200, i8* %201, i32* %8)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %182
  br label %391

206:                                              ; preds = %182
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* @HFSPLUS_FOLDER, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %251

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = icmp ult i64 %213, 4
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %217 = load i32, i32* @EIO, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %9, align 4
  br label %391

219:                                              ; preds = %210
  %220 = load %struct.super_block*, %struct.super_block** %7, align 8
  %221 = call %struct.TYPE_12__* @HFSPLUS_SB(%struct.super_block* %220)
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = icmp ne %struct.TYPE_16__* %223, null
  br i1 %224, label %225, label %238

225:                                              ; preds = %219
  %226 = load %struct.super_block*, %struct.super_block** %7, align 8
  %227 = call %struct.TYPE_12__* @HFSPLUS_SB(%struct.super_block* %226)
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @be32_to_cpu(i32 %234)
  %236 = icmp eq i64 %231, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %225
  br label %330

238:                                              ; preds = %225, %219
  %239 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %240 = load i8*, i8** %10, align 8
  %241 = load i32, i32* %8, align 4
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @be32_to_cpu(i32 %244)
  %246 = load i32, i32* @DT_DIR, align 4
  %247 = call i32 @dir_emit(%struct.dir_context* %239, i8* %240, i32 %241, i64 %245, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %238
  br label %349

250:                                              ; preds = %238
  br label %329

251:                                              ; preds = %206
  %252 = load i64, i64* %14, align 8
  %253 = load i64, i64* @HFSPLUS_FILE, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %324

255:                                              ; preds = %251
  %256 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %256, i32* %16, align 4
  %257 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = icmp ult i64 %259, 4
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %263 = load i32, i32* @EIO, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %9, align 4
  br label %391

265:                                              ; preds = %255
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @be16_to_cpu(i32 %269)
  store i64 %270, i64* %15, align 8
  %271 = load i64, i64* %15, align 8
  %272 = call i64 @S_ISREG(i64 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %265
  %275 = load i32, i32* @DT_REG, align 4
  store i32 %275, i32* %16, align 4
  br label %311

276:                                              ; preds = %265
  %277 = load i64, i64* %15, align 8
  %278 = call i64 @S_ISLNK(i64 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = load i32, i32* @DT_LNK, align 4
  store i32 %281, i32* %16, align 4
  br label %310

282:                                              ; preds = %276
  %283 = load i64, i64* %15, align 8
  %284 = call i64 @S_ISFIFO(i64 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = load i32, i32* @DT_FIFO, align 4
  store i32 %287, i32* %16, align 4
  br label %309

288:                                              ; preds = %282
  %289 = load i64, i64* %15, align 8
  %290 = call i64 @S_ISCHR(i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* @DT_CHR, align 4
  store i32 %293, i32* %16, align 4
  br label %308

294:                                              ; preds = %288
  %295 = load i64, i64* %15, align 8
  %296 = call i64 @S_ISBLK(i64 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = load i32, i32* @DT_BLK, align 4
  store i32 %299, i32* %16, align 4
  br label %307

300:                                              ; preds = %294
  %301 = load i64, i64* %15, align 8
  %302 = call i64 @S_ISSOCK(i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = load i32, i32* @DT_SOCK, align 4
  store i32 %305, i32* %16, align 4
  br label %306

306:                                              ; preds = %304, %300
  br label %307

307:                                              ; preds = %306, %298
  br label %308

308:                                              ; preds = %307, %292
  br label %309

309:                                              ; preds = %308, %286
  br label %310

310:                                              ; preds = %309, %280
  br label %311

311:                                              ; preds = %310, %274
  %312 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %313 = load i8*, i8** %10, align 8
  %314 = load i32, i32* %8, align 4
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i64 @be32_to_cpu(i32 %317)
  %319 = load i32, i32* %16, align 4
  %320 = call i32 @dir_emit(%struct.dir_context* %312, i8* %313, i32 %314, i64 %318, i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %311
  br label %349

323:                                              ; preds = %311
  br label %328

324:                                              ; preds = %251
  %325 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %326 = load i32, i32* @EIO, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %9, align 4
  br label %391

328:                                              ; preds = %323
  br label %329

329:                                              ; preds = %328, %250
  br label %330

330:                                              ; preds = %329, %237
  %331 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %332 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = add nsw i64 %333, 1
  store i64 %334, i64* %332, align 8
  %335 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %336 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.inode*, %struct.inode** %6, align 8
  %339 = getelementptr inbounds %struct.inode, %struct.inode* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp sge i64 %337, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %330
  br label %391

343:                                              ; preds = %330
  %344 = call i32 @hfs_brec_goto(%struct.hfs_find_data* %12, i32 1)
  store i32 %344, i32* %9, align 4
  %345 = load i32, i32* %9, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  br label %391

348:                                              ; preds = %343
  br label %155

349:                                              ; preds = %322, %249
  %350 = load %struct.file*, %struct.file** %4, align 8
  %351 = getelementptr inbounds %struct.file, %struct.file* %350, i32 0, i32 1
  %352 = load %struct.hfsplus_readdir_data*, %struct.hfsplus_readdir_data** %351, align 8
  store %struct.hfsplus_readdir_data* %352, %struct.hfsplus_readdir_data** %13, align 8
  %353 = load %struct.hfsplus_readdir_data*, %struct.hfsplus_readdir_data** %13, align 8
  %354 = icmp ne %struct.hfsplus_readdir_data* %353, null
  br i1 %354, label %385, label %355

355:                                              ; preds = %349
  %356 = load i32, i32* @GFP_KERNEL, align 4
  %357 = call i8* @kmalloc(i32 16, i32 %356)
  %358 = bitcast i8* %357 to %struct.hfsplus_readdir_data*
  store %struct.hfsplus_readdir_data* %358, %struct.hfsplus_readdir_data** %13, align 8
  %359 = load %struct.hfsplus_readdir_data*, %struct.hfsplus_readdir_data** %13, align 8
  %360 = icmp ne %struct.hfsplus_readdir_data* %359, null
  br i1 %360, label %364, label %361

361:                                              ; preds = %355
  %362 = load i32, i32* @ENOMEM, align 4
  %363 = sub nsw i32 0, %362
  store i32 %363, i32* %9, align 4
  br label %391

364:                                              ; preds = %355
  %365 = load %struct.hfsplus_readdir_data*, %struct.hfsplus_readdir_data** %13, align 8
  %366 = load %struct.file*, %struct.file** %4, align 8
  %367 = getelementptr inbounds %struct.file, %struct.file* %366, i32 0, i32 1
  store %struct.hfsplus_readdir_data* %365, %struct.hfsplus_readdir_data** %367, align 8
  %368 = load %struct.file*, %struct.file** %4, align 8
  %369 = load %struct.hfsplus_readdir_data*, %struct.hfsplus_readdir_data** %13, align 8
  %370 = getelementptr inbounds %struct.hfsplus_readdir_data, %struct.hfsplus_readdir_data* %369, i32 0, i32 2
  store %struct.file* %368, %struct.file** %370, align 8
  %371 = load %struct.inode*, %struct.inode** %6, align 8
  %372 = call %struct.TYPE_13__* @HFSPLUS_I(%struct.inode* %371)
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 0
  %374 = call i32 @spin_lock(i32* %373)
  %375 = load %struct.hfsplus_readdir_data*, %struct.hfsplus_readdir_data** %13, align 8
  %376 = getelementptr inbounds %struct.hfsplus_readdir_data, %struct.hfsplus_readdir_data* %375, i32 0, i32 1
  %377 = load %struct.inode*, %struct.inode** %6, align 8
  %378 = call %struct.TYPE_13__* @HFSPLUS_I(%struct.inode* %377)
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 1
  %380 = call i32 @list_add(i32* %376, i32* %379)
  %381 = load %struct.inode*, %struct.inode** %6, align 8
  %382 = call %struct.TYPE_13__* @HFSPLUS_I(%struct.inode* %381)
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  %384 = call i32 @spin_unlock(i32* %383)
  br label %385

385:                                              ; preds = %364, %349
  %386 = load %struct.hfsplus_readdir_data*, %struct.hfsplus_readdir_data** %13, align 8
  %387 = getelementptr inbounds %struct.hfsplus_readdir_data, %struct.hfsplus_readdir_data* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %388, align 8
  %390 = call i32 @memcpy(i32* %387, %struct.TYPE_21__* %389, i32 4)
  br label %391

391:                                              ; preds = %385, %361, %347, %342, %324, %261, %215, %205, %179, %166, %153, %143, %131, %118, %109, %93, %75, %64, %49
  %392 = load i8*, i8** %10, align 8
  %393 = call i32 @kfree(i8* %392)
  %394 = call i32 @hfs_find_exit(%struct.hfs_find_data* %12)
  %395 = load i32, i32* %9, align 4
  store i32 %395, i32* %3, align 4
  br label %396

396:                                              ; preds = %391, %38, %29
  %397 = load i32, i32* %3, align 4
  ret i32 %397
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_12__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block*, i32, i64) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @dir_emit_dot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i64, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @hfs_brec_goto(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfsplus_uni2asc(%struct.super_block*, i32*, i8*, i32*) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i64 @S_ISLNK(i64) #1

declare dso_local i64 @S_ISFIFO(i64) #1

declare dso_local i64 @S_ISCHR(i64) #1

declare dso_local i64 @S_ISBLK(i64) #1

declare dso_local i64 @S_ISSOCK(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_13__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
