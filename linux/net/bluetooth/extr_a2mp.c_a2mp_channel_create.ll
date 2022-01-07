; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_channel_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_channel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }
%struct.l2cap_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.amp_mgr = type { %struct.l2cap_chan* }

@ACL_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Could not create AMP manager\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mgr: %p chan %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2cap_chan* @a2mp_channel_create(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.amp_mgr*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %8 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ACL_LINK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %3, align 8
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %17 = call %struct.amp_mgr* @amp_mgr_create(%struct.l2cap_conn* %16, i32 0)
  store %struct.amp_mgr* %17, %struct.amp_mgr** %6, align 8
  %18 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %19 = icmp ne %struct.amp_mgr* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %3, align 8
  br label %31

22:                                               ; preds = %15
  %23 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %24 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %25 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %24, i32 0, i32 0
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %25, align 8
  %27 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.amp_mgr* %23, %struct.l2cap_chan* %26)
  %28 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %29 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %28, i32 0, i32 0
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %29, align 8
  store %struct.l2cap_chan* %30, %struct.l2cap_chan** %3, align 8
  br label %31

31:                                               ; preds = %22, %20, %14
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  ret %struct.l2cap_chan* %32
}

declare dso_local %struct.amp_mgr* @amp_mgr_create(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.amp_mgr*, %struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
