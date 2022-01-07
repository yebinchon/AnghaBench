; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_sock_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_sock_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.lsm_network_audit* }
%struct.lsm_network_audit = type { i64, i32, i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_NET = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PEER = common dso_local global i32 0, align 4
@PEER__RECV = common dso_local global i32 0, align 4
@SECCLASS_PACKET = common dso_local global i32 0, align 4
@PACKET__RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @selinux_socket_sock_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_sock_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_security_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.common_audit_data, align 8
  %11 = alloca %struct.lsm_network_audit, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 1
  %18 = load %struct.sk_security_struct*, %struct.sk_security_struct** %17, align 8
  store %struct.sk_security_struct* %18, %struct.sk_security_struct** %7, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.sk_security_struct*, %struct.sk_security_struct** %7, align 8
  %23 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = bitcast %struct.lsm_network_audit* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 16, i1 false)
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @PF_INET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @PF_INET6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %149

34:                                               ; preds = %29, %2
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @PF_INET6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @ETH_P_IP, align 4
  %43 = call i64 @htons(i32 %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @PF_INET, align 8
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %45, %38, %34
  %48 = call i32 (...) @selinux_policycap_netpeer()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @selinux_sock_rcv_skb_compat(%struct.sock* %51, %struct.sk_buff* %52, i64 %53)
  store i32 %54, i32* %3, align 4
  br label %149

55:                                               ; preds = %47
  %56 = call i64 (...) @selinux_secmark_enabled()
  store i64 %56, i64* %13, align 8
  %57 = call i64 (...) @selinux_peerlbl_enabled()
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %14, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %149

64:                                               ; preds = %60, %55
  %65 = load i32, i32* @LSM_AUDIT_DATA_NET, align 4
  %66 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store %struct.lsm_network_audit* %11, %struct.lsm_network_audit** %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.lsm_network_audit*, %struct.lsm_network_audit** %73, align 8
  %75 = getelementptr inbounds %struct.lsm_network_audit, %struct.lsm_network_audit* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.lsm_network_audit*, %struct.lsm_network_audit** %78, align 8
  %80 = getelementptr inbounds %struct.lsm_network_audit, %struct.lsm_network_audit* %79, i32 0, i32 0
  store i64 %76, i64* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @selinux_parse_skb(%struct.sk_buff* %81, %struct.common_audit_data* %10, i8** %12, i32 1, i32* null)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %64
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %149

87:                                               ; preds = %64
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %131

90:                                               ; preds = %87
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @selinux_skb_peerlbl_sid(%struct.sk_buff* %91, i64 %92, i32* %15)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %149

98:                                               ; preds = %90
  %99 = load %struct.sock*, %struct.sock** %4, align 8
  %100 = call i32 @sock_net(%struct.sock* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %12, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @selinux_inet_sys_rcv_skb(i32 %100, i32 %103, i8* %104, i64 %105, i32 %106, %struct.common_audit_data* %10)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %98
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @selinux_netlbl_err(%struct.sk_buff* %111, i64 %112, i32 %113, i32 0)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %149

116:                                              ; preds = %98
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @SECCLASS_PEER, align 4
  %120 = load i32, i32* @PEER__RECV, align 4
  %121 = call i32 @avc_has_perm(i32* @selinux_state, i32 %117, i32 %118, i32 %119, i32 %120, %struct.common_audit_data* %10)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @selinux_netlbl_err(%struct.sk_buff* %125, i64 %126, i32 %127, i32 0)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %149

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %87
  %132 = load i64, i64* %13, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SECCLASS_PACKET, align 4
  %140 = load i32, i32* @PACKET__RECV, align 4
  %141 = call i32 @avc_has_perm(i32* @selinux_state, i32 %135, i32 %138, i32 %139, i32 %140, %struct.common_audit_data* %10)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %149

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %131
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %144, %124, %110, %96, %85, %63, %50, %33
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @htons(i32) #2

declare dso_local i32 @selinux_policycap_netpeer(...) #2

declare dso_local i32 @selinux_sock_rcv_skb_compat(%struct.sock*, %struct.sk_buff*, i64) #2

declare dso_local i64 @selinux_secmark_enabled(...) #2

declare dso_local i64 @selinux_peerlbl_enabled(...) #2

declare dso_local i32 @selinux_parse_skb(%struct.sk_buff*, %struct.common_audit_data*, i8**, i32, i32*) #2

declare dso_local i32 @selinux_skb_peerlbl_sid(%struct.sk_buff*, i64, i32*) #2

declare dso_local i32 @selinux_inet_sys_rcv_skb(i32, i32, i8*, i64, i32, %struct.common_audit_data*) #2

declare dso_local i32 @sock_net(%struct.sock*) #2

declare dso_local i32 @selinux_netlbl_err(%struct.sk_buff*, i64, i32, i32) #2

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
