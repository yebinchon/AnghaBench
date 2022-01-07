; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_ats.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_ats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i64, i32 }
%struct.sk_buff = type { i32, i32* }
%struct.nfc_target = type { i32 }

@EIO = common dso_local global i32 0, align 4
@DIGITAL_ATS_MAX_FSC = common dso_local global i32 0, align 4
@digital_ats_fsc = common dso_local global i32* null, align 8
@NFC_PROTO_ISO14443 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_ats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_ats(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nfc_target*
  store %struct.nfc_target* %11, %struct.nfc_target** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @IS_ERR(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.sk_buff* %16)
  store i32 %17, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %54

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DIGITAL_ATS_FSCI(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 8
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @DIGITAL_ATS_MAX_FSC, align 4
  %37 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %38 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %47

39:                                               ; preds = %26
  %40 = load i32*, i32** @digital_ats_fsc, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %46 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %39, %35
  %48 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %49 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %51 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %52 = load i32, i32* @NFC_PROTO_ISO14443, align 4
  %53 = call i32 @digital_target_found(%struct.nfc_digital_dev* %50, %struct.nfc_target* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %47, %23, %15
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  %57 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %58 = call i32 @kfree(%struct.nfc_target* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %63 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %62)
  br label %64

64:                                               ; preds = %61, %54
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @DIGITAL_ATS_FSCI(i32) #1

declare dso_local i32 @digital_target_found(%struct.nfc_digital_dev*, %struct.nfc_target*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
