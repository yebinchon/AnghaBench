; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gfs2_update_reply_times.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gfs2_update_reply_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gfs2_pcpu_lkstats = type { i32* }

@GLF_BLOCKING = common dso_local global i32 0, align 4
@GFS2_LKS_SRTTB = common dso_local global i32 0, align 4
@GFS2_LKS_SRTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @gfs2_update_reply_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_update_reply_times(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_pcpu_lkstats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @GLF_BLOCKING, align 4
  %12 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %13 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %12, i32 0, i32 3
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @GFS2_LKS_SRTTB, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @GFS2_LKS_SRTT, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %5, align 4
  %22 = call i32 (...) @preempt_disable()
  %23 = call i32 (...) @ktime_get_real()
  %24 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %25 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ktime_sub(i32 %23, i32 %26)
  %28 = call i32 @ktime_to_ns(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %30 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.gfs2_pcpu_lkstats* @this_cpu_ptr(i32 %34)
  store %struct.gfs2_pcpu_lkstats* %35, %struct.gfs2_pcpu_lkstats** %3, align 8
  %36 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %37 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @gfs2_update_stats(i32* %37, i32 %38, i32 %39)
  %41 = load %struct.gfs2_pcpu_lkstats*, %struct.gfs2_pcpu_lkstats** %3, align 8
  %42 = getelementptr inbounds %struct.gfs2_pcpu_lkstats, %struct.gfs2_pcpu_lkstats* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @gfs2_update_stats(i32* %46, i32 %47, i32 %48)
  %50 = call i32 (...) @preempt_enable()
  %51 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @trace_gfs2_glock_lock_time(%struct.gfs2_glock* %51, i32 %52)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local %struct.gfs2_pcpu_lkstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @gfs2_update_stats(i32*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @trace_gfs2_glock_lock_time(%struct.gfs2_glock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
