; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c___sbi_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c___sbi_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_attr = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.f2fs_sb_info = type { i64, i64, i32, %struct.TYPE_4__*, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"extension_list\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"[h]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"[c]\00", align 1
@F2FS_EXTENSION_LEN = common dso_local global i64 0, align 8
@RESERVED_BLOCKS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"discard_granularity\00", align 1
@MAX_PLIST_NUM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"migration_granularity\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"trim_sections\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gc_urgent\00", align 1
@GC_URGENT = common dso_local global i64 0, align 8
@GC_NORMAL = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"gc_idle\00", align 1
@GC_IDLE_CB = common dso_local global i64 0, align 8
@GC_IDLE_GREEDY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"iostat_enable\00", align 1
@FAULT_INFO_RATE = common dso_local global i64 0, align 8
@FAULT_INFO_TYPE = common dso_local global i64 0, align 8
@FAULT_MAX = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.f2fs_attr*, %struct.f2fs_sb_info*, i8*, i64)* @__sbi_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__sbi_store(%struct.f2fs_attr* %0, %struct.f2fs_sb_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.f2fs_attr*, align 8
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__, align 8
  store %struct.f2fs_attr* %0, %struct.f2fs_attr** %6, align 8
  store %struct.f2fs_sb_info* %1, %struct.f2fs_sb_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %19 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %20 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @__struct_ptr(%struct.f2fs_sb_info* %18, i64 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %328

28:                                               ; preds = %4
  %29 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %30 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %108, label %35

35:                                               ; preds = %28
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @strim(i8* %36)
  store i8* %37, i8** %14, align 8
  store i32 1, i32* %15, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 1, i32* %16, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %16, align 4
  br label %50

47:                                               ; preds = %42
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %328

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 33
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i8*, i8** %14, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = load i64, i64* @F2FS_EXTENSION_LEN, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %5, align 8
  br label %328

69:                                               ; preds = %61
  %70 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %71 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %70, i32 0, i32 8
  %72 = call i32 @down_write(i32* %71)
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @f2fs_update_extension_list(%struct.f2fs_sb_info* %73, i8* %74, i32 %75, i32 %76)
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %96

81:                                               ; preds = %69
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %83 = call i64 @f2fs_commit_super(%struct.f2fs_sb_info* %82, i32 0)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @f2fs_update_extension_list(%struct.f2fs_sb_info* %87, i8* %88, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %86, %81
  br label %96

96:                                               ; preds = %95, %80
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %98 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %97, i32 0, i32 8
  %99 = call i32 @up_write(i32* %98)
  %100 = load i64, i64* %13, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i64, i64* %13, align 8
  br label %106

104:                                              ; preds = %96
  %105 = load i64, i64* %9, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i64 [ %103, %102 ], [ %105, %104 ]
  store i64 %107, i64* %5, align 8
  br label %328

108:                                              ; preds = %28
  %109 = load i8*, i8** %10, align 8
  %110 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %111 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %12, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @skip_spaces(i8* %116)
  %118 = call i64 @kstrtoul(i32 %117, i32 0, i64* %11)
  store i64 %118, i64* %13, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp ult i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = load i64, i64* %13, align 8
  store i64 %122, i64* %5, align 8
  br label %328

123:                                              ; preds = %108
  %124 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %125 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @RESERVED_BLOCKS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %170

129:                                              ; preds = %123
  %130 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %131 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %130, i32 0, i32 4
  %132 = call i32 @spin_lock(i32* %131)
  %133 = load i64, i64* %11, align 8
  %134 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %135 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %138 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %137)
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %136, %141
  %143 = icmp ugt i64 %133, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %129
  %145 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %146 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %145, i32 0, i32 4
  %147 = call i32 @spin_unlock(i32* %146)
  %148 = load i64, i64* @EINVAL, align 8
  %149 = sub i64 0, %148
  store i64 %149, i64* %5, align 8
  br label %328

150:                                              ; preds = %129
  %151 = load i64, i64* %11, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i32*, i32** %12, align 8
  store i32 %152, i32* %153, align 4
  %154 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %155 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %158 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %161 = call i64 @valid_user_blocks(%struct.f2fs_sb_info* %160)
  %162 = sub nsw i64 %159, %161
  %163 = call i32 @min(i32 %156, i64 %162)
  %164 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %165 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 4
  %166 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %167 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %166, i32 0, i32 4
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load i64, i64* %9, align 8
  store i64 %169, i64* %5, align 8
  br label %328

170:                                              ; preds = %123
  %171 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %172 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @strcmp(i32 %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %200, label %177

177:                                              ; preds = %170
  %178 = load i64, i64* %11, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* @MAX_PLIST_NUM, align 8
  %183 = icmp ugt i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %180, %177
  %185 = load i64, i64* @EINVAL, align 8
  %186 = sub i64 0, %185
  store i64 %186, i64* %5, align 8
  br label %328

187:                                              ; preds = %180
  %188 = load i64, i64* %11, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  %192 = icmp eq i64 %188, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i64, i64* %9, align 8
  store i64 %194, i64* %5, align 8
  br label %328

195:                                              ; preds = %187
  %196 = load i64, i64* %11, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32*, i32** %12, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i64, i64* %9, align 8
  store i64 %199, i64* %5, align 8
  br label %328

200:                                              ; preds = %170
  %201 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %202 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @strcmp(i32 %204, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %220, label %207

207:                                              ; preds = %200
  %208 = load i64, i64* %11, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %207
  %211 = load i64, i64* %11, align 8
  %212 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %213 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ugt i64 %211, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %210, %207
  %217 = load i64, i64* @EINVAL, align 8
  %218 = sub i64 0, %217
  store i64 %218, i64* %5, align 8
  br label %328

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %219, %200
  %221 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %222 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @strcmp(i32 %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %220
  %228 = load i64, i64* @EINVAL, align 8
  %229 = sub i64 0, %228
  store i64 %229, i64* %5, align 8
  br label %328

230:                                              ; preds = %220
  %231 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %232 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @strcmp(i32 %234, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %268, label %237

237:                                              ; preds = %230
  %238 = load i64, i64* %11, align 8
  %239 = icmp uge i64 %238, 1
  br i1 %239, label %240, label %261

240:                                              ; preds = %237
  %241 = load i64, i64* @GC_URGENT, align 8
  %242 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %243 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %242, i32 0, i32 1
  store i64 %241, i64* %243, align 8
  %244 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %245 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %244, i32 0, i32 3
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = icmp ne %struct.TYPE_4__* %246, null
  br i1 %247, label %248, label %260

248:                                              ; preds = %240
  %249 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %250 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %249, i32 0, i32 3
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  store i32 1, i32* %252, align 4
  %253 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %254 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %253, i32 0, i32 3
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = call i32 @wake_up_interruptible_all(i32* %256)
  %258 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %259 = call i32 @wake_up_discard_thread(%struct.f2fs_sb_info* %258, i32 1)
  br label %260

260:                                              ; preds = %248, %240
  br label %266

261:                                              ; preds = %237
  %262 = load i8*, i8** @GC_NORMAL, align 8
  %263 = ptrtoint i8* %262 to i64
  %264 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %265 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %264, i32 0, i32 1
  store i64 %263, i64* %265, align 8
  br label %266

266:                                              ; preds = %261, %260
  %267 = load i64, i64* %9, align 8
  store i64 %267, i64* %5, align 8
  br label %328

268:                                              ; preds = %230
  %269 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %270 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @strcmp(i32 %272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %299, label %275

275:                                              ; preds = %268
  %276 = load i64, i64* %11, align 8
  %277 = load i64, i64* @GC_IDLE_CB, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  %280 = load i64, i64* @GC_IDLE_CB, align 8
  %281 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %282 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %281, i32 0, i32 1
  store i64 %280, i64* %282, align 8
  br label %297

283:                                              ; preds = %275
  %284 = load i64, i64* %11, align 8
  %285 = load i64, i64* @GC_IDLE_GREEDY, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = load i64, i64* @GC_IDLE_GREEDY, align 8
  %289 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %290 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %289, i32 0, i32 1
  store i64 %288, i64* %290, align 8
  br label %296

291:                                              ; preds = %283
  %292 = load i8*, i8** @GC_NORMAL, align 8
  %293 = ptrtoint i8* %292 to i64
  %294 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %295 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %294, i32 0, i32 1
  store i64 %293, i64* %295, align 8
  br label %296

296:                                              ; preds = %291, %287
  br label %297

297:                                              ; preds = %296, %279
  %298 = load i64, i64* %9, align 8
  store i64 %298, i64* %5, align 8
  br label %328

299:                                              ; preds = %268
  %300 = load %struct.f2fs_attr*, %struct.f2fs_attr** %6, align 8
  %301 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @strcmp(i32 %303, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %323, label %306

306:                                              ; preds = %299
  %307 = load i64, i64* %11, align 8
  %308 = icmp ne i64 %307, 0
  %309 = xor i1 %308, true
  %310 = xor i1 %309, true
  %311 = zext i1 %310 to i32
  %312 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %313 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 8
  %314 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %315 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %306
  %319 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %320 = call i32 @f2fs_reset_iostat(%struct.f2fs_sb_info* %319)
  br label %321

321:                                              ; preds = %318, %306
  %322 = load i64, i64* %9, align 8
  store i64 %322, i64* %5, align 8
  br label %328

323:                                              ; preds = %299
  %324 = load i64, i64* %11, align 8
  %325 = trunc i64 %324 to i32
  %326 = load i32*, i32** %12, align 8
  store i32 %325, i32* %326, align 4
  %327 = load i64, i64* %9, align 8
  store i64 %327, i64* %5, align 8
  br label %328

328:                                              ; preds = %323, %321, %297, %266, %227, %216, %195, %193, %184, %150, %144, %121, %106, %66, %47, %25
  %329 = load i64, i64* %5, align 8
  ret i64 %329
}

declare dso_local i8* @__struct_ptr(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @strim(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @f2fs_update_extension_list(%struct.f2fs_sb_info*, i8*, i32, i32) #1

declare dso_local i64 @f2fs_commit_super(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @kstrtoul(i32, i32, i64*) #1

declare dso_local i32 @skip_spaces(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @valid_user_blocks(%struct.f2fs_sb_info*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @wake_up_discard_thread(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_reset_iostat(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
