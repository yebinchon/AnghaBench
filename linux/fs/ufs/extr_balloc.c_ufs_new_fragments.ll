; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_balloc.c_ufs_new_fragments.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_balloc.c_ufs_new_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.ufs_sb_private_info = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ufs_super_block_first = type { i8* }
%struct.TYPE_5__ = type { i32, %struct.ufs_sb_private_info* }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"ENTER, ino %lu, fragment %llu, goal %llu, count %u\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ufs_new_fragments\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"internal warning fragment %llu, count %u\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"internal error, fragment %llu, tmp %llu\0A\00", align 1
@INVBLOCK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"EXIT (ALREADY ALLOCATED)\0A\00", align 1
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"EXIT (FAILED)\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"EXIT, result %llu\0A\00", align 1
@UFS_OPTSPACE = common dso_local global i64 0, align 8
@UFS_OPTTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ufs_new_fragments(%struct.inode* %0, i8* %1, i64 %2, i64 %3, i32 %4, i32* %5, %struct.page* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.ufs_sb_private_info*, align 8
  %18 = alloca %struct.ufs_super_block_first*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.page* %6, %struct.page** %15, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i64 %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load %struct.super_block*, %struct.super_block** %33, align 8
  store %struct.super_block* %34, %struct.super_block** %16, align 8
  %35 = load %struct.super_block*, %struct.super_block** %16, align 8
  %36 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %37, align 8
  store %struct.ufs_sb_private_info* %38, %struct.ufs_sb_private_info** %17, align 8
  %39 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %40 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %39)
  store %struct.ufs_super_block_first* %40, %struct.ufs_super_block_first** %18, align 8
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  %43 = load i32*, i32** %14, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.super_block*, %struct.super_block** %16, align 8
  %45 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.super_block*, %struct.super_block** %16, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %48, i8* %49)
  store i64 %50, i64* %22, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @ufs_fragnum(i64 %52)
  %54 = add i32 %51, %53
  %55 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %56 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ugt i32 %54, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %7
  %60 = load %struct.super_block*, %struct.super_block** %16, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ufs_warning(%struct.super_block* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %61, i32 %62)
  %64 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %65 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @ufs_fragnum(i64 %67)
  %69 = sub i32 %66, %68
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %59, %7
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @ufs_fragnum(i64 %71)
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add i32 %73, %74
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %70
  %79 = load i64, i64* %22, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load %struct.super_block*, %struct.super_block** %16, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %22, align 8
  %85 = call i32 @ufs_error(%struct.super_block* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %84)
  %86 = load %struct.super_block*, %struct.super_block** %16, align 8
  %87 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i64, i64* @INVBLOCK, align 8
  store i64 %90, i64* %8, align 8
  br label %411

91:                                               ; preds = %78
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.super_block*, %struct.super_block** %16, align 8
  %101 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  store i64 0, i64* %8, align 8
  br label %411

104:                                              ; preds = %91
  br label %115

105:                                              ; preds = %70
  %106 = load i64, i64* %22, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %110 = load %struct.super_block*, %struct.super_block** %16, align 8
  %111 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %110)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  store i64 0, i64* %8, align 8
  br label %411

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %104
  %116 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %117 = call i64 @ufs_freefrags(%struct.ufs_sb_private_info* %116)
  %118 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %119 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %117, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %115
  %126 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %127 = call i32 @capable(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load %struct.super_block*, %struct.super_block** %16, align 8
  %131 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %130)
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %411

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %115
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %139 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i64 0, i64* %12, align 8
  br label %143

143:                                              ; preds = %142, %136
  %144 = load i64, i64* %12, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.inode*, %struct.inode** %9, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ufs_inotocg(i32 %149)
  store i32 %150, i32* %19, align 4
  br label %155

151:                                              ; preds = %143
  %152 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @ufs_dtog(%struct.ufs_sb_private_info* %152, i64 %153)
  store i32 %154, i32* %19, align 4
  br label %155

155:                                              ; preds = %151, %146
  %156 = load i32, i32* %20, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %215

