; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_gc.c_jffs2_garbage_collect_pristine.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_gc.c_jffs2_garbage_collect_pristine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, %struct.jffs2_eraseblock*, i32 }
%struct.jffs2_eraseblock = type { i32 }
%struct.jffs2_inode_cache = type { i32 }
%struct.jffs2_raw_node_ref = type { i32 }
%union.jffs2_node_union = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %union.jffs2_node_union*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %union.jffs2_node_union*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Going to GC REF_PRISTINE node at 0x%08x\0A\00", align 1
@JFFS2_MIN_DATA_LEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"Header CRC failed on REF_PRISTINE node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Node CRC failed on REF_PRISTINE data node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"Data CRC failed on REF_PRISTINE data node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"Node CRC failed on REF_PRISTINE dirent node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Name in dirent node at 0x%08x contains zeroes\0A\00", align 1
@.str.6 = private unnamed_addr constant [87 x i8] c"Name CRC failed on REF_PRISTINE dirent node at 0x%08x: Read 0x%08x, calculated 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Unknown node type for REF_PRISTINE node at 0x%08x: 0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Write of %d bytes at 0x%08x failed. returned %d, retlen %zd\0A\00", align 1
@REF_OBSOLETE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [88 x i8] c"Not marking the space at 0x%08x as dirty because the flash driver returned retlen zero\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Retrying failed write of REF_PRISTINE node.\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Allocated space at 0x%08x to retry failed write.\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Failed to allocate space to retry failed write: %d!\0A\00", align 1
@REF_PRISTINE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"WHEEE! GC REF_PRISTINE node at 0x%08x succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*, %struct.jffs2_raw_node_ref*)* @jffs2_garbage_collect_pristine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_garbage_collect_pristine(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_cache* %1, %struct.jffs2_raw_node_ref* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_inode_cache*, align 8
  %7 = alloca %struct.jffs2_raw_node_ref*, align 8
  %8 = alloca %union.jffs2_node_union*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.jffs2_eraseblock*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_inode_cache* %1, %struct.jffs2_inode_cache** %6, align 8
  store %struct.jffs2_raw_node_ref* %2, %struct.jffs2_raw_node_ref** %7, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %19 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %18)
  %20 = call i32 (i32, i8*, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %22 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %26 = call i64 @ref_totlen(%struct.jffs2_sb_info* %21, i32 %24, %struct.jffs2_raw_node_ref* %25)
  store i64 %26, i64* %14, align 8
  store i64 %26, i64* %12, align 8
  %27 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %6, align 8
  %28 = icmp ne %struct.jffs2_inode_cache* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @JFFS2_MIN_DATA_LEN, align 8
  %32 = add i64 4, %31
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i64, i64* @JFFS2_MIN_DATA_LEN, align 8
  %36 = add i64 4, %35
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %34, %29, %3
  %38 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @jffs2_reserve_space_gc(%struct.jffs2_sb_info* %38, i64 %39, i64* %12, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %354

46:                                               ; preds = %37
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EBADFD, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %354

53:                                               ; preds = %46
  %54 = load i64, i64* %14, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %union.jffs2_node_union* @kmalloc(i64 %54, i32 %55)
  store %union.jffs2_node_union* %56, %union.jffs2_node_union** %8, align 8
  %57 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %58 = icmp ne %union.jffs2_node_union* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %354

62:                                               ; preds = %53
  %63 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %64 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %65 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %64)
  %66 = load i64, i64* %14, align 8
  %67 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %68 = bitcast %union.jffs2_node_union* %67 to i8*
  %69 = call i32 @jffs2_flash_read(%struct.jffs2_sb_info* %63, i32 %65, i64 %66, i64* %9, i8* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %76, %72, %62
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %347

83:                                               ; preds = %79
  %84 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %85 = call i64 @crc32(i32 0, %union.jffs2_node_union* %84, i32 0)
  store i64 %85, i64* %13, align 8
  %86 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %87 = bitcast %union.jffs2_node_union* %86 to %struct.TYPE_6__*
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @je32_to_cpu(i32 %89)
  %91 = load i64, i64* %13, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %83
  %94 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %95 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %94)
  %96 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %97 = bitcast %union.jffs2_node_union* %96 to %struct.TYPE_6__*
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @je32_to_cpu(i32 %99)
  %101 = load i64, i64* %13, align 8
  %102 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %95, i64 %100, i64 %101)
  br label %351

