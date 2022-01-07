; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_process_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_process_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"session %p param 0x%02x\00", align 1
@HIDP_WAITING_FOR_RETURN = common dso_local global i32 0, align 4
@HIDP_TRANS_HID_CONTROL = common dso_local global i32 0, align 4
@HIDP_CTRL_SOFT_RESET = common dso_local global i32 0, align 4
@HIDP_TRANS_HANDSHAKE = common dso_local global i32 0, align 4
@HIDP_WAITING_FOR_SEND_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, i8)* @hidp_process_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_process_handshake(%struct.hidp_session* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca i8, align 1
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %5, i8 zeroext %6)
  %8 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %9 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %33 [
    i32 128, label %12
    i32 129, label %15
    i32 132, label %15
    i32 130, label %15
    i32 133, label %15
    i32 131, label %26
    i32 134, label %27
  ]

12:                                               ; preds = %2
  %13 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %14 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  br label %38

15:                                               ; preds = %2, %2, %2, %2
  %16 = load i32, i32* @HIDP_WAITING_FOR_RETURN, align 4
  %17 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %18 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %17, i32 0, i32 2
  %19 = call i64 @test_and_clear_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %23 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %22, i32 0, i32 1
  %24 = call i32 @wake_up_interruptible(i32* %23)
  br label %25

25:                                               ; preds = %21, %15
  br label %38

26:                                               ; preds = %2
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %29 = load i32, i32* @HIDP_TRANS_HID_CONTROL, align 4
  %30 = load i32, i32* @HIDP_CTRL_SOFT_RESET, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @hidp_send_ctrl_message(%struct.hidp_session* %28, i32 %31, i32* null, i32 0)
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %35 = load i32, i32* @HIDP_TRANS_HANDSHAKE, align 4
  %36 = or i32 %35, 133
  %37 = call i32 @hidp_send_ctrl_message(%struct.hidp_session* %34, i32 %36, i32* null, i32 0)
  br label %38

38:                                               ; preds = %33, %27, %26, %25, %12
  %39 = load i32, i32* @HIDP_WAITING_FOR_SEND_ACK, align 4
  %40 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %41 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %40, i32 0, i32 2
  %42 = call i64 @test_and_clear_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %46 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %45, i32 0, i32 1
  %47 = call i32 @wake_up_interruptible(i32* %46)
  br label %48

48:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, i8 zeroext) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @hidp_send_ctrl_message(%struct.hidp_session*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
