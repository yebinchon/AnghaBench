; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtmsg_ifinfo_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtmsg_ifinfo_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.sk_buff = type { i32 }

@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*, i32, i32, i32, i32*, i32)* @rtmsg_ifinfo_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmsg_ifinfo_event(i32 %0, %struct.net_device* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NETREG_REGISTERED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %38

22:                                               ; preds = %7
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.net_device*, %struct.net_device** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call %struct.sk_buff* @rtmsg_ifinfo_build_skb(i32 %23, %struct.net_device* %24, i32 %25, i32 %26, i32 %27, i32* %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %15, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @rtmsg_ifinfo_send(%struct.sk_buff* %34, %struct.net_device* %35, i32 %36)
  br label %38

38:                                               ; preds = %21, %33, %22
  ret void
}

declare dso_local %struct.sk_buff* @rtmsg_ifinfo_build_skb(i32, %struct.net_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rtmsg_ifinfo_send(%struct.sk_buff*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
