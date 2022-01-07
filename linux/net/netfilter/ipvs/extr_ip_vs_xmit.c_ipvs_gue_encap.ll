; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ipvs_gue_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ipvs_gue_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i64, i64, i64, i64, i64 }
%struct.ip_vs_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.udphdr = type { i64, i8*, i8*, i8* }
%struct.guehdr = type { i64, i32, i32, i64, i64 }

@IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@GUE_PLEN_REMCSUM = common dso_local global i64 0, align 8
@GUE_LEN_PRIV = common dso_local global i64 0, align 8
@GUE_FLAG_PRIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@GUE_PFLAG_REMCSUM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.ip_vs_conn*, i32*)* @ipvs_gue_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvs_gue_encap(%struct.net* %0, %struct.sk_buff* %1, %struct.ip_vs_conn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ip_vs_conn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.udphdr*, align 8
  %13 = alloca %struct.guehdr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8**, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ip_vs_conn* %2, %struct.ip_vs_conn** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i8* @udp_flow_src_port(%struct.net* %21, %struct.sk_buff* %22, i32 0, i32 0, i32 0)
  store i8* %23, i8** %11, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %25 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i64, i64* @GUE_PLEN_REMCSUM, align 8
  %40 = load i64, i64* @GUE_LEN_PRIV, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %15, align 8
  store i32 1, i32* %17, align 4
  br label %44

44:                                               ; preds = %38, %32, %4
  %45 = load i64, i64* %15, align 8
  %46 = add i64 32, %45
  store i64 %46, i64* %14, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load i64, i64* %14, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @skb_push(%struct.sk_buff* %47, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.guehdr*
  store %struct.guehdr* %54, %struct.guehdr** %13, align 8
  %55 = load %struct.guehdr*, %struct.guehdr** %13, align 8
  %56 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.guehdr*, %struct.guehdr** %13, align 8
  %58 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %15, align 8
  %60 = lshr i64 %59, 2
  %61 = load %struct.guehdr*, %struct.guehdr** %13, align 8
  %62 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.guehdr*, %struct.guehdr** %13, align 8
  %64 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.guehdr*, %struct.guehdr** %13, align 8
  %68 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.guehdr*, %struct.guehdr** %13, align 8
  %70 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %69, i64 1
  %71 = bitcast %struct.guehdr* %70 to i8*
  store i8* %71, i8** %16, align 8
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %129

74:                                               ; preds = %44
  %75 = load i8*, i8** %16, align 8
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** %18, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i64 @skb_checksum_start_offset(%struct.sk_buff* %77)
  store i64 %78, i64* %19, align 8
  %79 = load i32, i32* @GUE_FLAG_PRIV, align 4
  %80 = load %struct.guehdr*, %struct.guehdr** %13, align 8
  %81 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32*, i32** %18, align 8
  store i32 0, i32* %84, align 4
  %85 = load i64, i64* @GUE_LEN_PRIV, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr i8, i8* %86, i64 %85
  store i8* %87, i8** %16, align 8
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %14, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %74
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %157

94:                                               ; preds = %74
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %19, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %19, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = bitcast i8* %98 to i8**
  store i8** %99, i8*** %20, align 8
  %100 = load i64, i64* %19, align 8
  %101 = call i8* @htons(i64 %100)
  %102 = load i8**, i8*** %20, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* %19, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = call i8* @htons(i64 %108)
  %110 = load i8**, i8*** %20, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call i32 @skb_is_gso(%struct.sk_buff* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %94
  %116 = load i64, i64* @CHECKSUM_NONE, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %115, %94
  %122 = load i32, i32* @GUE_PFLAG_REMCSUM, align 4
  %123 = load i32*, i32** %18, align 8
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  %126 = load i64, i64* @GUE_PLEN_REMCSUM, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = getelementptr i8, i8* %127, i64 %126
  store i8* %128, i8** %16, align 8
  br label %129

129:                                              ; preds = %121, %44
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = call i32 @skb_push(%struct.sk_buff* %130, i32 32)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call i32 @skb_reset_transport_header(%struct.sk_buff* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %135 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %134)
  store %struct.udphdr* %135, %struct.udphdr** %12, align 8
  %136 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %137 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %10, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %143 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %146 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @htons(i64 %149)
  %151 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %152 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %154 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* @IPPROTO_UDP, align 4
  %156 = load i32*, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %129, %91
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i8* @udp_flow_src_port(%struct.net*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