103:                                              ; preds = %83
  %104 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %105 = bitcast %union.jffs2_node_union* %104 to %struct.TYPE_6__*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @je16_to_cpu(i32 %107)
  switch i32 %108, label %241 [
    i32 128, label %109
    i32 129, label %167
  ]

109:                                              ; preds = %103
  %110 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %111 = call i64 @crc32(i32 0, %union.jffs2_node_union* %110, i32 16)
  store i64 %111, i64* %13, align 8
  %112 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %113 = bitcast %union.jffs2_node_union* %112 to %struct.TYPE_4__*
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @je32_to_cpu(i32 %115)
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %109
  %120 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %121 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %120)
  %122 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %123 = bitcast %union.jffs2_node_union* %122 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @je32_to_cpu(i32 %125)
  %127 = load i64, i64* %13, align 8
  %128 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %121, i64 %126, i64 %127)
  br label %351

129:                                              ; preds = %109
  %130 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %131 = bitcast %union.jffs2_node_union* %130 to %struct.TYPE_4__*
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @je32_to_cpu(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %129
  %137 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %138 = bitcast %union.jffs2_node_union* %137 to %struct.TYPE_4__*
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load %union.jffs2_node_union*, %union.jffs2_node_union** %139, align 8
  %141 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %142 = bitcast %union.jffs2_node_union* %141 to %struct.TYPE_4__*
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @je32_to_cpu(i32 %144)
  %146 = trunc i64 %145 to i32
  %147 = call i64 @crc32(i32 0, %union.jffs2_node_union* %140, i32 %146)
  store i64 %147, i64* %13, align 8
  %148 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %149 = bitcast %union.jffs2_node_union* %148 to %struct.TYPE_4__*
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @je32_to_cpu(i32 %151)
  %153 = load i64, i64* %13, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %136
  %156 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %157 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %156)
  %158 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %159 = bitcast %union.jffs2_node_union* %158 to %struct.TYPE_4__*
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @je32_to_cpu(i32 %161)
  %163 = load i64, i64* %13, align 8
  %164 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 %157, i64 %162, i64 %163)
  br label %351

165:                                              ; preds = %136
  br label %166

166:                                              ; preds = %165, %129
  br label %254

167:                                              ; preds = %103
  %168 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %169 = call i64 @crc32(i32 0, %union.jffs2_node_union* %168, i32 16)
  store i64 %169, i64* %13, align 8
  %170 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %171 = bitcast %union.jffs2_node_union* %170 to %struct.TYPE_5__*
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @je32_to_cpu(i32 %173)
  %175 = load i64, i64* %13, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %167
  %178 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %179 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %178)
  %180 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %181 = bitcast %union.jffs2_node_union* %180 to %struct.TYPE_5__*
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @je32_to_cpu(i32 %183)
  %185 = load i64, i64* %13, align 8
  %186 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i32 %179, i64 %184, i64 %185)
  br label %351

187:                                              ; preds = %167
  %188 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %189 = bitcast %union.jffs2_node_union* %188 to %struct.TYPE_5__*
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load %union.jffs2_node_union*, %union.jffs2_node_union** %190, align 8
  %192 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %193 = bitcast %union.jffs2_node_union* %192 to %struct.TYPE_5__*
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @strnlen(%union.jffs2_node_union* %191, i32 %195)
  %197 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %198 = bitcast %union.jffs2_node_union* %197 to %struct.TYPE_5__*
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %196, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %187
  %203 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %204 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %203)
  %205 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  br label %351

