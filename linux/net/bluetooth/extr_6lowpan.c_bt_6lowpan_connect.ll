; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_bt_6lowpan_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_bt_6lowpan_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@bt_6lowpan_chan_ops = common dso_local global i32 0, align 4
@L2CAP_PSM_IPSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"chan %p err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @bt_6lowpan_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_6lowpan_connect(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.l2cap_chan* (...) @chan_create()
  store %struct.l2cap_chan* %8, %struct.l2cap_chan** %6, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %10 = icmp ne %struct.l2cap_chan* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 0
  store i32* @bt_6lowpan_chan_ops, i32** %16, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %18 = load i32, i32* @L2CAP_PSM_IPSP, align 4
  %19 = call i32 @cpu_to_le16(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @l2cap_chan_connect(%struct.l2cap_chan* %17, i32 %19, i32 0, i32* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %30 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %29)
  br label %31

31:                                               ; preds = %28, %14
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.l2cap_chan* @chan_create(...) #1

declare dso_local i32 @l2cap_chan_connect(%struct.l2cap_chan*, i32, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
