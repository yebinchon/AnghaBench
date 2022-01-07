; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c___schedule_delayed.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c___schedule_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i64, i32, i64 }

@CEPH_MONC_HUNT_INTERVAL = common dso_local global i64 0, align 8
@CEPH_MONC_PING_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"__schedule_delayed after %lu\0A\00", align 1
@system_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mon_client*)* @__schedule_delayed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__schedule_delayed(%struct.ceph_mon_client* %0) #0 {
  %2 = alloca %struct.ceph_mon_client*, align 8
  %3 = alloca i64, align 8
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %2, align 8
  %4 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i64, i64* @CEPH_MONC_HUNT_INTERVAL, align 8
  %10 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = mul i64 %9, %12
  store i64 %13, i64* %3, align 8
  br label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @CEPH_MONC_PING_INTERVAL, align 8
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @system_wq, align 4
  %20 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %21 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %20, i32 0, i32 1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @round_jiffies_relative(i64 %22)
  %24 = call i32 @mod_delayed_work(i32 %19, i32* %21, i32 %23)
  ret void
}

declare dso_local i32 @dout(i8*, i64) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
