; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah4_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ah4.c_ah4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.ip_auth_hdr = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IPPROTO_AH = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ah4_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.ip_auth_hdr*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.net* @dev_net(i32 %12)
  store %struct.net* %13, %struct.net** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.iphdr*
  store %struct.iphdr* %17, %struct.iphdr** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %20, %25
  %27 = inttoptr i64 %26 to %struct.ip_auth_hdr*
  store %struct.ip_auth_hdr* %27, %struct.ip_auth_hdr** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 129, label %32
    i32 128, label %41
  ]

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %79

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %2, %40
  br label %43

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

43:                                               ; preds = %41
  %44 = load %struct.net*, %struct.net** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %8, align 8
  %51 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IPPROTO_AH, align 4
  %54 = load i32, i32* @AF_INET, align 4
  %55 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %44, i32 %47, i32* %49, i32 %52, i32 %53, i32 %54)
  store %struct.xfrm_state* %55, %struct.xfrm_state** %9, align 8
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %57 = icmp ne %struct.xfrm_state* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %79

59:                                               ; preds = %43
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.net*, %struct.net** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @IPPROTO_AH, align 4
  %70 = call i32 @ipv4_update_pmtu(%struct.sk_buff* %66, %struct.net* %67, i32 %68, i32 0, i32 %69)
  br label %76

71:                                               ; preds = %59
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.net*, %struct.net** %6, align 8
  %74 = load i32, i32* @IPPROTO_AH, align 4
  %75 = call i32 @ipv4_redirect(%struct.sk_buff* %72, %struct.net* %73, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %78 = call i32 @xfrm_state_put(%struct.xfrm_state* %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %58, %42, %39
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_2__* @icmp_hdr(%struct.sk_buff*) #1

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
