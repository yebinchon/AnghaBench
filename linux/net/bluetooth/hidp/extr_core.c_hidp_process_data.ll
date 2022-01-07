; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i8, i64, i32, i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"session %p skb %p len %d param 0x%02x\00", align 1
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HIDP_TRANS_HANDSHAKE = common dso_local global i32 0, align 4
@HIDP_HSHK_ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@HIDP_WAITING_FOR_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, %struct.sk_buff*, i8)* @hidp_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_process_data(%struct.hidp_session* %0, %struct.sk_buff* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.hidp_session*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8 %2, i8* %6, align 1
  store i32 1, i32* %7, align 4
  %8 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i8, i8* %6, align 1
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %8, %struct.sk_buff* %9, i32 %12, i8 zeroext %13)
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  switch i32 %16, label %45 [
    i32 130, label %17
    i32 129, label %44
    i32 128, label %44
    i32 131, label %44
  ]

17:                                               ; preds = %3
  %18 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %19 = call i32 @hidp_set_timer(%struct.hidp_session* %18)
  %20 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %21 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @hidp_input_report(%struct.hidp_session* %25, %struct.sk_buff* %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %30 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %35 = load i32, i32* @HID_INPUT_REPORT, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hidp_process_report(%struct.hidp_session* %34, i32 %35, i64* %38, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %33, %28
  br label %51

44:                                               ; preds = %3, %3, %3
  br label %51

45:                                               ; preds = %3
  %46 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %47 = load i32, i32* @HIDP_TRANS_HANDSHAKE, align 4
  %48 = load i32, i32* @HIDP_HSHK_ERR_INVALID_PARAMETER, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @hidp_send_ctrl_message(%struct.hidp_session* %46, i32 %49, i32* null, i32 0)
  br label %51

51:                                               ; preds = %45, %44, %43
  %52 = load i32, i32* @HIDP_WAITING_FOR_RETURN, align 4
  %53 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %54 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %53, i32 0, i32 3
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %51
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %61 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 8
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %57
  %66 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %67 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %72 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %73, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %70, %65
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %83 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %82, i32 0, i32 4
  store %struct.sk_buff* %81, %struct.sk_buff** %83, align 8
  store i32 0, i32* %7, align 4
  %84 = load i32, i32* @HIDP_WAITING_FOR_RETURN, align 4
  %85 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %86 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %85, i32 0, i32 3
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  %88 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %89 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %88, i32 0, i32 2
  %90 = call i32 @wake_up_interruptible(i32* %89)
  br label %91

91:                                               ; preds = %80, %70
  br label %92

92:                                               ; preds = %91, %57, %51
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, %struct.sk_buff*, i32, i8 zeroext) #1

declare dso_local i32 @hidp_set_timer(%struct.hidp_session*) #1

declare dso_local i32 @hidp_input_report(%struct.hidp_session*, %struct.sk_buff*) #1

declare dso_local i32 @hidp_process_report(%struct.hidp_session*, i32, i64*, i32, i32) #1

declare dso_local i32 @hidp_send_ctrl_message(%struct.hidp_session*, i32, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
