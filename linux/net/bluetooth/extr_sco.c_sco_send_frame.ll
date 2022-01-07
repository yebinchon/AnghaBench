; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sco_conn = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { %struct.sco_conn* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sk %p len %d\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i32)* @sco_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_send_frame(%struct.sock* %0, %struct.msghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sco_conn*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.sco_conn*, %struct.sco_conn** %13, align 8
  store %struct.sco_conn* %14, %struct.sco_conn** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.sco_conn*, %struct.sco_conn** %8, align 8
  %17 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.sock* %24, i32 %25)
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MSG_DONTWAIT, align 4
  %33 = and i32 %31, %32
  %34 = call %struct.sk_buff* @bt_skb_send_alloc(%struct.sock* %27, i32 %28, i32 %33, i32* %10)
  store %struct.sk_buff* %34, %struct.sk_buff** %9, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %59

39:                                               ; preds = %23
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @skb_put(%struct.sk_buff* %40, i32 %41)
  %43 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @memcpy_from_msg(i32 %42, %struct.msghdr* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %59

52:                                               ; preds = %39
  %53 = load %struct.sco_conn*, %struct.sco_conn** %8, align 8
  %54 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = call i32 @hci_send_sco(i32 %55, %struct.sk_buff* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %52, %47, %37, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_2__* @sco_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_send_alloc(%struct.sock*, i32, i32, i32*) #1

declare dso_local i64 @memcpy_from_msg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @hci_send_sco(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
