; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_write_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_write_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i32, i32 }
%struct.cp_control = type { i32 }
%struct.f2fs_checkpoint = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EROFS = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@CP_PAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Start checkpoint disabled!\00", align 1
@SBI_IS_DIRTY = common dso_local global i32 0, align 4
@CP_FASTBOOT = common dso_local global i32 0, align 4
@CP_SYNC = common dso_local global i32 0, align 4
@CP_DISCARD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"start block_ops\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"finish block_ops\00", align 1
@CP_RECOVERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"checkpoint: version = %llx\00", align 1
@CP_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"finish checkpoint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %0, %struct.cp_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.cp_control*, align 8
  %6 = alloca %struct.f2fs_checkpoint*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.cp_control* %1, %struct.cp_control** %5, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %10 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %9)
  store %struct.f2fs_checkpoint* %10, %struct.f2fs_checkpoint** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @f2fs_readonly(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %18 = call i64 @f2fs_hw_is_readonly(%struct.f2fs_sb_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @EROFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %209

23:                                               ; preds = %16
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %25 = load i32, i32* @SBI_CP_DISABLED, align 4
  %26 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %24, i32 %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %31 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CP_PAUSE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %209

36:                                               ; preds = %29
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %38 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %23
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %44 = load i32, i32* @SBI_IS_DIRTY, align 4
  %45 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %39
  %48 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %49 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CP_FASTBOOT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %47
  %55 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %56 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CP_SYNC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %54
  %62 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %63 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CP_DISCARD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %70 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68, %54, %47
  br label %204

74:                                               ; preds = %68, %61, %39
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %76 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %75)
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %204

82:                                               ; preds = %74
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %84 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %87 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @trace_f2fs_write_checkpoint(i32 %85, i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %91 = call i32 @block_operations(%struct.f2fs_sb_info* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %204

95:                                               ; preds = %82
  %96 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %97 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %100 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @trace_f2fs_write_checkpoint(i32 %98, i32 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %104 = call i32 @f2fs_flush_merged_writes(%struct.f2fs_sb_info* %103)
  %105 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %106 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CP_DISCARD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %145

111:                                              ; preds = %95
  %112 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %113 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %114 = call i32 @f2fs_exist_trim_candidates(%struct.f2fs_sb_info* %112, %struct.cp_control* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %118 = call i32 @unblock_operations(%struct.f2fs_sb_info* %117)
  br label %204

119:                                              ; preds = %111
  %120 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %121 = call %struct.TYPE_4__* @NM_I(%struct.f2fs_sb_info* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %119
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %127 = call %struct.TYPE_3__* @SIT_I(%struct.f2fs_sb_info* %126)
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %133 = call i64 @prefree_segments(%struct.f2fs_sb_info* %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %137 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %138 = call i32 @f2fs_flush_sit_entries(%struct.f2fs_sb_info* %136, %struct.cp_control* %137)
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %140 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %141 = call i32 @f2fs_clear_prefree_segments(%struct.f2fs_sb_info* %139, %struct.cp_control* %140)
  %142 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %143 = call i32 @unblock_operations(%struct.f2fs_sb_info* %142)
  br label %204

144:                                              ; preds = %131, %125, %119
  br label %145

145:                                              ; preds = %144, %95
  %146 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %147 = call i64 @cur_cp_version(%struct.f2fs_checkpoint* %146)
  store i64 %147, i64* %7, align 8
  %148 = load i64, i64* %7, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %7, align 8
  %150 = call i32 @cpu_to_le64(i64 %149)
  %151 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %152 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %154 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %155 = call i32 @f2fs_flush_nat_entries(%struct.f2fs_sb_info* %153, %struct.cp_control* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %176

159:                                              ; preds = %145
  %160 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %161 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %162 = call i32 @f2fs_flush_sit_entries(%struct.f2fs_sb_info* %160, %struct.cp_control* %161)
  %163 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %164 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %165 = call i32 @do_checkpoint(%struct.f2fs_sb_info* %163, %struct.cp_control* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %170 = call i32 @f2fs_release_discard_addrs(%struct.f2fs_sb_info* %169)
  br label %175

171:                                              ; preds = %159
  %172 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %173 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %174 = call i32 @f2fs_clear_prefree_segments(%struct.f2fs_sb_info* %172, %struct.cp_control* %173)
  br label %175

175:                                              ; preds = %171, %168
  br label %176

176:                                              ; preds = %175, %158
  %177 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %178 = call i32 @unblock_operations(%struct.f2fs_sb_info* %177)
  %179 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %180 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @stat_inc_cp_count(i32 %181)
  %183 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %184 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @CP_RECOVERY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %176
  %190 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %191 = load i64, i64* %7, align 8
  %192 = call i32 @f2fs_notice(%struct.f2fs_sb_info* %190, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %191)
  br label %193

193:                                              ; preds = %189, %176
  %194 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %195 = load i32, i32* @CP_TIME, align 4
  %196 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %194, i32 %195)
  %197 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %198 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.cp_control*, %struct.cp_control** %5, align 8
  %201 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @trace_f2fs_write_checkpoint(i32 %199, i32 %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %204

204:                                              ; preds = %193, %135, %116, %94, %79, %73
  %205 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %206 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %205, i32 0, i32 0
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %204, %35, %20
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_readonly(i32) #1

declare dso_local i64 @f2fs_hw_is_readonly(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @trace_f2fs_write_checkpoint(i32, i32, i8*) #1

declare dso_local i32 @block_operations(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_flush_merged_writes(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_exist_trim_candidates(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @unblock_operations(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_4__* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_3__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @prefree_segments(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_flush_sit_entries(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @f2fs_clear_prefree_segments(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i64 @cur_cp_version(%struct.f2fs_checkpoint*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @f2fs_flush_nat_entries(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @do_checkpoint(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @f2fs_release_discard_addrs(%struct.f2fs_sb_info*) #1

declare dso_local i32 @stat_inc_cp_count(i32) #1

declare dso_local i32 @f2fs_notice(%struct.f2fs_sb_info*, i8*, i64) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
