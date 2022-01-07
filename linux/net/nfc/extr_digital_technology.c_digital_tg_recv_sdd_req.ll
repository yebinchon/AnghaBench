; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_recv_sdd_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_recv_sdd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32, i64* }

@DIGITAL_CMD_SEL_REQ_CL1 = common dso_local global i64 0, align 8
@DIGITAL_SDD_REQ_SEL_PAR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_tg_recv_sdd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_tg_recv_sdd_req(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call i64 @IS_ERR(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.sk_buff* %13)
  store i32 %14, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %35, label %23

23:                                               ; preds = %15
  %24 = load i64*, i64** %7, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DIGITAL_CMD_SEL_REQ_CL1, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DIGITAL_SDD_REQ_SEL_PAR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23, %15
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %40 = call i32 @digital_tg_send_sdd_res(%struct.nfc_digital_dev* %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %35, %12
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %46 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @dev_kfree_skb(%struct.sk_buff* %48)
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @digital_tg_send_sdd_res(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