158:                                              ; preds = %155
  %159 = load %struct.inode*, %struct.inode** %9, align 8
  %160 = load i32, i32* %19, align 4
  %161 = load i64, i64* %12, align 8
  %162 = load i32, i32* %13, align 4
  %163 = zext i32 %162 to i64
  %164 = load i32*, i32** %14, align 8
  %165 = call i64 @ufs_alloc_fragments(%struct.inode* %159, i32 %160, i64 %161, i64 %163, i32* %164)
  store i64 %165, i64* %24, align 8
  %166 = load i64, i64* %24, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %207

168:                                              ; preds = %158
  %169 = load %struct.inode*, %struct.inode** %9, align 8
  %170 = load i64, i64* %24, align 8
  %171 = load i32, i32* %20, align 4
  %172 = zext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %20, align 4
  %176 = sub i32 %174, %175
  %177 = load %struct.page*, %struct.page** %15, align 8
  %178 = icmp ne %struct.page* %177, null
  %179 = zext i1 %178 to i32
  %180 = call i32 @ufs_clear_frags(%struct.inode* %169, i64 %173, i32 %176, i32 %179)
  %181 = load i32*, i32** %14, align 8
  store i32 0, i32* %181, align 4
  %182 = load %struct.inode*, %struct.inode** %9, align 8
  %183 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %182)
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = call i32 @write_seqlock(i32* %184)
  %186 = load %struct.super_block*, %struct.super_block** %16, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load i64, i64* %24, align 8
  %189 = call i32 @ufs_cpu_to_data_ptr(%struct.super_block* %186, i8* %187, i64 %188)
  %190 = load %struct.inode*, %struct.inode** %9, align 8
  %191 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %190)
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %11, align 8
  %195 = load i32, i32* %13, align 4
  %196 = zext i32 %195 to i64
  %197 = add nsw i64 %194, %196
  %198 = call i8* @max(i64 %193, i64 %197)
  %199 = ptrtoint i8* %198 to i64
  %200 = load %struct.inode*, %struct.inode** %9, align 8
  %201 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %200)
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  store i64 %199, i64* %202, align 8
  %203 = load %struct.inode*, %struct.inode** %9, align 8
  %204 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %203)
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = call i32 @write_sequnlock(i32* %205)
  br label %207

207:                                              ; preds = %168, %158
  %208 = load %struct.super_block*, %struct.super_block** %16, align 8
  %209 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %208)
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load i64, i64* %24, align 8
  %213 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %212)
  %214 = load i64, i64* %24, align 8
  store i64 %214, i64* %8, align 8
  br label %411

215:                                              ; preds = %155
  %216 = load %struct.inode*, %struct.inode** %9, align 8
  %217 = load i64, i64* %22, align 8
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %21, align 4
  %220 = call i64 @ufs_add_fragments(%struct.inode* %216, i64 %217, i32 %218, i32 %219)
  store i64 %220, i64* %24, align 8
  %221 = load i64, i64* %24, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %265

223:                                              ; preds = %215
  %224 = load i32*, i32** %14, align 8
  store i32 0, i32* %224, align 4
  %225 = load %struct.inode*, %struct.inode** %9, align 8
  %226 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %225)
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = call i32 @read_seqlock_excl(i32* %227)
  %229 = load %struct.inode*, %struct.inode** %9, align 8
  %230 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %229)
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %11, align 8
  %234 = load i32, i32* %13, align 4
  %235 = zext i32 %234 to i64
  %236 = add nsw i64 %233, %235
  %237 = call i8* @max(i64 %232, i64 %236)
  %238 = ptrtoint i8* %237 to i64
  %239 = load %struct.inode*, %struct.inode** %9, align 8
  %240 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %239)
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  store i64 %238, i64* %241, align 8
  %242 = load %struct.inode*, %struct.inode** %9, align 8
  %243 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %242)
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = call i32 @read_sequnlock_excl(i32* %244)
  %246 = load %struct.inode*, %struct.inode** %9, align 8
  %247 = load i64, i64* %24, align 8
  %248 = load i32, i32* %20, align 4
  %249 = zext i32 %248 to i64
  %250 = add nsw i64 %247, %249
  %251 = load i32, i32* %21, align 4
  %252 = load i32, i32* %20, align 4
  %253 = sub i32 %251, %252
  %254 = load %struct.page*, %struct.page** %15, align 8
  %255 = icmp ne %struct.page* %254, null
  %256 = zext i1 %255 to i32
  %257 = call i32 @ufs_clear_frags(%struct.inode* %246, i64 %250, i32 %253, i32 %256)
  %258 = load %struct.super_block*, %struct.super_block** %16, align 8
  %259 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %258)
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = call i32 @mutex_unlock(i32* %260)
  %262 = load i64, i64* %24, align 8
  %263 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %262)
  %264 = load i64, i64* %24, align 8
  store i64 %264, i64* %8, align 8
  br label %411