206:                                              ; preds = %187
  %207 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %208 = bitcast %union.jffs2_node_union* %207 to %struct.TYPE_5__*
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %240

212:                                              ; preds = %206
  %213 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %214 = bitcast %union.jffs2_node_union* %213 to %struct.TYPE_5__*
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load %union.jffs2_node_union*, %union.jffs2_node_union** %215, align 8
  %217 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %218 = bitcast %union.jffs2_node_union* %217 to %struct.TYPE_5__*
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @crc32(i32 0, %union.jffs2_node_union* %216, i32 %220)
  store i64 %221, i64* %13, align 8
  %222 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %223 = bitcast %union.jffs2_node_union* %222 to %struct.TYPE_5__*
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @je32_to_cpu(i32 %225)
  %227 = load i64, i64* %13, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %239

229:                                              ; preds = %212
  %230 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %231 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %230)
  %232 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %233 = bitcast %union.jffs2_node_union* %232 to %struct.TYPE_5__*
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @je32_to_cpu(i32 %235)
  %237 = load i64, i64* %13, align 8
  %238 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.6, i64 0, i64 0), i32 %231, i64 %236, i64 %237)
  br label %351

239:                                              ; preds = %212
  br label %240

240:                                              ; preds = %239, %206
  br label %254

241:                                              ; preds = %103
  %242 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %6, align 8
  %243 = icmp ne %struct.jffs2_inode_cache* %242, null
  br i1 %243, label %244, label %253

244:                                              ; preds = %241
  %245 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %246 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %245)
  %247 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %248 = bitcast %union.jffs2_node_union* %247 to %struct.TYPE_6__*
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @je16_to_cpu(i32 %250)
  %252 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %246, i32 %251)
  br label %351

253:                                              ; preds = %241
  br label %254

254:                                              ; preds = %253, %240, %166
  br label %255

255:                                              ; preds = %314, %254
  %256 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %257 = call i64 @write_ofs(%struct.jffs2_sb_info* %256)
  store i64 %257, i64* %11, align 8
  %258 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* %14, align 8
  %261 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %262 = bitcast %union.jffs2_node_union* %261 to i8*
  %263 = call i32 @jffs2_flash_write(%struct.jffs2_sb_info* %258, i64 %259, i64 %260, i64* %9, i8* %262)
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %255
  %267 = load i64, i64* %9, align 8
  %268 = load i64, i64* %14, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %333

270:                                              ; preds = %266, %255
  %271 = load i64, i64* %14, align 8
  %272 = load i64, i64* %11, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load i64, i64* %9, align 8
  %275 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i64 %271, i64 %272, i32 %273, i64 %274)
  %276 = load i64, i64* %9, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %270
  %279 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %280 = load i64, i64* %11, align 8
  %281 = load i64, i64* @REF_OBSOLETE, align 8
  %282 = or i64 %280, %281
  %283 = load i64, i64* %14, align 8
  %284 = call i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info* %279, i64 %282, i64 %283, %struct.jffs2_inode_cache* null)
  br label %288

285:                                              ; preds = %270
  %286 = load i64, i64* %11, align 8
  %287 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.9, i64 0, i64 0), i64 %286)
  br label %288

288:                                              ; preds = %285, %278
  %289 = load i32, i32* %15, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %326, label %291

