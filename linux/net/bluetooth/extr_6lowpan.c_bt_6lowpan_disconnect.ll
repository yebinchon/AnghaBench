; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_bt_6lowpan_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_bt_6lowpan_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.lowpan_peer = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"conn %p dst type %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"peer %p chan %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, i32)* @bt_6lowpan_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_6lowpan_disconnect(%struct.l2cap_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lowpan_peer*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %8 = bitcast %struct.l2cap_conn* %7 to %struct.lowpan_peer*
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.lowpan_peer* %8, i32 %9)
  %11 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %12 = bitcast %struct.l2cap_conn* %11 to %struct.lowpan_peer*
  %13 = call %struct.lowpan_peer* @lookup_peer(%struct.lowpan_peer* %12)
  store %struct.lowpan_peer* %13, %struct.lowpan_peer** %6, align 8
  %14 = load %struct.lowpan_peer*, %struct.lowpan_peer** %6, align 8
  %15 = icmp ne %struct.lowpan_peer* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.lowpan_peer*, %struct.lowpan_peer** %6, align 8
  %21 = load %struct.lowpan_peer*, %struct.lowpan_peer** %6, align 8
  %22 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.lowpan_peer* %20, i32 %23)
  %25 = load %struct.lowpan_peer*, %struct.lowpan_peer** %6, align 8
  %26 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = call i32 @l2cap_chan_close(i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @BT_DBG(i8*, %struct.lowpan_peer*, i32) #1

declare dso_local %struct.lowpan_peer* @lookup_peer(%struct.lowpan_peer*) #1

declare dso_local i32 @l2cap_chan_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