265:                                              ; preds = %215
  %266 = load %struct.super_block*, %struct.super_block** %16, align 8
  %267 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %18, align 8
  %268 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = call i64 @fs32_to_cpu(%struct.super_block* %266, i8* %269)
  %271 = load i64, i64* @UFS_OPTSPACE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %291

273:                                              ; preds = %265
  %274 = load i32, i32* %21, align 4
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %23, align 8
  %276 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %277 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %276, i32 0, i32 6
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %281 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp slt i64 %279, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %273
  %285 = load %struct.super_block*, %struct.super_block** %16, align 8
  %286 = load i64, i64* @UFS_OPTTIME, align 8
  %287 = call i8* @cpu_to_fs32(%struct.super_block* %285, i64 %286)
  %288 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %18, align 8
  %289 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %288, i32 0, i32 0
  store i8* %287, i8** %289, align 8
  br label %290

290:                                              ; preds = %284, %273
  br label %311

291:                                              ; preds = %265
  %292 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %293 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %23, align 8
  %296 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %297 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %296, i32 0, i32 6
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %301 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = icmp sgt i64 %299, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %291
  %305 = load %struct.super_block*, %struct.super_block** %16, align 8
  %306 = load i64, i64* @UFS_OPTSPACE, align 8
  %307 = call i8* @cpu_to_fs32(%struct.super_block* %305, i64 %306)
  %308 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %18, align 8
  %309 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %308, i32 0, i32 0
  store i8* %307, i8** %309, align 8
  br label %310

310:                                              ; preds = %304, %291
  br label %311

311:                                              ; preds = %310, %290
  %312 = load %struct.inode*, %struct.inode** %9, align 8
  %313 = load i32, i32* %19, align 4
  %314 = load i64, i64* %12, align 8
  %315 = load i64, i64* %23, align 8
  %316 = load i32*, i32** %14, align 8
  %317 = call i64 @ufs_alloc_fragments(%struct.inode* %312, i32 %313, i64 %314, i64 %315, i32* %316)
  store i64 %317, i64* %24, align 8
  %318 = load i64, i64* %24, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %405

320:                                              ; preds = %311
  %321 = load %struct.inode*, %struct.inode** %9, align 8
  %322 = load i64, i64* %24, align 8
  %323 = load i32, i32* %20, align 4
  %324 = zext i32 %323 to i64
  %325 = add nsw i64 %322, %324
  %326 = load i32, i32* %21, align 4
  %327 = load i32, i32* %20, align 4
  %328 = sub i32 %326, %327
  %329 = load %struct.page*, %struct.page** %15, align 8
  %330 = icmp ne %struct.page* %329, null
  %331 = zext i1 %330 to i32
  %332 = call i32 @ufs_clear_frags(%struct.inode* %321, i64 %325, i32 %328, i32 %331)
  %333 = load %struct.super_block*, %struct.super_block** %16, align 8
  %334 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %333)
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 0
  %336 = call i32 @mutex_unlock(i32* %335)
  %337 = load %struct.inode*, %struct.inode** %9, align 8
  %338 = load i64, i64* %11, align 8
  %339 = load i32, i32* %20, align 4
  %340 = zext i32 %339 to i64
  %341 = sub nsw i64 %338, %340
  %342 = load i32, i32* %20, align 4
  %343 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %344 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* %22, align 8
  %347 = add nsw i64 %345, %346
  %348 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  %349 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %348, i32 0, i32 5
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* %24, align 8
  %352 = add nsw i64 %350, %351
  %353 = load %struct.page*, %struct.page** %15, align 8
  %354 = call i32 @ufs_change_blocknr(%struct.inode* %337, i64 %341, i32 %342, i64 %347, i64 %352, %struct.page* %353)
  %355 = load i32*, i32** %14, align 8
  store i32 0, i32* %355, align 4
  %356 = load %struct.inode*, %struct.inode** %9, align 8
  %357 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %356)
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 1
  %359 = call i32 @write_seqlock(i32* %358)
  %360 = load %struct.super_block*, %struct.super_block** %16, align 8
  %361 = load i8*, i8** %10, align 8
  %362 = load i64, i64* %24, align 8
  %363 = call i32 @ufs_cpu_to_data_ptr(%struct.super_block* %360, i8* %361, i64 %362)
  %364 = load %struct.inode*, %struct.inode** %9, align 8
  %365 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %364)
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %11, align 8
  %369 = load i32, i32* %13, align 4
  %370 = zext i32 %369 to i64
  %371 = add nsw i64 %368, %370
  %372 = call i8* @max(i64 %367, i64 %371)
  %373 = ptrtoint i8* %372 to i64
  %374 = load %struct.inode*, %struct.inode** %9, align 8
  %375 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %374)
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 0
  store i64 %373, i64* %376, align 8
  %377 = load %struct.inode*, %struct.inode** %9, align 8
  %378 = call %struct.TYPE_6__* @UFS_I(%struct.inode* %377)
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 1
  %380 = call i32 @write_sequnlock(i32* %379)
  %381 = load i32, i32* %21, align 4
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %23, align 8
  %384 = icmp slt i64 %382, %383
  br i1 %384, label %385, label %397

