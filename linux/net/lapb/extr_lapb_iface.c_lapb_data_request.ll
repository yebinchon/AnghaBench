; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_iface.c_lapb_data_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_iface.c_lapb_data_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.lapb_cb = type { i64, i32 }

@LAPB_BADTOKEN = common dso_local global i32 0, align 4
@LAPB_NOTCONNECTED = common dso_local global i32 0, align 4
@LAPB_STATE_3 = common dso_local global i64 0, align 8
@LAPB_STATE_4 = common dso_local global i64 0, align 8
@LAPB_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapb_data_request(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lapb_cb*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.lapb_cb* @lapb_devtostruct(%struct.net_device* %7)
  store %struct.lapb_cb* %8, %struct.lapb_cb** %5, align 8
  %9 = load i32, i32* @LAPB_BADTOKEN, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %11 = icmp ne %struct.lapb_cb* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* @LAPB_NOTCONNECTED, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %16 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LAPB_STATE_3, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %22 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LAPB_STATE_4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %35

27:                                               ; preds = %20, %13
  %28 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %29 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_queue_tail(i32* %29, %struct.sk_buff* %30)
  %32 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %33 = call i32 @lapb_kick(%struct.lapb_cb* %32)
  %34 = load i32, i32* @LAPB_OK, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %27, %26
  %36 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %37 = call i32 @lapb_put(%struct.lapb_cb* %36)
  br label %38

38:                                               ; preds = %35, %12
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.lapb_cb* @lapb_devtostruct(%struct.net_device*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @lapb_kick(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_put(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
