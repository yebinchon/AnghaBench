; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sctp_assoc_request.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sctp_assoc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.sk_security_struct* }
%struct.sk_security_struct = type { i64, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.lsm_network_audit* }
%struct.lsm_network_audit = type { %struct.TYPE_5__*, i32 }

@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@SECSID_NULL = common dso_local global i64 0, align 8
@SCTP_ASSOC_UNSET = common dso_local global i64 0, align 8
@SCTP_ASSOC_SET = common dso_local global i64 0, align 8
@LSM_AUDIT_DATA_NET = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SCTP_SOCKET__ASSOCIATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sk_buff*)* @selinux_sctp_assoc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sctp_assoc_request(%struct.sctp_endpoint* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_security_struct*, align 8
  %7 = alloca %struct.common_audit_data, align 8
  %8 = alloca %struct.lsm_network_audit, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.sk_security_struct*, %struct.sk_security_struct** %17, align 8
  store %struct.sk_security_struct* %18, %struct.sk_security_struct** %6, align 8
  %19 = bitcast %struct.lsm_network_audit* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load i64, i64* @SECINITSID_UNLABELED, align 8
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %21 = call i32 (...) @selinux_policycap_extsockclass()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

24:                                               ; preds = %2
  %25 = call i64 (...) @selinux_peerlbl_enabled()
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @selinux_skb_peerlbl_sid(%struct.sk_buff* %29, i32 %35, i64* %10)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %3, align 4
  br label %115

41:                                               ; preds = %28
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @SECSID_NULL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @SECINITSID_UNLABELED, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %50 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SCTP_ASSOC_UNSET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i64, i64* @SCTP_ASSOC_SET, align 8
  %56 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %57 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %60 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %95

61:                                               ; preds = %48
  %62 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %63 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %61
  %68 = load i32, i32* @LSM_AUDIT_DATA_NET, align 4
  %69 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store %struct.lsm_network_audit* %8, %struct.lsm_network_audit** %71, align 8
  %72 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %73 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %7, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.lsm_network_audit*, %struct.lsm_network_audit** %77, align 8
  %79 = getelementptr inbounds %struct.lsm_network_audit, %struct.lsm_network_audit* %78, i32 0, i32 0
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %79, align 8
  %80 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %81 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %85 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SCTP_SOCKET__ASSOCIATION, align 4
  %88 = call i32 @avc_has_perm(i32* @selinux_state, i64 %82, i64 %83, i32 %86, i32 %87, %struct.common_audit_data* %7)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %67
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %3, align 4
  br label %115

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %93, %61
  br label %95

95:                                               ; preds = %94, %54
  %96 = load %struct.sk_security_struct*, %struct.sk_security_struct** %6, align 8
  %97 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @selinux_conn_sid(i32 %98, i64 %99, i64* %11)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %3, align 4
  br label %115

105:                                              ; preds = %95
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %108 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %111 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @selinux_netlbl_sctp_assoc_request(%struct.sctp_endpoint* %112, %struct.sk_buff* %113)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %105, %103, %91, %39, %23
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @selinux_policycap_extsockclass(...) #2

declare dso_local i64 @selinux_peerlbl_enabled(...) #2

declare dso_local i32 @selinux_skb_peerlbl_sid(%struct.sk_buff*, i32, i64*) #2

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, %struct.common_audit_data*) #2

declare dso_local i32 @selinux_conn_sid(i32, i64, i64*) #2

declare dso_local i32 @selinux_netlbl_sctp_assoc_request(%struct.sctp_endpoint*, %struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
