; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IP_DF = common dso_local global i32 0, align 4
@IPSTATS_MIB_FRAGFAILS = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, i32, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*)* @ip_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_fragment(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, i32 %3, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, align 8
  %12 = alloca %struct.iphdr*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %4, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %12, align 8
  %15 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IP_DF, align 4
  %19 = call i32 @htons(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.net*, %struct.net** %7, align 8
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %11, align 8
  %27 = call i32 @ip_do_fragment(%struct.net* %23, %struct.sock* %24, %struct.sk_buff* %25, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %26)
  store i32 %27, i32* %6, align 4
  br label %73

28:                                               ; preds = %5
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ugt i32 %43, %44
  br label %46

46:                                               ; preds = %39, %33
  %47 = phi i1 [ false, %33 ], [ %45, %39 ]
  br label %48

48:                                               ; preds = %46, %28
  %49 = phi i1 [ true, %28 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.net*, %struct.net** %7, align 8
  %55 = load i32, i32* @IPSTATS_MIB_FRAGFAILS, align 4
  %56 = call i32 @IP_INC_STATS(%struct.net* %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %59 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @htonl(i32 %60)
  %62 = call i32 @icmp_send(%struct.sk_buff* %57, i32 %58, i32 %59, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call i32 @kfree_skb(%struct.sk_buff* %63)
  %65 = load i32, i32* @EMSGSIZE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %73

67:                                               ; preds = %48
  %68 = load %struct.net*, %struct.net** %7, align 8
  %69 = load %struct.sock*, %struct.sock** %8, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %11, align 8
  %72 = call i32 @ip_do_fragment(%struct.net* %68, %struct.sock* %69, %struct.sk_buff* %70, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %67, %53, %22
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_do_fragment(%struct.net*, %struct.sock*, %struct.sk_buff*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
