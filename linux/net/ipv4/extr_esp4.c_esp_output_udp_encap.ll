; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output_udp_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output_udp_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.xfrm_encap_tmpl* }
%struct.xfrm_encap_tmpl = type { i32, i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.esp_info = type { i32, %struct.ip_esp_hdr* }
%struct.ip_esp_hdr = type { i32 }
%struct.udphdr = type { i64, i32, i8*, i8* }

@IP_MAX_MTU = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*)* @esp_output_udp_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_output_udp_encap(%struct.xfrm_state* %0, %struct.sk_buff* %1, %struct.esp_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.esp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.xfrm_encap_tmpl*, align 8
  %14 = alloca %struct.ip_esp_hdr*, align 8
  %15 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.esp_info* %2, %struct.esp_info** %7, align 8
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 1
  %18 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %17, align 8
  store %struct.xfrm_encap_tmpl* %18, %struct.xfrm_encap_tmpl** %13, align 8
  %19 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %20 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %19, i32 0, i32 1
  %21 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %20, align 8
  store %struct.ip_esp_hdr* %21, %struct.ip_esp_hdr** %14, align 8
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %13, align 8
  %26 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %11, align 8
  %28 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %13, align 8
  %29 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %12, align 8
  %31 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %13, align 8
  %32 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %41 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add i32 %39, %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @skb_transport_offset(%struct.sk_buff* %44)
  %46 = sub i32 %43, %45
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = load i32, i32* @IP_MAX_MTU, align 4
  %51 = zext i32 %50 to i64
  %52 = icmp uge i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @EMSGSIZE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %95

56:                                               ; preds = %3
  %57 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %14, align 8
  %58 = bitcast %struct.ip_esp_hdr* %57 to %struct.udphdr*
  store %struct.udphdr* %58, %struct.udphdr** %9, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %61 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %64 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @htons(i32 %65)
  %67 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %68 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %70 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %72 [
    i32 129, label %73
    i32 128, label %77
  ]

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %56, %72
  %74 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %75 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %74, i64 1
  %76 = bitcast %struct.udphdr* %75 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %76, %struct.ip_esp_hdr** %14, align 8
  br label %88

77:                                               ; preds = %56
  %78 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %79 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %78, i64 1
  %80 = bitcast %struct.udphdr* %79 to i32*
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = bitcast i32* %86 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %87, %struct.ip_esp_hdr** %14, align 8
  br label %88

88:                                               ; preds = %77, %73
  %89 = load i32, i32* @IPPROTO_UDP, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = call i32* @skb_mac_header(%struct.sk_buff* %90)
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %14, align 8
  %93 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %94 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %93, i32 0, i32 1
  store %struct.ip_esp_hdr* %92, %struct.ip_esp_hdr** %94, align 8
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %53
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
