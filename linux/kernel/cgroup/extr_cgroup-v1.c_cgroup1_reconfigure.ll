; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup1_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup1_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_root = type { i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fs_context = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.cgroup_fs_context = type { i32, i32, i64, i64 }
%struct.kernfs_root = type { i32 }

@cgrp_dfl_root = common dso_local global %struct.cgroup_root zeroinitializer, align 4
@.str = private unnamed_addr constant [60 x i8] c"option changes via remount are deprecated (pid=%d comm=%s)\0A\00", align 1
@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"option or name mismatch, new: 0x%x \22%s\22, old: 0x%x \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@release_agent_path_lock = common dso_local global i32 0, align 4
@cgroup_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup1_reconfigure(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  %3 = alloca %struct.cgroup_fs_context*, align 8
  %4 = alloca %struct.kernfs_root*, align 8
  %5 = alloca %struct.cgroup_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %10 = call %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context* %9)
  store %struct.cgroup_fs_context* %10, %struct.cgroup_fs_context** %3, align 8
  %11 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %12 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.kernfs_root* @kernfs_root_from_sb(i32 %15)
  store %struct.kernfs_root* %16, %struct.kernfs_root** %4, align 8
  %17 = load %struct.kernfs_root*, %struct.kernfs_root** %4, align 8
  %18 = call %struct.cgroup_root* @cgroup_root_from_kf(%struct.kernfs_root* %17)
  store %struct.cgroup_root* %18, %struct.cgroup_root** %5, align 8
  store i32 0, i32* %6, align 4
  %19 = call i32 @cgroup_lock_and_drain_offline(%struct.TYPE_9__* getelementptr inbounds (%struct.cgroup_root, %struct.cgroup_root* @cgrp_dfl_root, i32 0, i32 3))
  %20 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %21 = call i32 @check_cgroupfs_options(%struct.fs_context* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %145

25:                                               ; preds = %1
  %26 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %27 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %30 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %35 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33, %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %40 = call i32 @task_tgid_nr(%struct.TYPE_8__* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %47 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %50 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %55 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %58 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %63 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %66 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %45
  %71 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %72 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %70
  %76 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %77 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %80 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @strcmp(i64 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %75, %45
  %85 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %86 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %87 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %90 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = inttoptr i64 %91 to i8*
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i8* [ %94, %93 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %95 ]
  %98 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %99 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %102 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cg_invalf(%struct.fs_context* %85, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %88, i8* %97, i32 %100, i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %145

107:                                              ; preds = %75, %70
  %108 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %109 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = call i32 @list_empty(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* @EBUSY, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %145

117:                                              ; preds = %107
  %118 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @rebind_subsystems(%struct.cgroup_root* %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %145

124:                                              ; preds = %117
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @rebind_subsystems(%struct.cgroup_root* @cgrp_dfl_root, i32 %125)
  %127 = call i32 @WARN_ON(i32 %126)
  %128 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %129 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %124
  %133 = call i32 @spin_lock(i32* @release_agent_path_lock)
  %134 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %135 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %138 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @strcpy(i32 %136, i64 %139)
  %141 = call i32 @spin_unlock(i32* @release_agent_path_lock)
  br label %142

142:                                              ; preds = %132, %124
  %143 = load %struct.cgroup_root*, %struct.cgroup_root** %5, align 8
  %144 = call i32 @trace_cgroup_remount(%struct.cgroup_root* %143)
  br label %145

145:                                              ; preds = %142, %123, %114, %96, %24
  %146 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context*) #1

declare dso_local %struct.kernfs_root* @kernfs_root_from_sb(i32) #1

declare dso_local %struct.cgroup_root* @cgroup_root_from_kf(%struct.kernfs_root*) #1

declare dso_local i32 @cgroup_lock_and_drain_offline(%struct.TYPE_9__*) #1

declare dso_local i32 @check_cgroupfs_options(%struct.fs_context*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @task_tgid_nr(%struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @cg_invalf(%struct.fs_context*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rebind_subsystems(%struct.cgroup_root*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @strcpy(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_cgroup_remount(%struct.cgroup_root*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
