; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_recv_sel_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_recv_sel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"4.4.1.3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_tg_recv_sel_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_tg_recv_sel_req(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = call i64 @IS_ERR(%struct.sk_buff* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @PTR_ERR(%struct.sk_buff* %12)
  store i32 %13, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %16 = call i32 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @digital_skb_check_crc_a(%struct.sk_buff* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %29

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %28 = call i32 @digital_tg_send_sel_res(%struct.nfc_digital_dev* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %23, %11
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %34 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @dev_kfree_skb(%struct.sk_buff* %36)
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_skb_check_crc_a(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @digital_tg_send_sel_res(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
