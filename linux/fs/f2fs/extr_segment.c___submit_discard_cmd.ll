; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___submit_discard_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___submit_discard_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.discard_policy = type { i64, i32, i64 }
%struct.discard_cmd = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.block_device* }
%struct.block_device = type { i32 }
%struct.request_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.discard_cmd_control = type { i32, i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { i32 }
%struct.bio = type { i32, i32, %struct.discard_cmd* }
%struct.TYPE_4__ = type { %struct.discard_cmd_control* }

@DPOLICY_FSTRIM = common dso_local global i64 0, align 8
@REQ_SYNC = common dso_local global i32 0, align 4
@D_PREP = common dso_local global i64 0, align 8
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@FAULT_DISCARD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@D_PARTIAL = common dso_local global i64 0, align 8
@D_SUBMIT = common dso_local global i8* null, align 8
@f2fs_submit_discard_endio = common dso_local global i32 0, align 4
@FS_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.discard_policy*, %struct.discard_cmd*, i32*)* @__submit_discard_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__submit_discard_cmd(%struct.f2fs_sb_info* %0, %struct.discard_policy* %1, %struct.discard_cmd* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.discard_policy*, align 8
  %8 = alloca %struct.discard_cmd*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.block_device*, align 8
  %11 = alloca %struct.request_queue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.discard_cmd_control*, align 8
  %14 = alloca %struct.list_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.bio*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store %struct.discard_policy* %1, %struct.discard_policy** %7, align 8
  store %struct.discard_cmd* %2, %struct.discard_cmd** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %24, i32 0, i32 8
  %26 = load %struct.block_device*, %struct.block_device** %25, align 8
  store %struct.block_device* %26, %struct.block_device** %10, align 8
  %27 = load %struct.block_device*, %struct.block_device** %10, align 8
  %28 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %27)
  store %struct.request_queue* %28, %struct.request_queue** %11, align 8
  %29 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SECTOR_TO_BLOCK(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %35 = call %struct.TYPE_4__* @SM_I(%struct.f2fs_sb_info* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %36, align 8
  store %struct.discard_cmd_control* %37, %struct.discard_cmd_control** %13, align 8
  %38 = load %struct.discard_policy*, %struct.discard_policy** %7, align 8
  %39 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DPOLICY_FSTRIM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %4
  %44 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %13, align 8
  %45 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %44, i32 0, i32 3
  br label %49

46:                                               ; preds = %4
  %47 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %13, align 8
  %48 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %47, i32 0, i32 2
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi %struct.list_head* [ %45, %43 ], [ %48, %46 ]
  store %struct.list_head* %50, %struct.list_head** %14, align 8
  %51 = load %struct.discard_policy*, %struct.discard_policy** %7, align 8
  %52 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @REQ_SYNC, align 4
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %60 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @D_PREP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %264

66:                                               ; preds = %58
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %68 = load i32, i32* @SBI_NEED_FSCK, align 4
  %69 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %264

72:                                               ; preds = %66
  %73 = load %struct.block_device*, %struct.block_device** %10, align 8
  %74 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %75 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %78 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @trace_f2fs_issue_discard(%struct.block_device* %73, i32 %76, i32 %79)
  %81 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %82 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  %84 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %17, align 4
  %87 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %88 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %19, align 4
  %91 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %92 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %91, i32 0, i32 2
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %194, %72
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.discard_policy*, %struct.discard_policy** %7, align 8
  %100 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* %20, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %103, %96, %93
  %108 = phi i1 [ false, %96 ], [ false, %93 ], [ %106, %103 ]
  br i1 %108, label %109, label %249

109:                                              ; preds = %107
  store %struct.bio* null, %struct.bio** %21, align 8
  store i32 1, i32* %23, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %18, align 4
  store i32 0, i32* %23, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.discard_policy*, %struct.discard_policy** %7, align 8
  %122 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  store i32 1, i32* %23, align 4
  br label %126

126:                                              ; preds = %125, %115
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %129 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %133 = load i32, i32* @FAULT_DISCARD, align 4
  %134 = call i64 @time_to_inject(%struct.f2fs_sb_info* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load i32, i32* @FAULT_DISCARD, align 4
  %138 = call i32 @f2fs_show_injection_info(i32 %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %20, align 4
  br label %149

141:                                              ; preds = %126
  %142 = load %struct.block_device*, %struct.block_device** %10, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @SECTOR_FROM_BLOCK(i32 %143)
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @SECTOR_FROM_BLOCK(i32 %145)
  %147 = load i32, i32* @GFP_NOFS, align 4
  %148 = call i32 @__blkdev_issue_discard(%struct.block_device* %142, i32 %144, i32 %146, i32 %147, i32 0, %struct.bio** %21)
  store i32 %148, i32* %20, align 4
  br label %149

149:                                              ; preds = %141, %136
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  %153 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %154 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %153, i32 0, i32 6
  %155 = load i64, i64* %22, align 8
  %156 = call i32 @spin_lock_irqsave(i32* %154, i64 %155)
  %157 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %158 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @D_PARTIAL, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load i8*, i8** @D_SUBMIT, align 8
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %166 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %152
  %168 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %169 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %168, i32 0, i32 6
  %170 = load i64, i64* %22, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  br label %249

172:                                              ; preds = %149
  %173 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %174 = load %struct.bio*, %struct.bio** %21, align 8
  %175 = icmp ne %struct.bio* %174, null
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %173, i32 %177)
  %179 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %180 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %179, i32 0, i32 6
  %181 = load i64, i64* %22, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  %183 = load i32, i32* %23, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %172
  %186 = load i8*, i8** @D_SUBMIT, align 8
  %187 = ptrtoint i8* %186 to i64
  %188 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %189 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  br label %194

190:                                              ; preds = %172
  %191 = load i64, i64* @D_PARTIAL, align 8
  %192 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %193 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %190, %185
  %195 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %196 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  %199 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %200 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %199, i32 0, i32 6
  %201 = load i64, i64* %22, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  %203 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %13, align 8
  %204 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %203, i32 0, i32 1
  %205 = call i32 @atomic_inc(i32* %204)
  %206 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %207 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %211 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %210, i32 0, i32 4
  %212 = load %struct.list_head*, %struct.list_head** %14, align 8
  %213 = call i32 @list_move_tail(i32* %211, %struct.list_head* %212)
  %214 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* %18, align 4
  %218 = add i32 %216, %217
  %219 = call i32 @__check_sit_bitmap(%struct.f2fs_sb_info* %214, i32 %215, i32 %218)
  %220 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  %221 = load %struct.bio*, %struct.bio** %21, align 8
  %222 = getelementptr inbounds %struct.bio, %struct.bio* %221, i32 0, i32 2
  store %struct.discard_cmd* %220, %struct.discard_cmd** %222, align 8
  %223 = load i32, i32* @f2fs_submit_discard_endio, align 4
  %224 = load %struct.bio*, %struct.bio** %21, align 8
  %225 = getelementptr inbounds %struct.bio, %struct.bio* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load %struct.bio*, %struct.bio** %21, align 8
  %228 = getelementptr inbounds %struct.bio, %struct.bio* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load %struct.bio*, %struct.bio** %21, align 8
  %232 = call i32 @submit_bio(%struct.bio* %231)
  %233 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %13, align 8
  %234 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %233, i32 0, i32 0
  %235 = call i32 @atomic_inc(i32* %234)
  %236 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %237 = load i32, i32* @FS_DISCARD, align 4
  %238 = call i32 @f2fs_update_iostat(%struct.f2fs_sb_info* %236, i32 %237, i32 1)
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %16, align 4
  %241 = add i32 %240, %239
  store i32 %241, i32* %16, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %17, align 4
  %244 = add i32 %243, %242
  store i32 %244, i32* %17, align 4
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* %19, align 4
  %247 = sub i32 %246, %245
  store i32 %247, i32* %19, align 4
  %248 = load i32, i32* %19, align 4
  store i32 %248, i32* %18, align 4
  br label %93

249:                                              ; preds = %167, %107
  %250 = load i32, i32* %20, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %262, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %18, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %252
  %256 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %257 = load %struct.block_device*, %struct.block_device** %10, align 8
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* %18, align 4
  %261 = call i32 @__update_discard_tree_range(%struct.f2fs_sb_info* %256, %struct.block_device* %257, i32 %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %255, %252, %249
  %263 = load i32, i32* %20, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %262, %71, %65
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @SECTOR_TO_BLOCK(i32) #1

declare dso_local %struct.TYPE_4__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_issue_discard(%struct.block_device*, i32, i32) #1

declare dso_local i64 @time_to_inject(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i32 @__blkdev_issue_discard(%struct.block_device*, i32, i32, i32, i32, %struct.bio**) #1

declare dso_local i32 @SECTOR_FROM_BLOCK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @__check_sit_bitmap(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @f2fs_update_iostat(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @__update_discard_tree_range(%struct.f2fs_sb_info*, %struct.block_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
