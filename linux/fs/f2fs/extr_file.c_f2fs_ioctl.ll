; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EIO = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f2fs_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = call i32 @file_inode(%struct.file* %8)
  %10 = call i32 @F2FS_I_SB(i32 %9)
  %11 = call i32 @f2fs_cp_error(i32 %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* @EIO, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %166

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call i32 @file_inode(%struct.file* %18)
  %20 = call i32 @F2FS_I_SB(i32 %19)
  %21 = call i32 @f2fs_is_checkpoint_ready(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* @ENOSPC, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %166

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %163 [
    i32 154, label %28
    i32 143, label %32
    i32 153, label %36
    i32 138, label %40
    i32 161, label %43
    i32 137, label %46
    i32 145, label %49
    i32 162, label %52
    i32 139, label %55
    i32 135, label %59
    i32 142, label %63
    i32 152, label %67
    i32 151, label %71
    i32 131, label %75
    i32 134, label %79
    i32 129, label %83
    i32 128, label %87
    i32 132, label %91
    i32 156, label %95
    i32 155, label %99
    i32 136, label %103
    i32 160, label %107
    i32 147, label %111
    i32 159, label %115
    i32 150, label %119
    i32 158, label %123
    i32 157, label %127
    i32 149, label %131
    i32 141, label %135
    i32 146, label %139
    i32 144, label %143
    i32 133, label %147
    i32 130, label %151
    i32 148, label %155
    i32 140, label %159
  ]

28:                                               ; preds = %26
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @f2fs_ioc_getflags(%struct.file* %29, i64 %30)
  store i64 %31, i64* %4, align 8
  br label %166

32:                                               ; preds = %26
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @f2fs_ioc_setflags(%struct.file* %33, i64 %34)
  store i64 %35, i64* %4, align 8
  br label %166

36:                                               ; preds = %26
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @f2fs_ioc_getversion(%struct.file* %37, i64 %38)
  store i64 %39, i64* %4, align 8
  br label %166

40:                                               ; preds = %26
  %41 = load %struct.file*, %struct.file** %5, align 8
  %42 = call i64 @f2fs_ioc_start_atomic_write(%struct.file* %41)
  store i64 %42, i64* %4, align 8
  br label %166

43:                                               ; preds = %26
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = call i64 @f2fs_ioc_commit_atomic_write(%struct.file* %44)
  store i64 %45, i64* %4, align 8
  br label %166

46:                                               ; preds = %26
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = call i64 @f2fs_ioc_start_volatile_write(%struct.file* %47)
  store i64 %48, i64* %4, align 8
  br label %166

49:                                               ; preds = %26
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = call i64 @f2fs_ioc_release_volatile_write(%struct.file* %50)
  store i64 %51, i64* %4, align 8
  br label %166

52:                                               ; preds = %26
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = call i64 @f2fs_ioc_abort_volatile_write(%struct.file* %53)
  store i64 %54, i64* %4, align 8
  br label %166

55:                                               ; preds = %26
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @f2fs_ioc_shutdown(%struct.file* %56, i64 %57)
  store i64 %58, i64* %4, align 8
  br label %166

59:                                               ; preds = %26
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @f2fs_ioc_fitrim(%struct.file* %60, i64 %61)
  store i64 %62, i64* %4, align 8
  br label %166

63:                                               ; preds = %26
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @f2fs_ioc_set_encryption_policy(%struct.file* %64, i64 %65)
  store i64 %66, i64* %4, align 8
  br label %166

67:                                               ; preds = %26
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @f2fs_ioc_get_encryption_policy(%struct.file* %68, i64 %69)
  store i64 %70, i64* %4, align 8
  br label %166

71:                                               ; preds = %26
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @f2fs_ioc_get_encryption_pwsalt(%struct.file* %72, i64 %73)
  store i64 %74, i64* %4, align 8
  br label %166

75:                                               ; preds = %26
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @f2fs_ioc_get_encryption_policy_ex(%struct.file* %76, i64 %77)
  store i64 %78, i64* %4, align 8
  br label %166

79:                                               ; preds = %26
  %80 = load %struct.file*, %struct.file** %5, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @f2fs_ioc_add_encryption_key(%struct.file* %80, i64 %81)
  store i64 %82, i64* %4, align 8
  br label %166

83:                                               ; preds = %26
  %84 = load %struct.file*, %struct.file** %5, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i64 @f2fs_ioc_remove_encryption_key(%struct.file* %84, i64 %85)
  store i64 %86, i64* %4, align 8
  br label %166

87:                                               ; preds = %26
  %88 = load %struct.file*, %struct.file** %5, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i64 @f2fs_ioc_remove_encryption_key_all_users(%struct.file* %88, i64 %89)
  store i64 %90, i64* %4, align 8
  br label %166

91:                                               ; preds = %26
  %92 = load %struct.file*, %struct.file** %5, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @f2fs_ioc_get_encryption_key_status(%struct.file* %92, i64 %93)
  store i64 %94, i64* %4, align 8
  br label %166

95:                                               ; preds = %26
  %96 = load %struct.file*, %struct.file** %5, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @f2fs_ioc_gc(%struct.file* %96, i64 %97)
  store i64 %98, i64* %4, align 8
  br label %166

99:                                               ; preds = %26
  %100 = load %struct.file*, %struct.file** %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @f2fs_ioc_gc_range(%struct.file* %100, i64 %101)
  store i64 %102, i64* %4, align 8
  br label %166

103:                                              ; preds = %26
  %104 = load %struct.file*, %struct.file** %5, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i64 @f2fs_ioc_write_checkpoint(%struct.file* %104, i64 %105)
  store i64 %106, i64* %4, align 8
  br label %166

107:                                              ; preds = %26
  %108 = load %struct.file*, %struct.file** %5, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @f2fs_ioc_defragment(%struct.file* %108, i64 %109)
  store i64 %110, i64* %4, align 8
  br label %166

111:                                              ; preds = %26
  %112 = load %struct.file*, %struct.file** %5, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i64 @f2fs_ioc_move_range(%struct.file* %112, i64 %113)
  store i64 %114, i64* %4, align 8
  br label %166

115:                                              ; preds = %26
  %116 = load %struct.file*, %struct.file** %5, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @f2fs_ioc_flush_device(%struct.file* %116, i64 %117)
  store i64 %118, i64* %4, align 8
  br label %166

119:                                              ; preds = %26
  %120 = load %struct.file*, %struct.file** %5, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i64 @f2fs_ioc_get_features(%struct.file* %120, i64 %121)
  store i64 %122, i64* %4, align 8
  br label %166

123:                                              ; preds = %26
  %124 = load %struct.file*, %struct.file** %5, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i64 @f2fs_ioc_fsgetxattr(%struct.file* %124, i64 %125)
  store i64 %126, i64* %4, align 8
  br label %166

127:                                              ; preds = %26
  %128 = load %struct.file*, %struct.file** %5, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @f2fs_ioc_fssetxattr(%struct.file* %128, i64 %129)
  store i64 %130, i64* %4, align 8
  br label %166

131:                                              ; preds = %26
  %132 = load %struct.file*, %struct.file** %5, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call i64 @f2fs_ioc_get_pin_file(%struct.file* %132, i64 %133)
  store i64 %134, i64* %4, align 8
  br label %166

135:                                              ; preds = %26
  %136 = load %struct.file*, %struct.file** %5, align 8
  %137 = load i64, i64* %7, align 8
  %138 = call i64 @f2fs_ioc_set_pin_file(%struct.file* %136, i64 %137)
  store i64 %138, i64* %4, align 8
  br label %166

139:                                              ; preds = %26
  %140 = load %struct.file*, %struct.file** %5, align 8
  %141 = load i64, i64* %7, align 8
  %142 = call i64 @f2fs_ioc_precache_extents(%struct.file* %140, i64 %141)
  store i64 %142, i64* %4, align 8
  br label %166

143:                                              ; preds = %26
  %144 = load %struct.file*, %struct.file** %5, align 8
  %145 = load i64, i64* %7, align 8
  %146 = call i64 @f2fs_ioc_resize_fs(%struct.file* %144, i64 %145)
  store i64 %146, i64* %4, align 8
  br label %166

147:                                              ; preds = %26
  %148 = load %struct.file*, %struct.file** %5, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i64 @f2fs_ioc_enable_verity(%struct.file* %148, i64 %149)
  store i64 %150, i64* %4, align 8
  br label %166

151:                                              ; preds = %26
  %152 = load %struct.file*, %struct.file** %5, align 8
  %153 = load i64, i64* %7, align 8
  %154 = call i64 @f2fs_ioc_measure_verity(%struct.file* %152, i64 %153)
  store i64 %154, i64* %4, align 8
  br label %166

155:                                              ; preds = %26
  %156 = load %struct.file*, %struct.file** %5, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i64 @f2fs_get_volume_name(%struct.file* %156, i64 %157)
  store i64 %158, i64* %4, align 8
  br label %166

159:                                              ; preds = %26
  %160 = load %struct.file*, %struct.file** %5, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i64 @f2fs_set_volume_name(%struct.file* %160, i64 %161)
  store i64 %162, i64* %4, align 8
  br label %166

163:                                              ; preds = %26
  %164 = load i64, i64* @ENOTTY, align 8
  %165 = sub nsw i64 0, %164
  store i64 %165, i64* %4, align 8
  br label %166

166:                                              ; preds = %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %52, %49, %46, %43, %40, %36, %32, %28, %23, %14
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(i32) #1

declare dso_local i32 @F2FS_I_SB(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(i32) #1

declare dso_local i64 @f2fs_ioc_getflags(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_setflags(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_getversion(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_start_atomic_write(%struct.file*) #1

declare dso_local i64 @f2fs_ioc_commit_atomic_write(%struct.file*) #1

declare dso_local i64 @f2fs_ioc_start_volatile_write(%struct.file*) #1

declare dso_local i64 @f2fs_ioc_release_volatile_write(%struct.file*) #1

declare dso_local i64 @f2fs_ioc_abort_volatile_write(%struct.file*) #1

declare dso_local i64 @f2fs_ioc_shutdown(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_fitrim(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_set_encryption_policy(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_get_encryption_policy(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_get_encryption_pwsalt(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_get_encryption_policy_ex(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_add_encryption_key(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_remove_encryption_key(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_remove_encryption_key_all_users(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_get_encryption_key_status(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_gc(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_gc_range(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_write_checkpoint(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_defragment(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_move_range(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_flush_device(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_get_features(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_fsgetxattr(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_fssetxattr(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_get_pin_file(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_set_pin_file(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_precache_extents(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_resize_fs(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_enable_verity(%struct.file*, i64) #1

declare dso_local i64 @f2fs_ioc_measure_verity(%struct.file*, i64) #1

declare dso_local i64 @f2fs_get_volume_name(%struct.file*, i64) #1

declare dso_local i64 @f2fs_set_volume_name(%struct.file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
