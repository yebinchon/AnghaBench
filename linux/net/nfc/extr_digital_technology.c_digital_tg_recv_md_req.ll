; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_recv_md_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_recv_md_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfc_digital_dev*, i32*)* }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @digital_tg_recv_md_req(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call i64 @IS_ERR(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %51

13:                                               ; preds = %3
  %14 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %15 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.nfc_digital_dev*, i32*)*, i32 (%struct.nfc_digital_dev*, i32*)** %17, align 8
  %19 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %20 = call i32 %18(%struct.nfc_digital_dev* %19, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %51

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %49 [
    i32 130, label %26
    i32 129, label %37
    i32 128, label %37
  ]

26:                                               ; preds = %24
  %27 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %28 = call i32 @digital_tg_config_nfca(%struct.nfc_digital_dev* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %51

32:                                               ; preds = %26
  %33 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @digital_tg_recv_sens_req(%struct.nfc_digital_dev* %33, i8* %34, %struct.sk_buff* %35)
  br label %50

37:                                               ; preds = %24, %24
  %38 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @digital_tg_config_nfcf(%struct.nfc_digital_dev* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %51

44:                                               ; preds = %37
  %45 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @digital_tg_recv_sensf_req(%struct.nfc_digital_dev* %45, i8* %46, %struct.sk_buff* %47)
  br label %50

49:                                               ; preds = %24
  br label %51

50:                                               ; preds = %44, %32
  br label %56

51:                                               ; preds = %49, %43, %31, %23, %12
  %52 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %53 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @dev_kfree_skb(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %51, %50
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @digital_tg_config_nfca(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_tg_recv_sens_req(%struct.nfc_digital_dev*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @digital_tg_config_nfcf(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @digital_tg_recv_sensf_req(%struct.nfc_digital_dev*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
