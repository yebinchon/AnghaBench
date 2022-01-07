; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_diag.c_sk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_diag.c_sk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.packet_diag_req = type { i32 }
%struct.user_namespace = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.packet_diag_msg = type { i32, i32, i32, i32, i32 }
%struct.packet_sock = type { i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_PACKET = common dso_local global i32 0, align 4
@PACKET_SHOW_INFO = common dso_local global i32 0, align 4
@PACKET_DIAG_UID = common dso_local global i32 0, align 4
@PACKET_SHOW_MCLIST = common dso_local global i32 0, align 4
@PACKET_SHOW_RING_CFG = common dso_local global i32 0, align 4
@PACKET_SHOW_FANOUT = common dso_local global i32 0, align 4
@PACKET_SHOW_MEMINFO = common dso_local global i32 0, align 4
@PACKET_DIAG_MEMINFO = common dso_local global i32 0, align 4
@PACKET_SHOW_FILTER = common dso_local global i32 0, align 4
@PACKET_DIAG_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.packet_diag_req*, i32, %struct.user_namespace*, i32, i32, i32, i32)* @sk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_fill(%struct.sock* %0, %struct.sk_buff* %1, %struct.packet_diag_req* %2, i32 %3, %struct.user_namespace* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.packet_diag_req*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.user_namespace*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca %struct.packet_diag_msg*, align 8
  %22 = alloca %struct.packet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %11, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %12, align 8
  store %struct.packet_diag_req* %2, %struct.packet_diag_req** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.user_namespace* %4, %struct.user_namespace** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = call %struct.packet_sock* @pkt_sk(%struct.sock* %23)
  store %struct.packet_sock* %24, %struct.packet_sock** %22, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %25, i32 %26, i32 %27, i32 %28, i32 20, i32 %29)
  store %struct.nlmsghdr* %30, %struct.nlmsghdr** %20, align 8
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %32 = icmp ne %struct.nlmsghdr* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %9
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %168

