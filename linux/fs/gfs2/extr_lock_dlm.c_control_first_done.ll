; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_control_first_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_control_first_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@DFL_BLOCK_LOCKS = common dso_local global i32 0, align 4
@DFL_MOUNT_DONE = common dso_local global i32 0, align 4
@DFL_FIRST_MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"control_first_done start %u block %u flags %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"control_first_done wait gen %u\0A\00", align 1
@DFL_DLM_RECOVERY = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@DFL_FIRST_MOUNT_DONE = common dso_local global i32 0, align 4
@GDLM_LVB_SIZE = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"control_first_done mounted PR error %d\0A\00", align 1
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"control_first_done control NL error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*)* @control_first_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_first_done(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.lm_lockstruct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 0
  store %struct.lm_lockstruct* %9, %struct.lm_lockstruct** %4, align 8
  br label %10

10:                                               ; preds = %55, %1
  %11 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %12 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %11, i32 0, i32 4
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %15 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %18 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* @DFL_BLOCK_LOCKS, align 4
  %21 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %22 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %21, i32 0, i32 7
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %10
  %26 = load i32, i32* @DFL_MOUNT_DONE, align 4
  %27 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %28 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %27, i32 0, i32 7
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @DFL_FIRST_MOUNT, align 4
  %33 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %34 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %33, i32 0, i32 7
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %31, %25, %10
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %43 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.gfs2_sbd*, i8*, i32, ...) @fs_err(%struct.gfs2_sbd* %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41, i32 %44)
  %46 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %47 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %46, i32 0, i32 4
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %50 = call i32 @control_unlock(%struct.gfs2_sbd* %49)
  store i32 -1, i32* %2, align 4
  br label %135

51:                                               ; preds = %31
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %57 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %56, i32 0, i32 4
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @fs_info(%struct.gfs2_sbd* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %63 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %62, i32 0, i32 7
  %64 = load i32, i32* @DFL_DLM_RECOVERY, align 4
  %65 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %66 = call i32 @wait_on_bit(i32* %63, i32 %64, i32 %65)
  br label %10

67:                                               ; preds = %51
  %68 = load i32, i32* @DFL_FIRST_MOUNT, align 4
  %69 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %70 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %69, i32 0, i32 7
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  %72 = load i32, i32* @DFL_FIRST_MOUNT_DONE, align 4
  %73 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %74 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %73, i32 0, i32 7
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %77 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %80 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(i32 %78, i32 0, i32 %84)
  %86 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %87 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %90 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memset(i32 %88, i32 0, i32 %94)
  %96 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %97 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %96, i32 0, i32 4
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %100 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @GDLM_LVB_SIZE, align 4
  %103 = call i32 @memset(i32 %101, i32 0, i32 %102)
  %104 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %4, align 8
  %107 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @control_lvb_write(%struct.lm_lockstruct* %104, i64 %105, i32 %108)
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %111 = load i32, i32* @DLM_LOCK_PR, align 4
  %112 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %113 = call i32 @mounted_lock(%struct.gfs2_sbd* %110, i32 %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %67
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (%struct.gfs2_sbd*, i8*, i32, ...) @fs_err(%struct.gfs2_sbd* %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %67
  %121 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %122 = load i32, i32* @DLM_LOCK_NL, align 4
  %123 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %124 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @control_lock(%struct.gfs2_sbd* %121, i32 %122, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 (%struct.gfs2_sbd*, i8*, i32, ...) @fs_err(%struct.gfs2_sbd* %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %120
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %37
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @control_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i64) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @control_lvb_write(%struct.lm_lockstruct*, i64, i32) #1

declare dso_local i32 @mounted_lock(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @control_lock(%struct.gfs2_sbd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
