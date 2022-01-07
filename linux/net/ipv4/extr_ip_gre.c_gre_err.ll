; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.iphdr = type { i32 }
%struct.tnl_ptk_info = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@ICMP_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @gre_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gre_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tnl_ptk_info, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iphdr*
  store %struct.iphdr* %12, %struct.iphdr** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load i32, i32* @ETH_P_IP, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  %28 = call i64 @gre_parse_header(%struct.sk_buff* %21, %struct.tnl_ptk_info* %8, i32* null, i32 %23, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %74

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @dev_net(%struct.TYPE_4__* %43)
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IPPROTO_GRE, align 4
  %52 = call i32 @ipv4_update_pmtu(%struct.sk_buff* %40, i32 %44, i32 %45, i32 %50, i32 %51)
  br label %74

53:                                               ; preds = %35, %31
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ICMP_REDIRECT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @dev_net(%struct.TYPE_4__* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IPPROTO_GRE, align 4
  %69 = call i32 @ipv4_redirect(%struct.sk_buff* %58, i32 %62, i32 %67, i32 %68)
  br label %74

70:                                               ; preds = %53
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @ipgre_err(%struct.sk_buff* %71, i32 %72, %struct.tnl_ptk_info* %8)
  br label %74

74:                                               ; preds = %70, %57, %39, %30
  ret void
}

declare dso_local %struct.TYPE_3__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @gre_parse_header(%struct.sk_buff*, %struct.tnl_ptk_info*, i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ipv4_update_pmtu(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_4__*) #1

declare dso_local i32 @ipv4_redirect(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ipgre_err(%struct.sk_buff*, i32, %struct.tnl_ptk_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
