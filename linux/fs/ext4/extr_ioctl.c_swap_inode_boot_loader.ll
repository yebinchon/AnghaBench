; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_swap_inode_boot_loader.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_swap_inode_boot_loader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, i32, i64, i32, i32, i8*, i32, i32, i64, i32, i32 }
%struct.ext4_inode_info = type { i32, i32, i32 }

@EXT4_BOOT_LOADER_INO = common dso_local global i32 0, align 4
@EXT4_IGET_SPECIAL = common dso_local global i32 0, align 4
@EXT4_JOURNAL_DATA_FL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EXT4_HT_MOVE_EXTENTS = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"couldn't mark inode #%lu dirty (err %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, %struct.inode*)* @swap_inode_boot_loader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @swap_inode_boot_loader(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i16, align 2
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = load i32, i32* @EXT4_BOOT_LOADER_INO, align 4
  %17 = load i32, i32* @EXT4_IGET_SPECIAL, align 4
  %18 = call %struct.inode* @ext4_iget(%struct.super_block* %15, i32 %16, i32 %17)
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i64 @IS_ERR(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call i64 @PTR_ERR(%struct.inode* %23)
  store i64 %24, i64* %3, align 8
  br label %323

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %26)
  store %struct.ext4_inode_info* %27, %struct.ext4_inode_info** %9, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i32 @lock_two_nondirectories(%struct.inode* %28, %struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %61, label %35

35:                                               ; preds = %25
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @S_ISREG(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call i64 @IS_SWAPFILE(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call i64 @IS_ENCRYPTED(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EXT4_JOURNAL_DATA_FL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i64 @ext4_has_inline_data(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %49, %45, %41, %35, %25
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %315

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call i64 @IS_RDONLY(%struct.inode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %64
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = call i64 @IS_APPEND(%struct.inode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = call i64 @IS_IMMUTABLE(%struct.inode* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call i32 @inode_owner_or_capable(%struct.inode* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %82 = call i32 @capable(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80, %76, %72, %68, %64
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %315

87:                                               ; preds = %80
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %89, i32 0, i32 1
  %91 = call i32 @down_write(i32* %90)
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @filemap_write_and_wait(i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %310

99:                                               ; preds = %87
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @filemap_write_and_wait(i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %310

107:                                              ; preds = %99
  %108 = load %struct.inode*, %struct.inode** %5, align 8
  %109 = call i32 @inode_dio_wait(%struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = call i32 @inode_dio_wait(%struct.inode* %110)
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 9
  %114 = call i32 @truncate_inode_pages(i32* %113, i32 0)
  %115 = load %struct.inode*, %struct.inode** %8, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 9
  %117 = call i32 @truncate_inode_pages(i32* %116, i32 0)
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  %119 = load i32, i32* @EXT4_HT_MOVE_EXTENTS, align 4
  %120 = call %struct.inode* @ext4_journal_start(%struct.inode* %118, i32 %119, i32 2)
  store %struct.inode* %120, %struct.inode** %6, align 8
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = call i64 @IS_ERR(%struct.inode* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %107
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  br label %310

127:                                              ; preds = %107
  %128 = load %struct.inode*, %struct.inode** %5, align 8
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = call i32 @ext4_double_down_write_data_sem(%struct.inode* %128, %struct.inode* %129)
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %169

135:                                              ; preds = %127
  %136 = load %struct.inode*, %struct.inode** %8, align 8
  %137 = call i32 @set_nlink(%struct.inode* %136, i32 1)
  %138 = load %struct.inode*, %struct.inode** %8, align 8
  %139 = call i32 @i_uid_write(%struct.inode* %138, i32 0)
  %140 = load %struct.inode*, %struct.inode** %8, align 8
  %141 = call i32 @i_gid_write(%struct.inode* %140, i32 0)
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 8
  store i64 0, i64* %143, align 8
  %144 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %145 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %144, i32 0, i32 0
  store i32 0, i32* %145, align 4
  %146 = load %struct.inode*, %struct.inode** %8, align 8
  %147 = call i32 @inode_set_iversion(%struct.inode* %146, i32 1)
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = call i32 @i_size_write(%struct.inode* %148, i32 0)
  %150 = load i32, i32* @S_IFREG, align 4
  %151 = load %struct.inode*, %struct.inode** %8, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 4
  %153 = load %struct.super_block*, %struct.super_block** %4, align 8
  %154 = call i64 @ext4_has_feature_extents(%struct.super_block* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %135
  %157 = load %struct.inode*, %struct.inode** %8, align 8
  %158 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %159 = call i32 @ext4_set_inode_flag(%struct.inode* %157, i32 %158)
  %160 = load %struct.inode*, %struct.inode** %6, align 8
  %161 = load %struct.inode*, %struct.inode** %8, align 8
  %162 = call i32 @ext4_ext_tree_init(%struct.inode* %160, %struct.inode* %161)
  br label %168

163:                                              ; preds = %135
  %164 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %165 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @memset(i32 %166, i32 0, i32 4)
  br label %168

168:                                              ; preds = %163, %156
  br label %169

169:                                              ; preds = %168, %127
  %170 = load %struct.inode*, %struct.inode** %5, align 8
  %171 = call i32 @dquot_initialize(%struct.inode* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %304

175:                                              ; preds = %169
  %176 = load %struct.inode*, %struct.inode** %5, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = mul nsw i32 %179, 512
  %181 = load %struct.inode*, %struct.inode** %5, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %180, %183
  store i32 %184, i32* %10, align 4
  %185 = load %struct.inode*, %struct.inode** %8, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = mul nsw i32 %188, 512
  %190 = load %struct.inode*, %struct.inode** %8, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %189, %192
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %11, align 4
  %196 = sub nsw i32 %194, %195
  store i32 %196, i32* %12, align 4
  %197 = load %struct.inode*, %struct.inode** %5, align 8
  %198 = load %struct.inode*, %struct.inode** %8, align 8
  %199 = call i32 @swap_inode_data(%struct.inode* %197, %struct.inode* %198)
  %200 = load %struct.inode*, %struct.inode** %5, align 8
  %201 = call i32 @current_time(%struct.inode* %200)
  %202 = load %struct.inode*, %struct.inode** %8, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 8
  %204 = load %struct.inode*, %struct.inode** %5, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 6
  store i32 %201, i32* %205, align 8
  %206 = call i8* (...) @prandom_u32()
  %207 = load %struct.inode*, %struct.inode** %5, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 5
  store i8* %206, i8** %208, align 8
  %209 = call i8* (...) @prandom_u32()
  %210 = load %struct.inode*, %struct.inode** %8, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 5
  store i8* %209, i8** %211, align 8
  %212 = load %struct.inode*, %struct.inode** %5, align 8
  %213 = call i32 @reset_inode_seed(%struct.inode* %212)
  %214 = load %struct.inode*, %struct.inode** %8, align 8
  %215 = call i32 @reset_inode_seed(%struct.inode* %214)
  %216 = load %struct.inode*, %struct.inode** %5, align 8
  %217 = call i32 @ext4_discard_preallocations(%struct.inode* %216)
  %218 = load %struct.inode*, %struct.inode** %6, align 8
  %219 = load %struct.inode*, %struct.inode** %5, align 8
  %220 = call i32 @ext4_mark_inode_dirty(%struct.inode* %218, %struct.inode* %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %175
  %224 = load %struct.inode*, %struct.inode** %5, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.inode*, %struct.inode** %5, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @ext4_warning(i32 %226, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = load %struct.inode*, %struct.inode** %8, align 8
  %234 = call i32 @swap_inode_data(%struct.inode* %232, %struct.inode* %233)
  %235 = load %struct.inode*, %struct.inode** %6, align 8
  %236 = load %struct.inode*, %struct.inode** %5, align 8
  %237 = call i32 @ext4_mark_inode_dirty(%struct.inode* %235, %struct.inode* %236)
  br label %304

238:                                              ; preds = %175
  %239 = load %struct.inode*, %struct.inode** %8, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %13, align 8
  %242 = load %struct.inode*, %struct.inode** %8, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = trunc i32 %244 to i16
  store i16 %245, i16* %14, align 2
  %246 = load %struct.inode*, %struct.inode** %5, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.inode*, %struct.inode** %8, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  %251 = load %struct.inode*, %struct.inode** %5, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.inode*, %struct.inode** %8, align 8
  %255 = getelementptr inbounds %struct.inode, %struct.inode* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.inode*, %struct.inode** %6, align 8
  %257 = load %struct.inode*, %struct.inode** %8, align 8
  %258 = call i32 @ext4_mark_inode_dirty(%struct.inode* %256, %struct.inode* %257)
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %238
  %262 = load %struct.inode*, %struct.inode** %8, align 8
  %263 = getelementptr inbounds %struct.inode, %struct.inode* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.inode*, %struct.inode** %8, align 8
  %266 = getelementptr inbounds %struct.inode, %struct.inode* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @ext4_warning(i32 %264, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %267, i32 %268)
  br label %286

270:                                              ; preds = %238
  %271 = load i32, i32* %12, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load %struct.inode*, %struct.inode** %5, align 8
  %275 = load i32, i32* %12, align 4
  %276 = call i32 @dquot_free_space(%struct.inode* %274, i32 %275)
  br label %282

277:                                              ; preds = %270
  %278 = load %struct.inode*, %struct.inode** %5, align 8
  %279 = load i32, i32* %12, align 4
  %280 = mul nsw i32 -1, %279
  %281 = call i32 @dquot_alloc_space(%struct.inode* %278, i32 %280)
  store i32 %281, i32* %7, align 4
  br label %282

282:                                              ; preds = %277, %273
  %283 = load i32, i32* %7, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %303

285:                                              ; preds = %282
  br label %286

286:                                              ; preds = %285, %261
  %287 = load i64, i64* %13, align 8
  %288 = load %struct.inode*, %struct.inode** %8, align 8
  %289 = getelementptr inbounds %struct.inode, %struct.inode* %288, i32 0, i32 2
  store i64 %287, i64* %289, align 8
  %290 = load i16, i16* %14, align 2
  %291 = zext i16 %290 to i32
  %292 = load %struct.inode*, %struct.inode** %8, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 4
  %294 = load %struct.inode*, %struct.inode** %5, align 8
  %295 = load %struct.inode*, %struct.inode** %8, align 8
  %296 = call i32 @swap_inode_data(%struct.inode* %294, %struct.inode* %295)
  %297 = load %struct.inode*, %struct.inode** %6, align 8
  %298 = load %struct.inode*, %struct.inode** %5, align 8
  %299 = call i32 @ext4_mark_inode_dirty(%struct.inode* %297, %struct.inode* %298)
  %300 = load %struct.inode*, %struct.inode** %6, align 8
  %301 = load %struct.inode*, %struct.inode** %8, align 8
  %302 = call i32 @ext4_mark_inode_dirty(%struct.inode* %300, %struct.inode* %301)
  br label %303

303:                                              ; preds = %286, %282
  br label %304

304:                                              ; preds = %303, %223, %174
  %305 = load %struct.inode*, %struct.inode** %6, align 8
  %306 = call i32 @ext4_journal_stop(%struct.inode* %305)
  %307 = load %struct.inode*, %struct.inode** %5, align 8
  %308 = load %struct.inode*, %struct.inode** %8, align 8
  %309 = call i32 @ext4_double_up_write_data_sem(%struct.inode* %307, %struct.inode* %308)
  br label %310

310:                                              ; preds = %304, %124, %106, %98
  %311 = load %struct.inode*, %struct.inode** %5, align 8
  %312 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %311)
  %313 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %312, i32 0, i32 1
  %314 = call i32 @up_write(i32* %313)
  br label %315

315:                                              ; preds = %310, %84, %61
  %316 = load %struct.inode*, %struct.inode** %5, align 8
  %317 = load %struct.inode*, %struct.inode** %8, align 8
  %318 = call i32 @unlock_two_nondirectories(%struct.inode* %316, %struct.inode* %317)
  %319 = load %struct.inode*, %struct.inode** %8, align 8
  %320 = call i32 @iput(%struct.inode* %319)
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  store i64 %322, i64* %3, align 8
  br label %323

323:                                              ; preds = %315, %22
  %324 = load i64, i64* %3, align 8
  ret i64 %324
}

declare dso_local %struct.inode* @ext4_iget(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @lock_two_nondirectories(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i64 @IS_RDONLY(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local %struct.inode* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_double_down_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @inode_set_iversion(%struct.inode*, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i64 @ext4_has_feature_extents(%struct.super_block*) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_tree_init(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @swap_inode_data(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i8* @prandom_u32(...) #1

declare dso_local i32 @reset_inode_seed(%struct.inode*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32, i32) #1

declare dso_local i32 @dquot_free_space(%struct.inode*, i32) #1

declare dso_local i32 @dquot_alloc_space(%struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_stop(%struct.inode*) #1

declare dso_local i32 @ext4_double_up_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @unlock_two_nondirectories(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
