; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_validate_xmit_skb_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_validate_xmit_skb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff*, %struct.sk_buff* }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @validate_xmit_skb_list(%struct.sk_buff* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %10

10:                                               ; preds = %42, %3
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  store %struct.sk_buff* %19, %struct.sk_buff** %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.sk_buff* @validate_xmit_skb(%struct.sk_buff* %22, %struct.net_device* %23, i32* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %13
  br label %42

29:                                               ; preds = %13
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %8, align 8
  br label %38

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  store %struct.sk_buff* %35, %struct.sk_buff** %37, align 8
  br label %38

38:                                               ; preds = %34, %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load %struct.sk_buff*, %struct.sk_buff** %40, align 8
  store %struct.sk_buff* %41, %struct.sk_buff** %9, align 8
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %4, align 8
  br label %10

44:                                               ; preds = %10
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %45
}

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @validate_xmit_skb(%struct.sk_buff*, %struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
