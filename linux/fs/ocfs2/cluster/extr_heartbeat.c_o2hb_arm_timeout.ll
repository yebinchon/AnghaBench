; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_arm_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_arm_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, i32, i32, i32 }

@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Queue write timeout for %u ms\0A\00", align 1
@O2HB_MAX_WRITE_TIMEOUT_MS = common dso_local global i32 0, align 4
@o2hb_live_lock = common dso_local global i32 0, align 4
@o2hb_failed_region_bitmap = common dso_local global i32 0, align 4
@O2HB_NEGO_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_region*)* @o2hb_arm_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_arm_timeout(%struct.o2hb_region* %0) #0 {
  %2 = alloca %struct.o2hb_region*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %2, align 8
  %3 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %4 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %3, i32 0, i32 4
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load i32, i32* @ML_HEARTBEAT, align 4
  %10 = load i32, i32* @O2HB_MAX_WRITE_TIMEOUT_MS, align 4
  %11 = call i32 @mlog(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i64 (...) @o2hb_global_heartbeat_active()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %16 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %17 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @o2hb_failed_region_bitmap, align 4
  %20 = call i32 @clear_bit(i32 %18, i32 %19)
  %21 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  br label %22

22:                                               ; preds = %14, %8
  %23 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %24 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %23, i32 0, i32 2
  %25 = call i32 @cancel_delayed_work(i32* %24)
  %26 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %27 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %26, i32 0, i32 2
  %28 = load i32, i32* @O2HB_MAX_WRITE_TIMEOUT_MS, align 4
  %29 = call i32 @msecs_to_jiffies(i32 %28)
  %30 = call i32 @schedule_delayed_work(i32* %27, i32 %29)
  %31 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %32 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %31, i32 0, i32 1
  %33 = call i32 @cancel_delayed_work(i32* %32)
  %34 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %35 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %34, i32 0, i32 1
  %36 = load i32, i32* @O2HB_NEGO_TIMEOUT_MS, align 4
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = call i32 @schedule_delayed_work(i32* %35, i32 %37)
  %39 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %40 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memset(i32 %41, i32 0, i32 4)
  br label %43

43:                                               ; preds = %22, %7
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i64 @o2hb_global_heartbeat_active(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
