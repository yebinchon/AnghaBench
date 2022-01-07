; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_lwt.c_ila_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_lwt.c_ila_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.dst_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*)* }
%struct.ila_lwt = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ila_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ila_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.ila_lwt*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %6)
  store %struct.dst_entry* %7, %struct.dst_entry** %4, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %9 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call %struct.ila_lwt* @ila_lwt_lwtunnel(%struct.TYPE_3__* %10)
  store %struct.ila_lwt* %11, %struct.ila_lwt** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_IPV6, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.ila_lwt*, %struct.ila_lwt** %5, align 8
  %21 = getelementptr inbounds %struct.ila_lwt, %struct.ila_lwt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %27 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @ila_params_lwtunnel(%struct.TYPE_3__* %28)
  %30 = call i32 @ila_update_ipv6_locator(%struct.sk_buff* %25, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %33 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i32 %36(%struct.sk_buff* %37)
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %18
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.ila_lwt* @ila_lwt_lwtunnel(%struct.TYPE_3__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ila_update_ipv6_locator(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ila_params_lwtunnel(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
