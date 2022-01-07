; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_issue_discard_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_issue_discard_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, i32 }
%struct.discard_cmd_control = type { i32, i32, i64, i32 }
%struct.discard_policy = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@DEF_MIN_DISCARD_ISSUE_TIME = common dso_local global i32 0, align 4
@DPOLICY_BG = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@GC_URGENT = common dso_local global i64 0, align 8
@DPOLICY_FORCE = common dso_local global i32 0, align 4
@DISCARD_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @issue_discard_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issue_discard_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.discard_cmd_control*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.discard_policy, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.f2fs_sb_info*
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %4, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %13 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %14, align 8
  store %struct.discard_cmd_control* %15, %struct.discard_cmd_control** %5, align 8
  %16 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %17 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %16, i32 0, i32 3
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* @DEF_MIN_DISCARD_ISSUE_TIME, align 4
  store i32 %18, i32* %8, align 4
  %19 = call i32 (...) @set_freezable()
  br label %20

20:                                               ; preds = %130, %1
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %22 = load i32, i32* @DPOLICY_BG, align 4
  %23 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %24 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @__init_discard_policy(%struct.f2fs_sb_info* %21, %struct.discard_policy* %7, i32 %22, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 (...) @kthread_should_stop()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @current, align 4
  %33 = call i64 @freezing(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %37 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %31, %20
  %41 = phi i1 [ true, %31 ], [ true, %20 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @msecs_to_jiffies(i32 %43)
  %45 = call i32 @wait_event_interruptible_timeout(i32 %28, i32 %42, i32 %44)
  %46 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %47 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %52 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %40
  %54 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %55 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %54, i32 0, i32 1
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %60 = call i32 @__wait_all_discard_cmd(%struct.f2fs_sb_info* %59, %struct.discard_policy* null)
  br label %61

61:                                               ; preds = %58, %53
  %62 = call i64 (...) @try_to_freeze()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %130

65:                                               ; preds = %61
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %67 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @f2fs_readonly(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %130

72:                                               ; preds = %65
  %73 = call i64 (...) @kthread_should_stop()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %135

76:                                               ; preds = %72
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %78 = load i32, i32* @SBI_NEED_FSCK, align 4
  %79 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  br label %130

84:                                               ; preds = %76
  %85 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %86 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @GC_URGENT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %92 = load i32, i32* @DPOLICY_FORCE, align 4
  %93 = call i32 @__init_discard_policy(%struct.f2fs_sb_info* %91, %struct.discard_policy* %7, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %96 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @sb_start_intwrite(i32 %97)
  %99 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %100 = call i32 @__issue_discard_cmd(%struct.f2fs_sb_info* %99, %struct.discard_policy* %7)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %105 = call i32 @__wait_all_discard_cmd(%struct.f2fs_sb_info* %104, %struct.discard_policy* %7)
  %106 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %7, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %8, align 4
  br label %125

108:                                              ; preds = %94
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %113 = load i32, i32* @DISCARD_TIME, align 4
  %114 = call i32 @f2fs_time_to_wait(%struct.f2fs_sb_info* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %7, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %111
  br label %124

121:                                              ; preds = %108
  %122 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %7, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %120
  br label %125

125:                                              ; preds = %124, %103
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %127 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @sb_end_intwrite(i32 %128)
  br label %130

130:                                              ; preds = %125, %81, %71, %64
  %131 = call i64 (...) @kthread_should_stop()
  %132 = icmp ne i64 %131, 0
  %133 = xor i1 %132, true
  br i1 %133, label %20, label %134

134:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %75
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @__init_discard_policy(%struct.f2fs_sb_info*, %struct.discard_policy*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__wait_all_discard_cmd(%struct.f2fs_sb_info*, %struct.discard_policy*) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i64 @f2fs_readonly(i32) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i32 @__issue_discard_cmd(%struct.f2fs_sb_info*, %struct.discard_policy*) #1

declare dso_local i32 @f2fs_time_to_wait(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
