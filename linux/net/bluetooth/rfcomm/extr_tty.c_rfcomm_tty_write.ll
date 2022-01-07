; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.rfcomm_dev = type { %struct.rfcomm_dlc* }
%struct.rfcomm_dlc = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"tty %p count %d\00", align 1
@uint = common dso_local global i32 0, align 4
@RFCOMM_SKB_RESERVE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RFCOMM_SKB_HEAD_RESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @rfcomm_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfcomm_dev*, align 8
  %8 = alloca %struct.rfcomm_dlc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %15, %struct.rfcomm_dev** %7, align 8
  %16 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %16, i32 0, i32 0
  %18 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %17, align 8
  store %struct.rfcomm_dlc* %18, %struct.rfcomm_dlc** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %19, i32 %20)
  br label %22

22:                                               ; preds = %42, %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  %26 = load i32, i32* @uint, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %8, align 8
  %29 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @min_t(i32 %26, i32 %27, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @RFCOMM_SKB_RESERVE, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.sk_buff* @rfcomm_wmalloc(%struct.rfcomm_dev* %32, i64 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %9, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  br label %62

42:                                               ; preds = %25
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32, i32* @RFCOMM_SKB_HEAD_RESERVE, align 4
  %45 = call i32 @skb_reserve(%struct.sk_buff* %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @skb_put_data(%struct.sk_buff* %46, i8* %50, i32 %51)
  %53 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call i32 @rfcomm_dlc_send_noerror(%struct.rfcomm_dlc* %53, %struct.sk_buff* %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %22

62:                                               ; preds = %41, %22
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @rfcomm_wmalloc(%struct.rfcomm_dev*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @rfcomm_dlc_send_noerror(%struct.rfcomm_dlc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
