; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_udp.c_udp_dnat_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_udp.c_udp_dnat_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_conn = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ip_vs_iphdr = type { i32, i64 }
%struct.udphdr = type { i64, i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@CHECKSUM_NONE = common dso_local global i8* null, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*, %struct.ip_vs_iphdr*)* @udp_dnat_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_dnat_handler(%struct.sk_buff* %0, %struct.ip_vs_protocol* %1, %struct.ip_vs_conn* %2, %struct.ip_vs_iphdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_protocol*, align 8
  %8 = alloca %struct.ip_vs_conn*, align 8
  %9 = alloca %struct.ip_vs_iphdr*, align 8
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_protocol* %1, %struct.ip_vs_protocol** %7, align 8
  store %struct.ip_vs_conn* %2, %struct.ip_vs_conn** %8, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %9, align 8
  %15 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %16 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = call i64 @skb_ensure_writable(%struct.sk_buff* %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %196

31:                                               ; preds = %4
  %32 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %33 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %31
  %40 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %41 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %45 = call i32 @udp_csum_check(i64 %42, %struct.sk_buff* %43, %struct.ip_vs_protocol* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %196

48:                                               ; preds = %39
  %49 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %52 = call i32 @ip_vs_app_pkt_in(%struct.ip_vs_conn* %49, %struct.sk_buff* %50, %struct.ip_vs_iphdr* %51)
  store i32 %52, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %196

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %13, align 4
  br label %65

64:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %58
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i64 @skb_network_header(%struct.sk_buff* %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to %struct.udphdr*
  store %struct.udphdr* %73, %struct.udphdr** %10, align 8
  %74 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %75 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %78 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %66
  %85 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %86 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %89 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %90 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %89, i32 0, i32 7
  %91 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %92 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %91, i32 0, i32 2
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @htons(i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sub i32 %97, %98
  %100 = call i32 @htons(i32 %99)
  %101 = call i32 @udp_partial_csum_update(i64 %87, %struct.udphdr* %88, i32* %90, %struct.TYPE_5__* %92, i32 %94, i32 %100)
  br label %195

102:                                              ; preds = %66
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %146, label %105

105:                                              ; preds = %102
  %106 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %107 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %105
  %111 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %112 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %115 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %116 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %115, i32 0, i32 7
  %117 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %118 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %117, i32 0, i32 2
  %119 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %120 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %123 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @udp_fast_csum_update(i64 %113, %struct.udphdr* %114, i32* %116, %struct.TYPE_5__* %118, i32 %121, i32 %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %110
  %132 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %133 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  br label %140

138:                                              ; preds = %131
  %139 = load i8*, i8** @CHECKSUM_NONE, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i8* [ %137, %136 ], [ %139, %138 ]
  %142 = ptrtoint i8* %141 to i64
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %140, %110
  br label %194

146:                                              ; preds = %105, %102
  %147 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %148 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sub i32 %153, %154
  %156 = call i32 @skb_checksum(%struct.sk_buff* %149, i32 %150, i32 %155, i32 0)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %160 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %164 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sub i32 %169, %170
  %172 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %173 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @csum_tcpudp_magic(i32 %162, i32 %166, i32 %171, i32 %174, i32 %177)
  %179 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %180 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %182 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %146
  %186 = load i64, i64* @CSUM_MANGLED_0, align 8
  %187 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %188 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %185, %146
  %190 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %191 = ptrtoint i8* %190 to i64
  %192 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %189, %145
  br label %195

195:                                              ; preds = %194, %84
  store i32 1, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %54, %47, %30
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udp_csum_check(i64, %struct.sk_buff*, %struct.ip_vs_protocol*) #1

declare dso_local i32 @ip_vs_app_pkt_in(%struct.ip_vs_conn*, %struct.sk_buff*, %struct.ip_vs_iphdr*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @udp_partial_csum_update(i64, %struct.udphdr*, i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @udp_fast_csum_update(i64, %struct.udphdr*, i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