291:                                              ; preds = %288
  %292 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %293 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %292, i32 0, i32 1
  %294 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %293, align 8
  %295 = load i64, i64* %11, align 8
  %296 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %297 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = sdiv i64 %295, %298
  %300 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %294, i64 %299
  store %struct.jffs2_eraseblock* %300, %struct.jffs2_eraseblock** %17, align 8
  store i32 1, i32* %15, align 4
  %301 = call i32 (i32, i8*, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %302 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %303 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %17, align 8
  %304 = call i32 @jffs2_dbg_acct_sanity_check(%struct.jffs2_sb_info* %302, %struct.jffs2_eraseblock* %303)
  %305 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %306 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %17, align 8
  %307 = call i32 @jffs2_dbg_acct_paranoia_check(%struct.jffs2_sb_info* %305, %struct.jffs2_eraseblock* %306)
  %308 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %309 = load i64, i64* %14, align 8
  %310 = load i64, i64* %14, align 8
  %311 = call i32 @jffs2_reserve_space_gc(%struct.jffs2_sb_info* %308, i64 %309, i64* %16, i64 %310)
  store i32 %311, i32* %10, align 4
  %312 = load i32, i32* %10, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %323, label %314

314:                                              ; preds = %291
  %315 = load i64, i64* %11, align 8
  %316 = call i32 (i32, i8*, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i64 %315)
  %317 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %318 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %17, align 8
  %319 = call i32 @jffs2_dbg_acct_sanity_check(%struct.jffs2_sb_info* %317, %struct.jffs2_eraseblock* %318)
  %320 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %321 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %17, align 8
  %322 = call i32 @jffs2_dbg_acct_paranoia_check(%struct.jffs2_sb_info* %320, %struct.jffs2_eraseblock* %321)
  br label %255

323:                                              ; preds = %291
  %324 = load i32, i32* %10, align 4
  %325 = call i32 (i32, i8*, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %323, %288
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* @EIO, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %10, align 4
  br label %332

332:                                              ; preds = %329, %326
  br label %347

333:                                              ; preds = %266
  %334 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %335 = load i64, i64* %11, align 8
  %336 = load i64, i64* @REF_PRISTINE, align 8
  %337 = or i64 %335, %336
  %338 = load i64, i64* %14, align 8
  %339 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %6, align 8
  %340 = call i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info* %334, i64 %337, i64 %338, %struct.jffs2_inode_cache* %339)
  %341 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %342 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %343 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %341, %struct.jffs2_raw_node_ref* %342)
  %344 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %345 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %344)
  %346 = call i32 (i32, i8*, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %351, %333, %332, %82
  %348 = load %union.jffs2_node_union*, %union.jffs2_node_union** %8, align 8
  %349 = call i32 @kfree(%union.jffs2_node_union* %348)
  %350 = load i32, i32* %10, align 4
  store i32 %350, i32* %4, align 4
  br label %354

351:                                              ; preds = %244, %229, %202, %177, %155, %119, %93
  %352 = load i32, i32* @EBADFD, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %10, align 4
  br label %347

354:                                              ; preds = %347, %59, %50, %44
  %355 = load i32, i32* %4, align 4
  ret i32 %355
}

declare dso_local i32 @jffs2_dbg(i32, i8*, ...) #1

declare dso_local i32 @ref_offset(%struct.jffs2_raw_node_ref*) #1

declare dso_local i64 @ref_totlen(%struct.jffs2_sb_info*, i32, %struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @jffs2_reserve_space_gc(%struct.jffs2_sb_info*, i64, i64*, i64) #1

declare dso_local %union.jffs2_node_union* @kmalloc(i64, i32) #1

declare dso_local i32 @jffs2_flash_read(%struct.jffs2_sb_info*, i32, i64, i64*, i8*) #1

declare dso_local i64 @crc32(i32, %union.jffs2_node_union*, i32) #1

declare dso_local i64 @je32_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @je16_to_cpu(i32) #1

declare dso_local i32 @strnlen(%union.jffs2_node_union*, i32) #1

declare dso_local i64 @write_ofs(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_flash_write(%struct.jffs2_sb_info*, i64, i64, i64*, i8*) #1

declare dso_local i32 @pr_notice(i8*, i64, ...) #1

declare dso_local i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info*, i64, i64, %struct.jffs2_inode_cache*) #1

declare dso_local i32 @jffs2_dbg_acct_sanity_check(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*) #1

declare dso_local i32 @jffs2_dbg_acct_paranoia_check(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*) #1

declare dso_local i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info*, %struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @kfree(%union.jffs2_node_union*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
