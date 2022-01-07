; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tproxy.c_nft_tproxy_eval_v4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tproxy.c_nft_tproxy_eval_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i8* }
%struct.nft_pktinfo = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.nft_tproxy = type { i32, i32 }
%struct.iphdr = type { i32, i32, i64 }
%struct.udphdr = type { i32, i64 }
%struct.sock = type { i64 }

@NFT_BREAK = common dso_local global i8* null, align 8
@NF_TPROXY_LOOKUP_ESTABLISHED = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@NF_TPROXY_LOOKUP_LISTENER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_tproxy_eval_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_tproxy_eval_v4(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_tproxy*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.udphdr, align 8
  %11 = alloca %struct.udphdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sock*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %15 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %16 = call %struct.nft_tproxy* @nft_expr_priv(%struct.nft_expr* %15)
  store %struct.nft_tproxy* %16, %struct.nft_tproxy** %7, align 8
  %17 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %18 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %17, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %20)
  store %struct.iphdr* %21, %struct.iphdr** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call i32 @ip_hdrlen(%struct.sk_buff* %23)
  %25 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %22, i32 %24, i32 16, %struct.udphdr* %10)
  store %struct.udphdr* %25, %struct.udphdr** %11, align 8
  %26 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %27 = icmp ne %struct.udphdr* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load i8*, i8** @NFT_BREAK, align 8
  %30 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %31 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  br label %156

33:                                               ; preds = %3
  %34 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %35 = call i32 @nft_net(%struct.nft_pktinfo* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %47 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %50 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NF_TPROXY_LOOKUP_ESTABLISHED, align 4
  %56 = call %struct.sock* @nf_tproxy_get_sock_v4(i32 %35, %struct.sk_buff* %36, i32 %39, i32 %42, i64 %45, i32 %48, i64 %51, i32 %54, i32 %55)
  store %struct.sock* %56, %struct.sock** %14, align 8
  %57 = load %struct.nft_tproxy*, %struct.nft_tproxy** %7, align 8
  %58 = getelementptr inbounds %struct.nft_tproxy, %struct.nft_tproxy* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %33
  %62 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %63 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.nft_tproxy*, %struct.nft_tproxy** %7, align 8
  %66 = getelementptr inbounds %struct.nft_tproxy, %struct.nft_tproxy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %64, i64 %68
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %61, %33
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %75 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @nf_tproxy_laddr4(%struct.sk_buff* %72, i64 %73, i64 %76)
  store i64 %77, i64* %12, align 8
  %78 = load %struct.nft_tproxy*, %struct.nft_tproxy** %7, align 8
  %79 = getelementptr inbounds %struct.nft_tproxy, %struct.nft_tproxy* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %71
  %83 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %84 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.nft_tproxy*, %struct.nft_tproxy** %7, align 8
  %87 = getelementptr inbounds %struct.nft_tproxy, %struct.nft_tproxy* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %85, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %82, %71
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %97 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %95, %92
  %100 = load %struct.sock*, %struct.sock** %14, align 8
  %101 = icmp ne %struct.sock* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load %struct.sock*, %struct.sock** %14, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TCP_TIME_WAIT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %110 = call i32 @nft_net(%struct.nft_pktinfo* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load %struct.sock*, %struct.sock** %14, align 8
  %115 = call %struct.sock* @nf_tproxy_handle_time_wait4(i32 %110, %struct.sk_buff* %111, i64 %112, i64 %113, %struct.sock* %114)
  store %struct.sock* %115, %struct.sock** %14, align 8
  br label %140

116:                                              ; preds = %102, %99
  %117 = load %struct.sock*, %struct.sock** %14, align 8
  %118 = icmp ne %struct.sock* %117, null
  br i1 %118, label %139, label %119

119:                                              ; preds = %116
  %120 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %121 = call i32 @nft_net(%struct.nft_pktinfo* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %131 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NF_TPROXY_LOOKUP_LISTENER, align 4
  %138 = call %struct.sock* @nf_tproxy_get_sock_v4(i32 %121, %struct.sk_buff* %122, i32 %125, i32 %128, i64 %129, i32 %132, i64 %133, i32 %136, i32 %137)
  store %struct.sock* %138, %struct.sock** %14, align 8
  br label %139

139:                                              ; preds = %119, %116
  br label %140

140:                                              ; preds = %139, %108
  %141 = load %struct.sock*, %struct.sock** %14, align 8
  %142 = icmp ne %struct.sock* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.sock*, %struct.sock** %14, align 8
  %145 = call i64 @nf_tproxy_sk_is_transparent(%struct.sock* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = load %struct.sock*, %struct.sock** %14, align 8
  %150 = call i32 @nf_tproxy_assign_sock(%struct.sk_buff* %148, %struct.sock* %149)
  br label %156

151:                                              ; preds = %143, %140
  %152 = load i8*, i8** @NFT_BREAK, align 8
  %153 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %154 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  br label %156

156:                                              ; preds = %28, %151, %147
  ret void
}

declare dso_local %struct.nft_tproxy* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.sock* @nf_tproxy_get_sock_v4(i32, %struct.sk_buff*, i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i64 @nf_tproxy_laddr4(%struct.sk_buff*, i64, i64) #1

declare dso_local %struct.sock* @nf_tproxy_handle_time_wait4(i32, %struct.sk_buff*, i64, i64, %struct.sock*) #1

declare dso_local i64 @nf_tproxy_sk_is_transparent(%struct.sock*) #1

declare dso_local i32 @nf_tproxy_assign_sock(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
