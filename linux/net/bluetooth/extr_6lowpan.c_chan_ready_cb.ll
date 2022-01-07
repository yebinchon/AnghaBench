; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_chan_ready_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_chan_ready_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }
%struct.lowpan_btle_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"chan %p conn %p dev %p\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @chan_ready_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chan_ready_cb(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.lowpan_btle_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %6 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.lowpan_btle_dev* @lookup_dev(i32 %7)
  store %struct.lowpan_btle_dev* %8, %struct.lowpan_btle_dev** %3, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %9, i32 %12, %struct.lowpan_btle_dev* %13)
  %15 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %16 = icmp ne %struct.lowpan_btle_dev* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %19 = call i64 @setup_netdev(%struct.l2cap_chan* %18, %struct.lowpan_btle_dev** %3)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %22, i32 %24)
  br label %41

26:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* @THIS_MODULE, align 4
  %29 = call i32 @try_module_get(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %41

32:                                               ; preds = %27
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %34 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @add_peer_chan(%struct.l2cap_chan* %33, %struct.lowpan_btle_dev* %34, i32 %35)
  %37 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %3, align 8
  %38 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ifup(i32 %39)
  br label %41

41:                                               ; preds = %32, %31, %21
  ret void
}

declare dso_local %struct.lowpan_btle_dev* @lookup_dev(i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32, %struct.lowpan_btle_dev*) #1

declare dso_local i64 @setup_netdev(%struct.l2cap_chan*, %struct.lowpan_btle_dev**) #1

declare dso_local i32 @l2cap_chan_del(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @add_peer_chan(%struct.l2cap_chan*, %struct.lowpan_btle_dev*, i32) #1

declare dso_local i32 @ifup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
