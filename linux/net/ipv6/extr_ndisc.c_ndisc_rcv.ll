; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nd_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"NDISC: invalid hop-limit: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"NDISC: invalid ICMPv6 code: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndisc_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nd_msg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i64 @ndisc_suppress_frag_ndisc(%struct.sk_buff* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call i64 @skb_linearize(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %75

14:                                               ; preds = %9
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i64 @skb_transport_header(%struct.sk_buff* %15)
  %17 = inttoptr i64 %16 to %struct.nd_msg*
  store %struct.nd_msg* %17, %struct.nd_msg** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i64 @skb_transport_header(%struct.sk_buff* %22)
  %24 = sub nsw i64 %21, %23
  %25 = call i32 @__skb_push(%struct.sk_buff* %18, i64 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 255
  br i1 %30, label %31, label %38

31:                                               ; preds = %14
  %32 = load i32, i32* @warn, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ND_PRINTK(i32 2, i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %2, align 4
  br label %75

38:                                               ; preds = %14
  %39 = load %struct.nd_msg*, %struct.nd_msg** %4, align 8
  %40 = getelementptr inbounds %struct.nd_msg, %struct.nd_msg* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @warn, align 4
  %46 = load %struct.nd_msg*, %struct.nd_msg** %4, align 8
  %47 = getelementptr inbounds %struct.nd_msg, %struct.nd_msg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ND_PRINTK(i32 2, i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 0, i32* %2, align 4
  br label %75

51:                                               ; preds = %38
  %52 = load %struct.nd_msg*, %struct.nd_msg** %4, align 8
  %53 = getelementptr inbounds %struct.nd_msg, %struct.nd_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %74 [
    i32 131, label %56
    i32 132, label %62
    i32 128, label %65
    i32 129, label %68
    i32 130, label %71
  ]

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call i32 @NEIGH_CB(%struct.sk_buff* %57)
  %59 = call i32 @memset(i32 %58, i32 0, i32 4)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @ndisc_recv_ns(%struct.sk_buff* %60)
  br label %74

62:                                               ; preds = %51
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = call i32 @ndisc_recv_na(%struct.sk_buff* %63)
  br label %74

65:                                               ; preds = %51
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i32 @ndisc_recv_rs(%struct.sk_buff* %66)
  br label %74

68:                                               ; preds = %51
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = call i32 @ndisc_router_discovery(%struct.sk_buff* %69)
  br label %74

71:                                               ; preds = %51
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = call i32 @ndisc_redirect_rcv(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %51, %71, %68, %65, %62, %56
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %44, %31, %13, %8
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @ndisc_suppress_frag_ndisc(%struct.sk_buff*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ND_PRINTK(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @NEIGH_CB(%struct.sk_buff*) #1

declare dso_local i32 @ndisc_recv_ns(%struct.sk_buff*) #1

declare dso_local i32 @ndisc_recv_na(%struct.sk_buff*) #1

declare dso_local i32 @ndisc_recv_rs(%struct.sk_buff*) #1

declare dso_local i32 @ndisc_router_discovery(%struct.sk_buff*) #1

declare dso_local i32 @ndisc_redirect_rcv(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