385:                                              ; preds = %320
  %386 = load %struct.inode*, %struct.inode** %9, align 8
  %387 = load i64, i64* %24, align 8
  %388 = load i32, i32* %21, align 4
  %389 = zext i32 %388 to i64
  %390 = add nsw i64 %387, %389
  %391 = load i64, i64* %23, align 8
  %392 = load i32, i32* %21, align 4
  %393 = zext i32 %392 to i64
  %394 = sub nsw i64 %391, %393
  %395 = trunc i64 %394 to i32
  %396 = call i32 @ufs_free_fragments(%struct.inode* %386, i64 %390, i32 %395)
  br label %397

397:                                              ; preds = %385, %320
  %398 = load %struct.inode*, %struct.inode** %9, align 8
  %399 = load i64, i64* %22, align 8
  %400 = load i32, i32* %20, align 4
  %401 = call i32 @ufs_free_fragments(%struct.inode* %398, i64 %399, i32 %400)
  %402 = load i64, i64* %24, align 8
  %403 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %402)
  %404 = load i64, i64* %24, align 8
  store i64 %404, i64* %8, align 8
  br label %411

405:                                              ; preds = %311
  %406 = load %struct.super_block*, %struct.super_block** %16, align 8
  %407 = call %struct.TYPE_5__* @UFS_SB(%struct.super_block* %406)
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 0
  %409 = call i32 @mutex_unlock(i32* %408)
  %410 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %411

411:                                              ; preds = %405, %397, %223, %207, %129, %108, %98, %81
  %412 = load i64, i64* %8, align 8
  ret i64 %412
}

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @UFS_SB(%struct.super_block*) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i32 @ufs_fragnum(i64) #1

declare dso_local i32 @ufs_warning(%struct.super_block*, i8*, i8*, i64, i32) #1

declare dso_local i32 @ufs_error(%struct.super_block*, i8*, i8*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_6__* @UFS_I(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ufs_freefrags(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @ufs_inotocg(i32) #1

declare dso_local i32 @ufs_dtog(%struct.ufs_sb_private_info*, i64) #1

declare dso_local i64 @ufs_alloc_fragments(%struct.inode*, i32, i64, i64, i32*) #1

declare dso_local i32 @ufs_clear_frags(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @ufs_cpu_to_data_ptr(%struct.super_block*, i8*, i64) #1

declare dso_local i8* @max(i64, i64) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i64 @ufs_add_fragments(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @read_seqlock_excl(i32*) #1

declare dso_local i32 @read_sequnlock_excl(i32*) #1

declare dso_local i64 @fs32_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i64) #1

declare dso_local i32 @ufs_change_blocknr(%struct.inode*, i64, i32, i64, i64, %struct.page*) #1

declare dso_local i32 @ufs_free_fragments(%struct.inode*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
