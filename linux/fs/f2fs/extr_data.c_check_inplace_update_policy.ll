; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_check_inplace_update_policy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_check_inplace_update_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_io_info = type { i64, i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@F2FS_IPU_FORCE = common dso_local global i32 0, align 4
@F2FS_IPU_SSR = common dso_local global i32 0, align 4
@F2FS_IPU_UTIL = common dso_local global i32 0, align 4
@F2FS_IPU_SSR_UTIL = common dso_local global i32 0, align 4
@F2FS_IPU_ASYNC = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@REQ_SYNC = common dso_local global i32 0, align 4
@F2FS_IPU_FSYNC = common dso_local global i32 0, align 4
@FI_NEED_IPU = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.f2fs_io_info*)* @check_inplace_update_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_inplace_update_policy(%struct.inode* %0, %struct.f2fs_io_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.f2fs_io_info*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.f2fs_io_info* %1, %struct.f2fs_io_info** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %8)
  store %struct.f2fs_sb_info* %9, %struct.f2fs_sb_info** %6, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %11 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @F2FS_IPU_FORCE, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %127

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @F2FS_IPU_SSR, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %28 = call i64 @f2fs_need_SSR(%struct.f2fs_sb_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %127

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @F2FS_IPU_UTIL, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %39 = call i64 @utilization(%struct.f2fs_sb_info* %38)
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %41 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %127

46:                                               ; preds = %37, %31
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @F2FS_IPU_SSR_UTIL, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %54 = call i64 @f2fs_need_SSR(%struct.f2fs_sb_info* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %58 = call i64 @utilization(%struct.f2fs_sb_info* %57)
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %60 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %127

65:                                               ; preds = %56, %52, %46
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @F2FS_IPU_ASYNC, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %73 = icmp ne %struct.f2fs_io_info* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %76 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REQ_OP_WRITE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %82 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @REQ_SYNC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %80
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = call i32 @IS_ENCRYPTED(%struct.inode* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %127

92:                                               ; preds = %87, %80, %74, %71, %65
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @F2FS_IPU_FSYNC, align 4
  %95 = shl i32 1, %94
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = load i32, i32* @FI_NEED_IPU, align 4
  %101 = call i64 @is_inode_flag_set(%struct.inode* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %127

104:                                              ; preds = %98, %92
  %105 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %106 = icmp ne %struct.f2fs_io_info* %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %109 = load i32, i32* @SBI_CP_DISABLED, align 4
  %110 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %114 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %5, align 8
  %115 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @f2fs_is_checkpointed_data(%struct.f2fs_sb_info* %113, i32 %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %112, %107, %104
  %121 = phi i1 [ false, %107 ], [ false, %104 ], [ %119, %112 ]
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %127

126:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %125, %103, %91, %64, %45, %30, %19
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_need_SSR(%struct.f2fs_sb_info*) #1

declare dso_local i64 @utilization(%struct.f2fs_sb_info*) #1

declare dso_local i32 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_is_checkpointed_data(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
