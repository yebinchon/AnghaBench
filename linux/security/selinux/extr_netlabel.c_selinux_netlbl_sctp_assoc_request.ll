; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_sctp_assoc_request.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_netlabel.c_selinux_netlbl_sctp_assoc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@selinux_state = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NLBL_LABELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_netlbl_sctp_assoc_request(%struct.sctp_endpoint* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlbl_lsm_secattr, align 4
  %8 = alloca %struct.sk_security_struct*, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %struct.sockaddr_in6, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.sk_security_struct*, %struct.sk_security_struct** %15, align 8
  store %struct.sk_security_struct* %16, %struct.sk_security_struct** %8, align 8
  %17 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PF_INET, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PF_INET6, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %104

35:                                               ; preds = %25, %2
  %36 = call i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr* %7)
  %37 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %38 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @security_netlbl_sid_to_secattr(i32* @selinux_state, i32 %39, %struct.netlbl_lsm_secattr* %7)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %101

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i32, i32* @AF_INET, align 4
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %60 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = bitcast %struct.sockaddr_in* %9 to i8*
  %64 = call i32 @netlbl_conn_setattr(%struct.TYPE_8__* %62, i8* %63, %struct.netlbl_lsm_secattr* %7)
  store i32 %64, i32* %6, align 4
  br label %93

65:                                               ; preds = %44
  %66 = load i32, i32* @CONFIG_IPV6, align 4
  %67 = call i64 @IS_ENABLED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 6
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i32, i32* @AF_INET6, align 4
  %77 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %84 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = bitcast %struct.sockaddr_in6* %10 to i8*
  %88 = call i32 @netlbl_conn_setattr(%struct.TYPE_8__* %86, i8* %87, %struct.netlbl_lsm_secattr* %7)
  store i32 %88, i32* %6, align 4
  br label %92

89:                                               ; preds = %69, %65
  %90 = load i32, i32* @EAFNOSUPPORT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %75
  br label %93

93:                                               ; preds = %92, %50
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @NLBL_LABELED, align 4
  %98 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %99 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100, %43
  %102 = call i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr* %7)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %34
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @security_netlbl_sid_to_secattr(i32*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @netlbl_conn_setattr(%struct.TYPE_8__*, i8*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
