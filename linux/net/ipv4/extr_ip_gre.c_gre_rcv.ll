; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tnl_ptk_info = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_ERSPAN = common dso_local global i32 0, align 4
@ETH_P_ERSPAN2 = common dso_local global i32 0, align 4
@PACKET_RCVD = common dso_local global i64 0, align 8
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PORT_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @gre_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.tnl_ptk_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = load i32, i32* @ETH_P_IP, align 4
  %9 = call i64 @htons(i32 %8)
  %10 = call i32 @gre_parse_header(%struct.sk_buff* %7, %struct.tnl_ptk_info* %4, i32* %5, i64 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %52

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ETH_P_ERSPAN, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @ETH_P_ERSPAN2, align 4
  %24 = call i64 @htons(i32 %23)
  %25 = icmp eq i64 %22, %24
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ true, %14 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @erspan_rcv(%struct.sk_buff* %32, %struct.tnl_ptk_info* %4, i32 %33)
  %35 = load i64, i64* @PACKET_RCVD, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %55

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %26
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @ipgre_rcv(%struct.sk_buff* %40, %struct.tnl_ptk_info* %4, i32 %41)
  %43 = load i64, i64* @PACKET_RCVD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %55

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %50 = load i32, i32* @ICMP_PORT_UNREACH, align 4
  %51 = call i32 @icmp_send(%struct.sk_buff* %48, i32 %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %47, %13
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %45, %37
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @gre_parse_header(%struct.sk_buff*, %struct.tnl_ptk_info*, i32*, i64, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @erspan_rcv(%struct.sk_buff*, %struct.tnl_ptk_info*, i32) #1

declare dso_local i64 @ipgre_rcv(%struct.sk_buff*, %struct.tnl_ptk_info*, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