36:                                               ; preds = %9
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %38 = call %struct.packet_diag_msg* @nlmsg_data(%struct.nlmsghdr* %37)
  store %struct.packet_diag_msg* %38, %struct.packet_diag_msg** %21, align 8
  %39 = load i32, i32* @AF_PACKET, align 4
  %40 = load %struct.packet_diag_msg*, %struct.packet_diag_msg** %21, align 8
  %41 = getelementptr inbounds %struct.packet_diag_msg, %struct.packet_diag_msg* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sock*, %struct.sock** %11, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.packet_diag_msg*, %struct.packet_diag_msg** %21, align 8
  %46 = getelementptr inbounds %struct.packet_diag_msg, %struct.packet_diag_msg* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.packet_sock*, %struct.packet_sock** %22, align 8
  %48 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = load %struct.packet_diag_msg*, %struct.packet_diag_msg** %21, align 8
  %52 = getelementptr inbounds %struct.packet_diag_msg, %struct.packet_diag_msg* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load %struct.packet_diag_msg*, %struct.packet_diag_msg** %21, align 8
  %55 = getelementptr inbounds %struct.packet_diag_msg, %struct.packet_diag_msg* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sock*, %struct.sock** %11, align 8
  %57 = load %struct.packet_diag_msg*, %struct.packet_diag_msg** %21, align 8
  %58 = getelementptr inbounds %struct.packet_diag_msg, %struct.packet_diag_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sock_diag_save_cookie(%struct.sock* %56, i32 %59)
  %61 = load %struct.packet_diag_req*, %struct.packet_diag_req** %13, align 8
  %62 = getelementptr inbounds %struct.packet_diag_req, %struct.packet_diag_req* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PACKET_SHOW_INFO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %36
  %68 = load %struct.packet_sock*, %struct.packet_sock** %22, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = call i64 @pdiag_put_info(%struct.packet_sock* %68, %struct.sk_buff* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %162

73:                                               ; preds = %67, %36
  %74 = load %struct.packet_diag_req*, %struct.packet_diag_req** %13, align 8
  %75 = getelementptr inbounds %struct.packet_diag_req, %struct.packet_diag_req* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PACKET_SHOW_INFO, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = load i32, i32* @PACKET_DIAG_UID, align 4
  %83 = load %struct.user_namespace*, %struct.user_namespace** %15, align 8
  %84 = load %struct.sock*, %struct.sock** %11, align 8
  %85 = call i32 @sock_i_uid(%struct.sock* %84)
  %86 = call i32 @from_kuid_munged(%struct.user_namespace* %83, i32 %85)
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %81, i32 %82, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %162

90:                                               ; preds = %80, %73
  %91 = load %struct.packet_diag_req*, %struct.packet_diag_req** %13, align 8
  %92 = getelementptr inbounds %struct.packet_diag_req, %struct.packet_diag_req* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PACKET_SHOW_MCLIST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.packet_sock*, %struct.packet_sock** %22, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = call i64 @pdiag_put_mclist(%struct.packet_sock* %98, %struct.sk_buff* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %162

103:                                              ; preds = %97, %90
  %104 = load %struct.packet_diag_req*, %struct.packet_diag_req** %13, align 8
  %105 = getelementptr inbounds %struct.packet_diag_req, %struct.packet_diag_req* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PACKET_SHOW_RING_CFG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load %struct.packet_sock*, %struct.packet_sock** %22, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %113 = call i64 @pdiag_put_rings_cfg(%struct.packet_sock* %111, %struct.sk_buff* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %162

116:                                              ; preds = %110, %103
  %117 = load %struct.packet_diag_req*, %struct.packet_diag_req** %13, align 8
  %118 = getelementptr inbounds %struct.packet_diag_req, %struct.packet_diag_req* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PACKET_SHOW_FANOUT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.packet_sock*, %struct.packet_sock** %22, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %126 = call i64 @pdiag_put_fanout(%struct.packet_sock* %124, %struct.sk_buff* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %162

129:                                              ; preds = %123, %116
  %130 = load %struct.packet_diag_req*, %struct.packet_diag_req** %13, align 8
  %131 = getelementptr inbounds %struct.packet_diag_req, %struct.packet_diag_req* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PACKET_SHOW_MEMINFO, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load %struct.sock*, %struct.sock** %11, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = load i32, i32* @PACKET_DIAG_MEMINFO, align 4
  %140 = call i64 @sock_diag_put_meminfo(%struct.sock* %137, %struct.sk_buff* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %162

143:                                              ; preds = %136, %129
  %144 = load %struct.packet_diag_req*, %struct.packet_diag_req** %13, align 8
  %145 = getelementptr inbounds %struct.packet_diag_req, %struct.packet_diag_req* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @PACKET_SHOW_FILTER, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.sock*, %struct.sock** %11, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %154 = load i32, i32* @PACKET_DIAG_FILTER, align 4
  %155 = call i64 @sock_diag_put_filterinfo(i32 %151, %struct.sock* %152, %struct.sk_buff* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %162

158:                                              ; preds = %150, %143
  %159 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %160 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %161 = call i32 @nlmsg_end(%struct.sk_buff* %159, %struct.nlmsghdr* %160)
  store i32 0, i32* %10, align 4
  br label %168

162:                                              ; preds = %157, %142, %128, %115, %102, %89, %72
  %163 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %164 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %165 = call i32 @nlmsg_cancel(%struct.sk_buff* %163, %struct.nlmsghdr* %164)
  %166 = load i32, i32* @EMSGSIZE, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %162, %158, %33
  %169 = load i32, i32* %10, align 4
  ret i32 %169
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.packet_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sock_diag_save_cookie(%struct.sock*, i32) #1

declare dso_local i64 @pdiag_put_info(%struct.packet_sock*, %struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @sock_i_uid(%struct.sock*) #1

declare dso_local i64 @pdiag_put_mclist(%struct.packet_sock*, %struct.sk_buff*) #1

declare dso_local i64 @pdiag_put_rings_cfg(%struct.packet_sock*, %struct.sk_buff*) #1

declare dso_local i64 @pdiag_put_fanout(%struct.packet_sock*, %struct.sk_buff*) #1

declare dso_local i64 @sock_diag_put_meminfo(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @sock_diag_put_filterinfo(i32, %struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
