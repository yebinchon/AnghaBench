; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_update_ckpt_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_update_ckpt_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cp_control = type { i32 }
%struct.f2fs_checkpoint = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ORPHAN_INO = common dso_local global i64 0, align 8
@CP_UMOUNT = common dso_local global i32 0, align 4
@CP_TRIMMED = common dso_local global i32 0, align 4
@CP_TRIMMED_FLAG = common dso_local global i32 0, align 4
@CP_UMOUNT_FLAG = common dso_local global i32 0, align 4
@CP_FASTBOOT = common dso_local global i32 0, align 4
@CP_FASTBOOT_FLAG = common dso_local global i32 0, align 4
@CP_ORPHAN_PRESENT_FLAG = common dso_local global i32 0, align 4
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@SBI_IS_RESIZEFS = common dso_local global i32 0, align 4
@CP_FSCK_FLAG = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@CP_DISABLED_FLAG = common dso_local global i32 0, align 4
@SBI_CP_DISABLED_QUICK = common dso_local global i32 0, align 4
@CP_DISABLED_QUICK_FLAG = common dso_local global i32 0, align 4
@SBI_QUOTA_SKIP_FLUSH = common dso_local global i32 0, align 4
@CP_QUOTA_NEED_FSCK_FLAG = common dso_local global i32 0, align 4
@SBI_QUOTA_NEED_REPAIR = common dso_local global i32 0, align 4
@CP_CRC_RECOVERY_FLAG = common dso_local global i32 0, align 4
@CP_NOCRC_RECOVERY_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.cp_control*)* @update_ckpt_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ckpt_flags(%struct.f2fs_sb_info* %0, %struct.cp_control* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.cp_control*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.f2fs_checkpoint*, align 8
  %7 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store %struct.cp_control* %1, %struct.cp_control** %4, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i64, i64* @ORPHAN_INO, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %15)
  store %struct.f2fs_checkpoint* %16, %struct.f2fs_checkpoint** %6, align 8
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.cp_control*, %struct.cp_control** %4, align 8
  %22 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CP_UMOUNT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %29 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %36 = call %struct.TYPE_4__* @NM_I(%struct.f2fs_sb_info* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  %40 = icmp sgt i64 %31, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %43 = call i32 @disable_nat_bits(%struct.f2fs_sb_info* %42, i32 0)
  br label %44

44:                                               ; preds = %41, %27, %2
  %45 = load %struct.cp_control*, %struct.cp_control** %4, align 8
  %46 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CP_TRIMMED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %53 = load i32, i32* @CP_TRIMMED_FLAG, align 4
  %54 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %52, i32 %53)
  br label %59

55:                                               ; preds = %44
  %56 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %57 = load i32, i32* @CP_TRIMMED_FLAG, align 4
  %58 = call i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.cp_control*, %struct.cp_control** %4, align 8
  %61 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CP_UMOUNT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %68 = load i32, i32* @CP_UMOUNT_FLAG, align 4
  %69 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %67, i32 %68)
  br label %74

70:                                               ; preds = %59
  %71 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %72 = load i32, i32* @CP_UMOUNT_FLAG, align 4
  %73 = call i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.cp_control*, %struct.cp_control** %4, align 8
  %76 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CP_FASTBOOT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %83 = load i32, i32* @CP_FASTBOOT_FLAG, align 4
  %84 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %82, i32 %83)
  br label %89

85:                                               ; preds = %74
  %86 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %87 = load i32, i32* @CP_FASTBOOT_FLAG, align 4
  %88 = call i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i64, i64* %5, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %94 = load i32, i32* @CP_ORPHAN_PRESENT_FLAG, align 4
  %95 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %93, i32 %94)
  br label %100

96:                                               ; preds = %89
  %97 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %98 = load i32, i32* @CP_ORPHAN_PRESENT_FLAG, align 4
  %99 = call i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %102 = load i32, i32* @SBI_NEED_FSCK, align 4
  %103 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %107 = load i32, i32* @SBI_IS_RESIZEFS, align 4
  %108 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105, %100
  %111 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %112 = load i32, i32* @CP_FSCK_FLAG, align 4
  %113 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %105
  %115 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %116 = load i32, i32* @SBI_CP_DISABLED, align 4
  %117 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %121 = load i32, i32* @CP_DISABLED_FLAG, align 4
  %122 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %120, i32 %121)
  br label %127

123:                                              ; preds = %114
  %124 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %125 = load i32, i32* @CP_DISABLED_FLAG, align 4
  %126 = call i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %129 = load i32, i32* @SBI_CP_DISABLED_QUICK, align 4
  %130 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %134 = load i32, i32* @CP_DISABLED_QUICK_FLAG, align 4
  %135 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %133, i32 %134)
  br label %140

136:                                              ; preds = %127
  %137 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %138 = load i32, i32* @CP_DISABLED_QUICK_FLAG, align 4
  %139 = call i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %132
  %141 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %142 = load i32, i32* @SBI_QUOTA_SKIP_FLUSH, align 4
  %143 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %147 = load i32, i32* @CP_QUOTA_NEED_FSCK_FLAG, align 4
  %148 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %146, i32 %147)
  br label %153

149:                                              ; preds = %140
  %150 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %151 = load i32, i32* @CP_QUOTA_NEED_FSCK_FLAG, align 4
  %152 = call i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %145
  %154 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %155 = load i32, i32* @SBI_QUOTA_NEED_REPAIR, align 4
  %156 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %160 = load i32, i32* @CP_QUOTA_NEED_FSCK_FLAG, align 4
  %161 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %153
  %163 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %164 = load i32, i32* @CP_CRC_RECOVERY_FLAG, align 4
  %165 = call i32 @__set_ckpt_flags(%struct.f2fs_checkpoint* %163, i32 %164)
  %166 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %167 = load i32, i32* @CP_NOCRC_RECOVERY_FLAG, align 4
  %168 = call i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint* %166, i32 %167)
  %169 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %170 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %169, i32 0, i32 1
  %171 = load i64, i64* %7, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  ret void
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @disable_nat_bits(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__set_ckpt_flags(%struct.f2fs_checkpoint*, i32) #1

declare dso_local i32 @__clear_ckpt_flags(%struct.f2fs_checkpoint*, i32) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
