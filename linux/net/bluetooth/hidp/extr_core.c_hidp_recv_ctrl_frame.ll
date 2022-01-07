; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_recv_ctrl_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_recv_ctrl_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }
%struct.sk_buff = type { i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"session %p skb %p len %d\00", align 1
@HIDP_HEADER_TRANS_MASK = common dso_local global i8 0, align 1
@HIDP_HEADER_PARAM_MASK = common dso_local global i8 0, align 1
@HIDP_HSHK_ERR_UNSUPPORTED_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, %struct.sk_buff*)* @hidp_recv_ctrl_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_recv_ctrl_frame(%struct.hidp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 1, i32* %8, align 4
  %9 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %9, %struct.sk_buff* %10, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %5, align 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_pull(%struct.sk_buff* %20, i32 1)
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @HIDP_HEADER_TRANS_MASK, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %6, align 1
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @HIDP_HEADER_PARAM_MASK, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %49 [
    i32 129, label %36
    i32 128, label %40
    i32 130, label %44
  ]

36:                                               ; preds = %2
  %37 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %38 = load i8, i8* %7, align 1
  %39 = call i32 @hidp_process_handshake(%struct.hidp_session* %37, i8 zeroext %38)
  br label %54

40:                                               ; preds = %2
  %41 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %42 = load i8, i8* %7, align 1
  %43 = call i32 @hidp_process_hid_control(%struct.hidp_session* %41, i8 zeroext %42)
  br label %54

44:                                               ; preds = %2
  %45 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i8, i8* %7, align 1
  %48 = call i32 @hidp_process_data(%struct.hidp_session* %45, %struct.sk_buff* %46, i8 zeroext %47)
  store i32 %48, i32* %8, align 4
  br label %54

49:                                               ; preds = %2
  %50 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %51 = load i32, i32* @HIDP_HSHK_ERR_UNSUPPORTED_REQUEST, align 4
  %52 = or i32 129, %51
  %53 = call i32 @hidp_send_ctrl_message(%struct.hidp_session* %50, i32 %52, i32* null, i32 0)
  br label %54

54:                                               ; preds = %49, %44, %40, %36
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @hidp_process_handshake(%struct.hidp_session*, i8 zeroext) #1

declare dso_local i32 @hidp_process_hid_control(%struct.hidp_session*, i8 zeroext) #1

declare dso_local i32 @hidp_process_data(%struct.hidp_session*, %struct.sk_buff*, i8 zeroext) #1

declare dso_local i32 @hidp_send_ctrl_message(%struct.hidp_session*, i32, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
