; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_diag.c_xsk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_diag.c_xsk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xdp_diag_req = type { i32 }
%struct.user_namespace = type { i32 }
%struct.xdp_sock = type { i32 }
%struct.xdp_diag_msg = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_XDP = common dso_local global i32 0, align 4
@XDP_SHOW_INFO = common dso_local global i32 0, align 4
@XDP_DIAG_UID = common dso_local global i32 0, align 4
@XDP_SHOW_RING_CFG = common dso_local global i32 0, align 4
@XDP_SHOW_UMEM = common dso_local global i32 0, align 4
@XDP_SHOW_MEMINFO = common dso_local global i32 0, align 4
@XDP_DIAG_MEMINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.xdp_diag_req*, %struct.user_namespace*, i32, i32, i32, i32)* @xsk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_diag_fill(%struct.sock* %0, %struct.sk_buff* %1, %struct.xdp_diag_req* %2, %struct.user_namespace* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.xdp_diag_req*, align 8
  %13 = alloca %struct.user_namespace*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.xdp_sock*, align 8
  %19 = alloca %struct.xdp_diag_msg*, align 8
  %20 = alloca %struct.nlmsghdr*, align 8
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %struct.xdp_diag_req* %2, %struct.xdp_diag_req** %12, align 8
  store %struct.user_namespace* %3, %struct.user_namespace** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call %struct.xdp_sock* @xdp_sk(%struct.sock* %21)
  store %struct.xdp_sock* %22, %struct.xdp_sock** %18, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %27 = load i32, i32* %16, align 4
  %28 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %23, i32 %24, i32 %25, i32 %26, i32 16, i32 %27)
  store %struct.nlmsghdr* %28, %struct.nlmsghdr** %20, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %30 = icmp ne %struct.nlmsghdr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* @EMSGSIZE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %143

34:                                               ; preds = %8
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %36 = call %struct.xdp_diag_msg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.xdp_diag_msg* %36, %struct.xdp_diag_msg** %19, align 8
  %37 = load %struct.xdp_diag_msg*, %struct.xdp_diag_msg** %19, align 8
  %38 = call i32 @memset(%struct.xdp_diag_msg* %37, i32 0, i32 16)
  %39 = load i32, i32* @AF_XDP, align 4
  %40 = load %struct.xdp_diag_msg*, %struct.xdp_diag_msg** %19, align 8
  %41 = getelementptr inbounds %struct.xdp_diag_msg, %struct.xdp_diag_msg* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xdp_diag_msg*, %struct.xdp_diag_msg** %19, align 8
  %46 = getelementptr inbounds %struct.xdp_diag_msg, %struct.xdp_diag_msg* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load %struct.xdp_diag_msg*, %struct.xdp_diag_msg** %19, align 8
  %49 = getelementptr inbounds %struct.xdp_diag_msg, %struct.xdp_diag_msg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = load %struct.xdp_diag_msg*, %struct.xdp_diag_msg** %19, align 8
  %52 = getelementptr inbounds %struct.xdp_diag_msg, %struct.xdp_diag_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sock_diag_save_cookie(%struct.sock* %50, i32 %53)
  %55 = load %struct.xdp_sock*, %struct.xdp_sock** %18, align 8
  %56 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.xdp_diag_req*, %struct.xdp_diag_req** %12, align 8
  %59 = getelementptr inbounds %struct.xdp_diag_req, %struct.xdp_diag_req* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @XDP_SHOW_INFO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %34
  %65 = load %struct.xdp_sock*, %struct.xdp_sock** %18, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = call i64 @xsk_diag_put_info(%struct.xdp_sock* %65, %struct.sk_buff* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %134

70:                                               ; preds = %64, %34
  %71 = load %struct.xdp_diag_req*, %struct.xdp_diag_req** %12, align 8
  %72 = getelementptr inbounds %struct.xdp_diag_req, %struct.xdp_diag_req* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @XDP_SHOW_INFO, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = load i32, i32* @XDP_DIAG_UID, align 4
  %80 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %81 = load %struct.sock*, %struct.sock** %10, align 8
  %82 = call i32 @sock_i_uid(%struct.sock* %81)
  %83 = call i32 @from_kuid_munged(%struct.user_namespace* %80, i32 %82)
  %84 = call i64 @nla_put_u32(%struct.sk_buff* %78, i32 %79, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %134

87:                                               ; preds = %77, %70
  %88 = load %struct.xdp_diag_req*, %struct.xdp_diag_req** %12, align 8
  %89 = getelementptr inbounds %struct.xdp_diag_req, %struct.xdp_diag_req* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @XDP_SHOW_RING_CFG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.xdp_sock*, %struct.xdp_sock** %18, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = call i64 @xsk_diag_put_rings_cfg(%struct.xdp_sock* %95, %struct.sk_buff* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %134

100:                                              ; preds = %94, %87
  %101 = load %struct.xdp_diag_req*, %struct.xdp_diag_req** %12, align 8
  %102 = getelementptr inbounds %struct.xdp_diag_req, %struct.xdp_diag_req* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @XDP_SHOW_UMEM, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.xdp_sock*, %struct.xdp_sock** %18, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %110 = call i64 @xsk_diag_put_umem(%struct.xdp_sock* %108, %struct.sk_buff* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %134

113:                                              ; preds = %107, %100
  %114 = load %struct.xdp_diag_req*, %struct.xdp_diag_req** %12, align 8
  %115 = getelementptr inbounds %struct.xdp_diag_req, %struct.xdp_diag_req* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @XDP_SHOW_MEMINFO, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.sock*, %struct.sock** %10, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %123 = load i32, i32* @XDP_DIAG_MEMINFO, align 4
  %124 = call i64 @sock_diag_put_meminfo(%struct.sock* %121, %struct.sk_buff* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %134

127:                                              ; preds = %120, %113
  %128 = load %struct.xdp_sock*, %struct.xdp_sock** %18, align 8
  %129 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %132 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %133 = call i32 @nlmsg_end(%struct.sk_buff* %131, %struct.nlmsghdr* %132)
  store i32 0, i32* %9, align 4
  br label %143

134:                                              ; preds = %126, %112, %99, %86, %69
  %135 = load %struct.xdp_sock*, %struct.xdp_sock** %18, align 8
  %136 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %135, i32 0, i32 0
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %139 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %140 = call i32 @nlmsg_cancel(%struct.sk_buff* %138, %struct.nlmsghdr* %139)
  %141 = load i32, i32* @EMSGSIZE, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %134, %127, %31
  %144 = load i32, i32* %9, align 4
  ret i32 %144
}

declare dso_local %struct.xdp_sock* @xdp_sk(%struct.sock*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xdp_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.xdp_diag_msg*, i32, i32) #1

declare dso_local i32 @sock_diag_save_cookie(%struct.sock*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @xsk_diag_put_info(%struct.xdp_sock*, %struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @sock_i_uid(%struct.sock*) #1

declare dso_local i64 @xsk_diag_put_rings_cfg(%struct.xdp_sock*, %struct.sk_buff*) #1

declare dso_local i64 @xsk_diag_put_umem(%struct.xdp_sock*, %struct.sk_buff*) #1

declare dso_local i64 @sock_diag_put_meminfo(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
