; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i64, i32, i32, i32 }

@EIO = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@FALLOC_FL_COLLAPSE_RANGE = common dso_local global i32 0, align 4
@FALLOC_FL_INSERT_RANGE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_ZERO_RANGE = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i64)* @f2fs_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @f2fs_fallocate(%struct.file* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.inode*, %struct.inode** %10, align 8
  %15 = call i32 @F2FS_I_SB(%struct.inode* %14)
  %16 = call i32 @f2fs_cp_error(i32 %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @EIO, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %156

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call i32 @F2FS_I_SB(%struct.inode* %23)
  %25 = call i32 @f2fs_is_checkpoint_ready(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @ENOSPC, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %156

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @S_ISREG(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %156

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i64 @IS_ENCRYPTED(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @FALLOC_FL_COLLAPSE_RANGE, align 4
  %46 = load i32, i32* @FALLOC_FL_INSERT_RANGE, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i64, i64* @EOPNOTSUPP, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %5, align 8
  br label %156

53:                                               ; preds = %43, %39
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %56 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FALLOC_FL_COLLAPSE_RANGE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @FALLOC_FL_ZERO_RANGE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FALLOC_FL_INSERT_RANGE, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = and i32 %54, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load i64, i64* @EOPNOTSUPP, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %156

70:                                               ; preds = %53
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = call i32 @inode_lock(%struct.inode* %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %146

84:                                               ; preds = %77
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @punch_hole(%struct.inode* %85, i64 %86, i64 %87)
  store i64 %88, i64* %11, align 8
  br label %129

89:                                               ; preds = %70
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @FALLOC_FL_COLLAPSE_RANGE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @f2fs_collapse_range(%struct.inode* %95, i64 %96, i64 %97)
  store i64 %98, i64* %11, align 8
  br label %128

99:                                               ; preds = %89
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @FALLOC_FL_ZERO_RANGE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @f2fs_zero_range(%struct.inode* %105, i64 %106, i64 %107, i32 %108)
  store i64 %109, i64* %11, align 8
  br label %127

110:                                              ; preds = %99
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @FALLOC_FL_INSERT_RANGE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @f2fs_insert_range(%struct.inode* %116, i64 %117, i64 %118)
  store i64 %119, i64* %11, align 8
  br label %126

120:                                              ; preds = %110
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @expand_inode_data(%struct.inode* %121, i64 %122, i64 %123, i32 %124)
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %120, %115
  br label %127

127:                                              ; preds = %126, %104
  br label %128

128:                                              ; preds = %127, %94
  br label %129

129:                                              ; preds = %128, %84
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %129
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = call i32 @current_time(%struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %10, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.inode*, %struct.inode** %10, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 4
  %139 = load %struct.inode*, %struct.inode** %10, align 8
  %140 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %139, i32 0)
  %141 = load %struct.inode*, %struct.inode** %10, align 8
  %142 = call i32 @F2FS_I_SB(%struct.inode* %141)
  %143 = load i32, i32* @REQ_TIME, align 4
  %144 = call i32 @f2fs_update_time(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %132, %129
  br label %146

146:                                              ; preds = %145, %83
  %147 = load %struct.inode*, %struct.inode** %10, align 8
  %148 = call i32 @inode_unlock(%struct.inode* %147)
  %149 = load %struct.inode*, %struct.inode** %10, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @trace_f2fs_fallocate(%struct.inode* %149, i32 %150, i64 %151, i64 %152, i64 %153)
  %155 = load i64, i64* %11, align 8
  store i64 %155, i64* %5, align 8
  br label %156

156:                                              ; preds = %146, %67, %50, %36, %27, %19
  %157 = load i64, i64* %5, align 8
  ret i64 %157
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @punch_hole(%struct.inode*, i64, i64) #1

declare dso_local i64 @f2fs_collapse_range(%struct.inode*, i64, i64) #1

declare dso_local i64 @f2fs_zero_range(%struct.inode*, i64, i64, i32) #1

declare dso_local i64 @f2fs_insert_range(%struct.inode*, i64, i64) #1

declare dso_local i64 @expand_inode_data(%struct.inode*, i64, i64, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_update_time(i32, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @trace_f2fs_fallocate(%struct.inode*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
