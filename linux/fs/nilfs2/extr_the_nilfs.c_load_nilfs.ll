; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_load_nilfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_load_nilfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.nilfs_super_block**, i32, i32 }
%struct.nilfs_super_block = type { i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.nilfs_recovery_info = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mounting unchecked fs\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"recovery required for readonly filesystem\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"write access will be enabled during recovery\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"unable to fall back to spare super block\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"trying rollback from an earlier position\00", align 1
@BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"blocksize differs between two super blocks (%d != %d)\00", align 1
@NILFS_VALID_FS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"error %d while loading super root\00", align 1
@NORECOVERY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"norecovery option specified, skipping roll-forward recovery\00", align 1
@NILFS_FEATURE_COMPAT_RO_SUPP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [79 x i8] c"couldn't proceed with recovery because of unsupported optional features (%llx)\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"write access unavailable, cannot proceed\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"recovery cancelled because norecovery option was specified for a read/write mount\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"error %d updating super block. recovery unfinished.\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"recovery complete\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"error %d while searching super root\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_nilfs(%struct.the_nilfs* %0, %struct.super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nilfs_recovery_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nilfs_super_block**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bdev_read_only(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %22 = call i32 @nilfs_valid_fs(%struct.the_nilfs* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %2
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load i32, i32* @KERN_WARNING, align 4
  %28 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %26, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SB_RDONLY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = load i32, i32* @KERN_INFO, align 4
  %36 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %34, i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = load i32, i32* @KERN_INFO, align 4
  %39 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %37, i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %33, %25
  br label %41

41:                                               ; preds = %40, %2
  %42 = call i32 @nilfs_init_recovery_info(%struct.nilfs_recovery_info* %6)
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %44 = call i32 @nilfs_search_super_root(%struct.the_nilfs* %43, %struct.nilfs_recovery_info* %6)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %140

48:                                               ; preds = %41
  %49 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %50 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %49, i32 0, i32 8
  %51 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %50, align 8
  store %struct.nilfs_super_block** %51, %struct.nilfs_super_block*** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %259

57:                                               ; preds = %48
  %58 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  %59 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %58, i64 1
  %60 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %59, align 8
  %61 = call i32 @nilfs_valid_sb(%struct.nilfs_super_block* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = load i32, i32* @KERN_WARNING, align 4
  %66 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %64, i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %259

67:                                               ; preds = %57
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %68, i32 %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  %72 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %71, i64 0
  %73 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %72, align 8
  %74 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  %75 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %74, i64 1
  %76 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %75, align 8
  %77 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %78 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(%struct.nilfs_super_block* %73, %struct.nilfs_super_block* %76, i32 %79)
  %81 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  %82 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %81, i64 0
  %83 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %82, align 8
  %84 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %88 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  %90 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %89, i64 0
  %91 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %90, align 8
  %92 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le64_to_cpu(i32 %93)
  %95 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %96 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @BLOCK_SIZE, align 4
  %98 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  %99 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %98, i64 0
  %100 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %99, align 8
  %101 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = shl i32 %97, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %107 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %67
  %111 = load %struct.super_block*, %struct.super_block** %5, align 8
  %112 = load i32, i32* @KERN_WARNING, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %115 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %111, i32 %112, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %113, i32 %116)
  br label %259

118:                                              ; preds = %67
  %119 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %120 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  %121 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %120, i64 0
  %122 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %121, align 8
  %123 = call i32 @nilfs_store_log_cursor(%struct.the_nilfs* %119, %struct.nilfs_super_block* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %259

127:                                              ; preds = %118
  %128 = load i32, i32* @NILFS_VALID_FS, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %131 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  store i32 0, i32* %9, align 4
  %134 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %135 = call i32 @nilfs_search_super_root(%struct.the_nilfs* %134, %struct.nilfs_recovery_info* %6)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %259

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139, %41
  %141 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %142 = load %struct.super_block*, %struct.super_block** %5, align 8
  %143 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %6, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @nilfs_load_super_root(%struct.the_nilfs* %141, %struct.super_block* %142, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load %struct.super_block*, %struct.super_block** %5, align 8
  %151 = load i32, i32* @KERN_ERR, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %150, i32 %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  br label %277

154:                                              ; preds = %140
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %254

158:                                              ; preds = %154
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @SB_RDONLY, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %210

163:                                              ; preds = %158
  %164 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %165 = load i32, i32* @NORECOVERY, align 4
  %166 = call i64 @nilfs_test_opt(%struct.the_nilfs* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.super_block*, %struct.super_block** %5, align 8
  %170 = load i32, i32* @KERN_INFO, align 4
  %171 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %169, i32 %170, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %254

172:                                              ; preds = %163
  %173 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %174 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %173, i32 0, i32 8
  %175 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %174, align 8
  %176 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %175, i64 0
  %177 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %176, align 8
  %178 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @le64_to_cpu(i32 %179)
  %181 = load i32, i32* @NILFS_FEATURE_COMPAT_RO_SUPP, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %172
  %187 = load %struct.super_block*, %struct.super_block** %5, align 8
  %188 = load i32, i32* @KERN_ERR, align 4
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %187, i32 %188, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0), i64 %190)
  %192 = load i32, i32* @EROFS, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %10, align 4
  br label %264

194:                                              ; preds = %172
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load %struct.super_block*, %struct.super_block** %5, align 8
  %199 = load i32, i32* @KERN_ERR, align 4
  %200 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %198, i32 %199, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %201 = load i32, i32* @EROFS, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %10, align 4
  br label %264

203:                                              ; preds = %194
  %204 = load i32, i32* @SB_RDONLY, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.super_block*, %struct.super_block** %5, align 8
  %207 = getelementptr inbounds %struct.super_block, %struct.super_block* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %222

210:                                              ; preds = %158
  %211 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %212 = load i32, i32* @NORECOVERY, align 4
  %213 = call i64 @nilfs_test_opt(%struct.the_nilfs* %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load %struct.super_block*, %struct.super_block** %5, align 8
  %217 = load i32, i32* @KERN_ERR, align 4
  %218 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %216, i32 %217, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0))
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %10, align 4
  br label %264

221:                                              ; preds = %210
  br label %222

222:                                              ; preds = %221, %203
  %223 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %224 = load %struct.super_block*, %struct.super_block** %5, align 8
  %225 = call i32 @nilfs_salvage_orphan_logs(%struct.the_nilfs* %223, %struct.super_block* %224, %struct.nilfs_recovery_info* %6)
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  br label %264

229:                                              ; preds = %222
  %230 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %231 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %230, i32 0, i32 6
  %232 = call i32 @down_write(i32* %231)
  %233 = load i32, i32* @NILFS_VALID_FS, align 4
  %234 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %235 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load %struct.super_block*, %struct.super_block** %5, align 8
  %239 = call i32 @nilfs_cleanup_super(%struct.super_block* %238)
  store i32 %239, i32* %10, align 4
  %240 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %241 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %240, i32 0, i32 6
  %242 = call i32 @up_write(i32* %241)
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %229
  %246 = load %struct.super_block*, %struct.super_block** %5, align 8
  %247 = load i32, i32* @KERN_ERR, align 4
  %248 = load i32, i32* %10, align 4
  %249 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %246, i32 %247, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i32 %248)
  br label %264

250:                                              ; preds = %229
  %251 = load %struct.super_block*, %struct.super_block** %5, align 8
  %252 = load i32, i32* @KERN_INFO, align 4
  %253 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %251, i32 %252, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %254

254:                                              ; preds = %250, %168, %157
  %255 = call i32 @nilfs_clear_recovery_info(%struct.nilfs_recovery_info* %6)
  %256 = load i32, i32* %7, align 4
  %257 = load %struct.super_block*, %struct.super_block** %5, align 8
  %258 = getelementptr inbounds %struct.super_block, %struct.super_block* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 4
  store i32 0, i32* %3, align 4
  br label %283

259:                                              ; preds = %138, %126, %110, %63, %56
  %260 = load %struct.super_block*, %struct.super_block** %5, align 8
  %261 = load i32, i32* @KERN_ERR, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 (%struct.super_block*, i32, i8*, ...) @nilfs_msg(%struct.super_block* %260, i32 %261, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %262)
  br label %277

264:                                              ; preds = %245, %228, %215, %197, %186
  %265 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %266 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @iput(i32 %267)
  %269 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %270 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @iput(i32 %271)
  %273 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %274 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @iput(i32 %275)
  br label %277

277:                                              ; preds = %264, %259, %149
  %278 = call i32 @nilfs_clear_recovery_info(%struct.nilfs_recovery_info* %6)
  %279 = load i32, i32* %7, align 4
  %280 = load %struct.super_block*, %struct.super_block** %5, align 8
  %281 = getelementptr inbounds %struct.super_block, %struct.super_block* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* %10, align 4
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %277, %254
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @bdev_read_only(i32) #1

declare dso_local i32 @nilfs_valid_fs(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @nilfs_init_recovery_info(%struct.nilfs_recovery_info*) #1

declare dso_local i32 @nilfs_search_super_root(%struct.the_nilfs*, %struct.nilfs_recovery_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_valid_sb(%struct.nilfs_super_block*) #1

declare dso_local i32 @memcpy(%struct.nilfs_super_block*, %struct.nilfs_super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @nilfs_store_log_cursor(%struct.the_nilfs*, %struct.nilfs_super_block*) #1

declare dso_local i32 @nilfs_load_super_root(%struct.the_nilfs*, %struct.super_block*, i32) #1

declare dso_local i64 @nilfs_test_opt(%struct.the_nilfs*, i32) #1

declare dso_local i32 @nilfs_salvage_orphan_logs(%struct.the_nilfs*, %struct.super_block*, %struct.nilfs_recovery_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_cleanup_super(%struct.super_block*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nilfs_clear_recovery_info(%struct.nilfs_recovery_info*) #1

declare dso_local i32 @iput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
