; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_clean_segments.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_clean_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, %struct.nilfs_sc_info* }
%struct.nilfs_sc_info = type { i64, i32*, i32, i32 }
%struct.nilfs_argv = type { i64 }
%struct.nilfs_transaction_info = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@SC_LSEG_SR = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error %d cleaning segments\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DISCARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"error %d on discard request, turning discards off for the device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_clean_segments(%struct.super_block* %0, %struct.nilfs_argv* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nilfs_argv*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca %struct.nilfs_sc_info*, align 8
  %10 = alloca %struct.nilfs_transaction_info, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.nilfs_argv* %1, %struct.nilfs_argv** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  store %struct.the_nilfs* %15, %struct.the_nilfs** %8, align 8
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 2
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %17, align 8
  store %struct.nilfs_sc_info* %18, %struct.nilfs_sc_info** %9, align 8
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %20 = icmp ne %struct.nilfs_sc_info* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EROFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %134

28:                                               ; preds = %3
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call i32 @nilfs_transaction_lock(%struct.super_block* %29, %struct.nilfs_transaction_info* %10, i32 1)
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %32 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @nilfs_mdt_save_to_shadow_map(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %122

39:                                               ; preds = %28
  %40 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %41 = load %struct.nilfs_argv*, %struct.nilfs_argv** %6, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = call i32 @nilfs_ioctl_prepare_clean_segments(%struct.the_nilfs* %40, %struct.nilfs_argv* %41, i8** %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %49 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @nilfs_mdt_restore_from_shadow_map(i32 %50)
  br label %122

52:                                               ; preds = %39
  %53 = load i8**, i8*** %7, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 4
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %58 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.nilfs_argv*, %struct.nilfs_argv** %6, align 8
  %60 = getelementptr inbounds %struct.nilfs_argv, %struct.nilfs_argv* %59, i64 4
  %61 = getelementptr inbounds %struct.nilfs_argv, %struct.nilfs_argv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %64 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %66 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %65, i32 0, i32 1
  %67 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %68 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %67, i32 0, i32 3
  %69 = call i32 @list_splice_tail_init(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %85, %52
  %71 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %72 = load i32, i32* @SC_LSEG_SR, align 4
  %73 = call i32 @nilfs_segctor_construct(%struct.nilfs_sc_info* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %75 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %76 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %75, i32 0, i32 3
  %77 = call i32 @nilfs_remove_written_gcinodes(%struct.the_nilfs* %74, i32* %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @likely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %96

85:                                               ; preds = %70
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = load i32, i32* @KERN_WARNING, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @nilfs_msg(%struct.super_block* %86, i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %91 = call i32 @set_current_state(i32 %90)
  %92 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %93 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @schedule_timeout(i32 %94)
  br label %70

96:                                               ; preds = %84
  %97 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %98 = load i32, i32* @DISCARD, align 4
  %99 = call i64 @nilfs_test_opt(%struct.the_nilfs* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %103 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %104 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %107 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @nilfs_discard_segments(%struct.the_nilfs* %102, i32* %105, i64 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = load %struct.super_block*, %struct.super_block** %5, align 8
  %114 = load i32, i32* @KERN_WARNING, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @nilfs_msg(%struct.super_block* %113, i32 %114, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %118 = load i32, i32* @DISCARD, align 4
  %119 = call i32 @nilfs_clear_opt(%struct.the_nilfs* %117, i32 %118)
  br label %120

120:                                              ; preds = %112, %101
  br label %121

121:                                              ; preds = %120, %96
  br label %122

122:                                              ; preds = %121, %47, %38
  %123 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %124 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  %125 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %126 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %128 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @nilfs_mdt_clear_shadow_map(i32 %129)
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = call i32 @nilfs_transaction_unlock(%struct.super_block* %131)
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %122, %25
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_transaction_lock(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @nilfs_mdt_save_to_shadow_map(i32) #1

declare dso_local i32 @nilfs_ioctl_prepare_clean_segments(%struct.the_nilfs*, %struct.nilfs_argv*, i8**) #1

declare dso_local i32 @nilfs_mdt_restore_from_shadow_map(i32) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @nilfs_segctor_construct(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @nilfs_remove_written_gcinodes(%struct.the_nilfs*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i64 @nilfs_test_opt(%struct.the_nilfs*, i32) #1

declare dso_local i32 @nilfs_discard_segments(%struct.the_nilfs*, i32*, i64) #1

declare dso_local i32 @nilfs_clear_opt(%struct.the_nilfs*, i32) #1

declare dso_local i32 @nilfs_mdt_clear_shadow_map(i32) #1

declare dso_local i32 @nilfs_transaction_unlock(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
