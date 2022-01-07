; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_set_rf_tech.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_set_rf_tech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32, i32, i32 }

@digital_skb_add_crc_none = common dso_local global i32 0, align 4
@digital_skb_check_crc_none = common dso_local global i32 0, align 4
@digital_skb_add_crc_a = common dso_local global i32 0, align 4
@digital_skb_check_crc_a = common dso_local global i32 0, align 4
@digital_skb_add_crc_f = common dso_local global i32 0, align 4
@digital_skb_check_crc_f = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i32)* @digital_tg_set_rf_tech to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_tg_set_rf_tech(%struct.nfc_digital_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nfc_digital_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @digital_skb_add_crc_none, align 4
  %9 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @digital_skb_check_crc_none, align 4
  %12 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %13 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %15 = call i64 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %20 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %36 [
    i32 130, label %22
    i32 129, label %29
    i32 128, label %29
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @digital_skb_add_crc_a, align 4
  %24 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @digital_skb_check_crc_a, align 4
  %27 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %28 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %37

29:                                               ; preds = %18, %18
  %30 = load i32, i32* @digital_skb_add_crc_f, align 4
  %31 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @digital_skb_check_crc_f, align 4
  %34 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %3, align 8
  %35 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %37

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %17, %36, %29, %22
  ret void
}

declare dso_local i64 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
