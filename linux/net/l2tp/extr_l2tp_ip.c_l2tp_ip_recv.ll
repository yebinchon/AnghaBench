; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32, i32 }
%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.l2tp_session = type { %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i32, i32 }
%struct.iphdr = type { i32, i32 }

@L2TP_MSG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s: ip recv\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@l2tp_ip_lock = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @l2tp_ip_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip_recv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.l2tp_session*, align 8
  %11 = alloca %struct.l2tp_tunnel*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @dev_net(i32 %16)
  store %struct.net* %17, %struct.net** %4, align 8
  store %struct.l2tp_tunnel* null, %struct.l2tp_tunnel** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @pskb_may_pull(%struct.sk_buff* %18, i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %163

22:                                               ; preds = %1
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohl(i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %31, i8** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i32 @__skb_pull(%struct.sk_buff* %35, i32 4)
  br label %99

37:                                               ; preds = %22
  %38 = load %struct.net*, %struct.net** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call %struct.l2tp_session* @l2tp_session_get(%struct.net* %38, i64 %39)
  store %struct.l2tp_session* %40, %struct.l2tp_session** %10, align 8
  %41 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %42 = icmp ne %struct.l2tp_session* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %163

44:                                               ; preds = %37
  %45 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %46 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %45, i32 0, i32 0
  %47 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %46, align 8
  store %struct.l2tp_tunnel* %47, %struct.l2tp_tunnel** %11, align 8
  %48 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %11, align 8
  %49 = icmp ne %struct.l2tp_tunnel* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %157

51:                                               ; preds = %44
  %52 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %11, align 8
  %53 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @L2TP_MSG_DATA, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @min(i32 32, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @pskb_may_pull(%struct.sk_buff* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %157

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %8, align 8
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  store i8* %73, i8** %8, align 8
  %74 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %11, align 8
  %75 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %78, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %68, %51
  %83 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = call i64 @l2tp_v3_ensure_opt_in_linear(%struct.l2tp_session* %83, %struct.sk_buff* %84, i8** %8, i8** %9)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %157

88:                                               ; preds = %82
  %89 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @l2tp_recv_common(%struct.l2tp_session* %89, %struct.sk_buff* %90, i8* %91, i8* %92, i32 0, i32 %95)
  %97 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %98 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %97)
  store i32 0, i32* %2, align 4
  br label %166

99:                                               ; preds = %34
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = call i32 @pskb_may_pull(%struct.sk_buff* %100, i32 12)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  br label %163

104:                                              ; preds = %99
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 192
  %112 = icmp ne i32 %111, 192
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %163

114:                                              ; preds = %104
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  %119 = bitcast i8* %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @ntohl(i32 %120)
  store i64 %121, i64* %7, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %123 = call i64 @skb_network_header(%struct.sk_buff* %122)
  %124 = inttoptr i64 %123 to %struct.iphdr*
  store %struct.iphdr* %124, %struct.iphdr** %12, align 8
  %125 = call i32 @read_lock_bh(i32* @l2tp_ip_lock)
  %126 = load %struct.net*, %struct.net** %4, align 8
  %127 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = call i32 @inet_iif(%struct.sk_buff* %133)
  %135 = load i64, i64* %7, align 8
  %136 = call %struct.sock* @__l2tp_ip_bind_lookup(%struct.net* %126, i32 %129, i32 %132, i32 %134, i64 %135)
  store %struct.sock* %136, %struct.sock** %5, align 8
  %137 = load %struct.sock*, %struct.sock** %5, align 8
  %138 = icmp ne %struct.sock* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %114
  %140 = call i32 @read_unlock_bh(i32* @l2tp_ip_lock)
  br label %163

141:                                              ; preds = %114
  %142 = load %struct.sock*, %struct.sock** %5, align 8
  %143 = call i32 @sock_hold(%struct.sock* %142)
  %144 = call i32 @read_unlock_bh(i32* @l2tp_ip_lock)
  %145 = load %struct.sock*, %struct.sock** %5, align 8
  %146 = load i32, i32* @XFRM_POLICY_IN, align 4
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = call i32 @xfrm4_policy_check(%struct.sock* %145, i32 %146, %struct.sk_buff* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %141
  br label %160

151:                                              ; preds = %141
  %152 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %153 = call i32 @nf_reset_ct(%struct.sk_buff* %152)
  %154 = load %struct.sock*, %struct.sock** %5, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %156 = call i32 @sk_receive_skb(%struct.sock* %154, %struct.sk_buff* %155, i32 1)
  store i32 %156, i32* %2, align 4
  br label %166

157:                                              ; preds = %87, %67, %50
  %158 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %159 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %158)
  br label %163

160:                                              ; preds = %150
  %161 = load %struct.sock*, %struct.sock** %5, align 8
  %162 = call i32 @sock_put(%struct.sock* %161)
  br label %163

163:                                              ; preds = %160, %157, %139, %113, %103, %43, %21
  %164 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %165 = call i32 @kfree_skb(%struct.sk_buff* %164)
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %163, %151, %88
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.l2tp_session* @l2tp_session_get(%struct.net*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

declare dso_local i64 @l2tp_v3_ensure_opt_in_linear(%struct.l2tp_session*, %struct.sk_buff*, i8**, i8**) #1

declare dso_local i32 @l2tp_recv_common(%struct.l2tp_session*, %struct.sk_buff*, i8*, i8*, i32, i32) #1

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.sock* @__l2tp_ip_bind_lookup(%struct.net*, i32, i32, i32, i64) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @xfrm4_policy_check(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
