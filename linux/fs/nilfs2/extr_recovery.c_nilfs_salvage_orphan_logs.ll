; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_salvage_orphan_logs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_salvage_orphan_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32 }
%struct.super_block = type { i32 }
%struct.nilfs_recovery_info = type { i64, i64, i64, i32 }
%struct.nilfs_root = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"error %d loading the latest checkpoint\00", align 1
@NILFS_RECOVERY_ROLLFORWARD_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"error %d preparing segment for recovery\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"error %d writing segment for recovery\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_salvage_orphan_logs(%struct.the_nilfs* %0, %struct.super_block* %1, %struct.nilfs_recovery_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.nilfs_recovery_info*, align 8
  %8 = alloca %struct.nilfs_root*, align 8
  %9 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store %struct.nilfs_recovery_info* %2, %struct.nilfs_recovery_info** %7, align 8
  %10 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %11 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %16 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %96

20:                                               ; preds = %14
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %23 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nilfs_attach_checkpoint(%struct.super_block* %21, i32 %24, i32 1, %struct.nilfs_root** %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @nilfs_msg(%struct.super_block* %30, i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %96

35:                                               ; preds = %20
  %36 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load %struct.nilfs_root*, %struct.nilfs_root** %8, align 8
  %39 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %40 = call i32 @nilfs_do_roll_forward(%struct.the_nilfs* %36, %struct.super_block* %37, %struct.nilfs_root* %38, %struct.nilfs_recovery_info* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %92

45:                                               ; preds = %35
  %46 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %47 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NILFS_RECOVERY_ROLLFORWARD_DONE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %45
  %52 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %53 = load %struct.super_block*, %struct.super_block** %6, align 8
  %54 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %55 = call i32 @nilfs_prepare_segment_for_recovery(%struct.the_nilfs* %52, %struct.super_block* %53, %struct.nilfs_recovery_info* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.super_block*, %struct.super_block** %6, align 8
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @nilfs_msg(%struct.super_block* %60, i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %92

64:                                               ; preds = %51
  %65 = load %struct.super_block*, %struct.super_block** %6, align 8
  %66 = load %struct.nilfs_root*, %struct.nilfs_root** %8, align 8
  %67 = call i32 @nilfs_attach_log_writer(%struct.super_block* %65, %struct.nilfs_root* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %92

72:                                               ; preds = %64
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %74 = call i32 @set_nilfs_discontinued(%struct.the_nilfs* %73)
  %75 = load %struct.super_block*, %struct.super_block** %6, align 8
  %76 = call i32 @nilfs_construct_segment(%struct.super_block* %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = call i32 @nilfs_detach_log_writer(%struct.super_block* %77)
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = load i32, i32* @KERN_ERR, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @nilfs_msg(%struct.super_block* %83, i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %92

87:                                               ; preds = %72
  %88 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %89 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %90 = call i32 @nilfs_finish_roll_forward(%struct.the_nilfs* %88, %struct.nilfs_recovery_info* %89)
  br label %91

91:                                               ; preds = %87, %45
  br label %92

92:                                               ; preds = %91, %82, %71, %59, %44
  %93 = load %struct.nilfs_root*, %struct.nilfs_root** %8, align 8
  %94 = call i32 @nilfs_put_root(%struct.nilfs_root* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %29, %19
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @nilfs_attach_checkpoint(%struct.super_block*, i32, i32, %struct.nilfs_root**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i32) #1

declare dso_local i32 @nilfs_do_roll_forward(%struct.the_nilfs*, %struct.super_block*, %struct.nilfs_root*, %struct.nilfs_recovery_info*) #1

declare dso_local i32 @nilfs_prepare_segment_for_recovery(%struct.the_nilfs*, %struct.super_block*, %struct.nilfs_recovery_info*) #1

declare dso_local i32 @nilfs_attach_log_writer(%struct.super_block*, %struct.nilfs_root*) #1

declare dso_local i32 @set_nilfs_discontinued(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_construct_segment(%struct.super_block*) #1

declare dso_local i32 @nilfs_detach_log_writer(%struct.super_block*) #1

declare dso_local i32 @nilfs_finish_roll_forward(%struct.the_nilfs*, %struct.nilfs_recovery_info*) #1

declare dso_local i32 @nilfs_put_root(%struct.nilfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
