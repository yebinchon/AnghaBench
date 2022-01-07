; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipcomp.c_ipcomp4_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipcomp.c_ipcomp4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.ip_comp_hdr = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IPPROTO_COMP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ipcomp4_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.ip_comp_hdr*, align 8
  %10 = alloca %struct.xfrm_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.net* @dev_net(i32 %13)
  store %struct.net* %14, %struct.net** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.iphdr*
  store %struct.iphdr* %18, %struct.iphdr** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %21, %26
  %28 = inttoptr i64 %27 to %struct.ip_comp_hdr*
  store %struct.ip_comp_hdr* %28, %struct.ip_comp_hdr** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %43 [
    i32 129, label %33
    i32 128, label %42
  ]

33:                                               ; preds = %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %83

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %2, %41
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

44:                                               ; preds = %42
  %45 = load %struct.ip_comp_hdr*, %struct.ip_comp_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.ip_comp_hdr, %struct.ip_comp_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohs(i32 %47)
  %49 = call i32 @htonl(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.net*, %struct.net** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 1
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @IPPROTO_COMP, align 4
  %58 = load i32, i32* @AF_INET, align 4
  %59 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %50, i32 %53, i32* %55, i32 %56, i32 %57, i32 %58)
  store %struct.xfrm_state* %59, %struct.xfrm_state** %10, align 8
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %61 = icmp ne %struct.xfrm_state* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %83

63:                                               ; preds = %44
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load %struct.net*, %struct.net** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @IPPROTO_COMP, align 4
  %74 = call i32 @ipv4_update_pmtu(%struct.sk_buff* %70, %struct.net* %71, i32 %72, i32 0, i32 %73)
  br label %80

75:                                               ; preds = %63
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.net*, %struct.net** %6, align 8
  %78 = load i32, i32* @IPPROTO_COMP, align 4
  %79 = call i32 @ipv4_redirect(%struct.sk_buff* %76, %struct.net* %77, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %75, %69
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %82 = call i32 @xfrm_state_put(%struct.xfrm_state* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %62, %43, %40
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ipv4_update_pmtu(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @ipv4_redirect(%struct.sk_buff*, %struct.net*, i32, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
