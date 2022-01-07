; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sock_rcv_skb_compat.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sock_rcv_skb_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.lsm_network_audit* }
%struct.lsm_network_audit = type { i32, i32, i32 }

@LSM_AUDIT_DATA_NET = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PACKET = common dso_local global i32 0, align 4
@PACKET__RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @selinux_sock_rcv_skb_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sock_rcv_skb_compat(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_security_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.common_audit_data, align 8
  %12 = alloca %struct.lsm_network_audit, align 4
  %13 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load %struct.sk_security_struct*, %struct.sk_security_struct** %15, align 8
  store %struct.sk_security_struct* %16, %struct.sk_security_struct** %9, align 8
  %17 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %18 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = bitcast %struct.lsm_network_audit* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = load i32, i32* @LSM_AUDIT_DATA_NET, align 4
  %22 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.lsm_network_audit* %12, %struct.lsm_network_audit** %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.lsm_network_audit*, %struct.lsm_network_audit** %29, align 8
  %31 = getelementptr inbounds %struct.lsm_network_audit, %struct.lsm_network_audit* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.lsm_network_audit*, %struct.lsm_network_audit** %34, align 8
  %36 = getelementptr inbounds %struct.lsm_network_audit, %struct.lsm_network_audit* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @selinux_parse_skb(%struct.sk_buff* %37, %struct.common_audit_data* %11, i8** %13, i32 1, i32* null)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %3
  %44 = call i64 (...) @selinux_secmark_enabled()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SECCLASS_PACKET, align 4
  %52 = load i32, i32* @PACKET__RECV, align 4
  %53 = call i32 @avc_has_perm(i32* @selinux_state, i32 %47, i32 %50, i32 %51, i32 %52, %struct.common_audit_data* %11)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %75

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @selinux_netlbl_sock_rcv_skb(%struct.sk_security_struct* %60, %struct.sk_buff* %61, i32 %62, %struct.common_audit_data* %11)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %75

68:                                               ; preds = %59
  %69 = load %struct.sk_security_struct*, %struct.sk_security_struct** %9, align 8
  %70 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32 @selinux_xfrm_sock_rcv_skb(i32 %71, %struct.sk_buff* %72, %struct.common_audit_data* %11)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %66, %56, %41
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @selinux_parse_skb(%struct.sk_buff*, %struct.common_audit_data*, i8**, i32, i32*) #2

declare dso_local i64 @selinux_secmark_enabled(...) #2

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #2

declare dso_local i32 @selinux_netlbl_sock_rcv_skb(%struct.sk_security_struct*, %struct.sk_buff*, i32, %struct.common_audit_data*) #2

declare dso_local i32 @selinux_xfrm_sock_rcv_skb(i32, %struct.sk_buff*, %struct.common_audit_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
