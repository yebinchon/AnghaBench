; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@NILFS_SEGCTOR_COMMIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*)* @nilfs_segctor_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_start_timer(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  %3 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %4 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %3, i32 0, i32 1
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %7 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %15 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %19 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %22 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %21, i32 0, i32 2
  %23 = call i32 @add_timer(%struct.TYPE_2__* %22)
  %24 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %25 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %26 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %12, %1
  %30 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %31 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
