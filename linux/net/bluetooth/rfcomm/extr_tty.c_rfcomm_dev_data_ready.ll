; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { %struct.rfcomm_dev* }
%struct.rfcomm_dev = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"dlc %p len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, %struct.sk_buff*)* @rfcomm_dev_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dev_data_ready(%struct.rfcomm_dlc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rfcomm_dev*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %6, i32 0, i32 0
  %8 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  store %struct.rfcomm_dev* %8, %struct.rfcomm_dev** %5, align 8
  %9 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %10 = icmp ne %struct.rfcomm_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @kfree_skb(%struct.sk_buff* %12)
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %16 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %15, i32 0, i32 1
  %17 = call i32 @skb_queue_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %21 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %20, i32 0, i32 1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @skb_queue_tail(i32* %21, %struct.sk_buff* %22)
  br label %44

24:                                               ; preds = %14
  %25 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %25, i32 %28)
  %30 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %31 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %30, i32 0, i32 0
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @tty_insert_flip_string(i32* %31, i32 %34, i32 %37)
  %39 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %40 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %39, i32 0, i32 0
  %41 = call i32 @tty_flip_buffer_push(i32* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %24, %19, %11
  ret void
}

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32) #1

declare dso_local i32 @tty_insert_flip_string(i32*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
