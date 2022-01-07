; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c___smc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c___smc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.smc_clc_msg_accept_confirm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smc_init_info = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SMC_CLC_DECL_PEERNOSMC = common dso_local global i32 0, align 4
@SMC_CLC_DECL_IPSEC = common dso_local global i32 0, align 4
@SMC_CLC_DECL_GETVLANERR = common dso_local global i32 0, align 4
@SMC_TYPE_D = common dso_local global i32 0, align 4
@SMC_TYPE_B = common dso_local global i32 0, align 4
@SMC_TYPE_R = common dso_local global i32 0, align 4
@SMC_CLC_DECL_NOSMCDEV = common dso_local global i32 0, align 4
@SMC_CLC_DECL_MODEUNSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*)* @__smc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smc_connect(%struct.smc_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.smc_clc_msg_accept_confirm, align 4
  %7 = alloca %struct.smc_init_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = bitcast %struct.smc_init_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %11 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %12 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %17 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %18 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @smc_connect_fallback(%struct.smc_sock* %16, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %139

21:                                               ; preds = %1
  %22 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %23 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_5__* @tcp_sk(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %33 = load i32, i32* @SMC_CLC_DECL_PEERNOSMC, align 4
  %34 = call i32 @smc_connect_fallback(%struct.smc_sock* %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %139

35:                                               ; preds = %21
  %36 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %37 = call i64 @using_ipsec(%struct.smc_sock* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %41 = load i32, i32* @SMC_CLC_DECL_IPSEC, align 4
  %42 = call i32 @smc_connect_decline_fallback(%struct.smc_sock* %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %139

43:                                               ; preds = %35
  %44 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %45 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i64 @smc_vlan_by_tcpsk(%struct.TYPE_6__* %46, %struct.smc_init_info* %7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %51 = load i32, i32* @SMC_CLC_DECL_GETVLANERR, align 4
  %52 = call i32 @smc_connect_decline_fallback(%struct.smc_sock* %50, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %139

53:                                               ; preds = %43
  %54 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %55 = call i32 @smc_find_ism_device(%struct.smc_sock* %54, %struct.smc_init_info* %7)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %59 = call i32 @smc_connect_ism_vlan_setup(%struct.smc_sock* %58, %struct.smc_init_info* %7)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  %62 = load i32, i32* @SMC_TYPE_D, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %57, %53
  %64 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %65 = call i32 @smc_find_rdma_device(%struct.smc_sock* %64, %struct.smc_init_info* %7)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @SMC_TYPE_B, align 4
  store i32 %71, i32* %8, align 4
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @SMC_TYPE_R, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %83 = load i32, i32* @SMC_CLC_DECL_NOSMCDEV, align 4
  %84 = call i32 @smc_connect_decline_fallback(%struct.smc_sock* %82, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %139

85:                                               ; preds = %78, %75
  %86 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @smc_connect_clc(%struct.smc_sock* %86, i32 %87, %struct.smc_clc_msg_accept_confirm* %6, %struct.smc_init_info* %7)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @smc_connect_ism_vlan_cleanup(%struct.smc_sock* %92, i32 %93, %struct.smc_init_info* %7)
  %95 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @smc_connect_decline_fallback(%struct.smc_sock* %95, i32 %96)
  store i32 %97, i32* %2, align 4
  br label %139

98:                                               ; preds = %85
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %6, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SMC_TYPE_R, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %109 = call i32 @smc_connect_rdma(%struct.smc_sock* %108, %struct.smc_clc_msg_accept_confirm* %6, %struct.smc_init_info* %7)
  store i32 %109, i32* %9, align 4
  br label %125

110:                                              ; preds = %101, %98
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %6, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SMC_TYPE_D, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %121 = call i32 @smc_connect_ism(%struct.smc_sock* %120, %struct.smc_clc_msg_accept_confirm* %6, %struct.smc_init_info* %7)
  store i32 %121, i32* %9, align 4
  br label %124

122:                                              ; preds = %113, %110
  %123 = load i32, i32* @SMC_CLC_DECL_MODEUNSUPP, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124, %107
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @smc_connect_ism_vlan_cleanup(%struct.smc_sock* %129, i32 %130, %struct.smc_init_info* %7)
  %132 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @smc_connect_decline_fallback(%struct.smc_sock* %132, i32 %133)
  store i32 %134, i32* %2, align 4
  br label %139

135:                                              ; preds = %125
  %136 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @smc_connect_ism_vlan_cleanup(%struct.smc_sock* %136, i32 %137, %struct.smc_init_info* %7)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %135, %128, %91, %81, %49, %39, %31, %15
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smc_connect_fallback(%struct.smc_sock*, i32) #2

declare dso_local %struct.TYPE_5__* @tcp_sk(i32) #2

declare dso_local i64 @using_ipsec(%struct.smc_sock*) #2

declare dso_local i32 @smc_connect_decline_fallback(%struct.smc_sock*, i32) #2

declare dso_local i64 @smc_vlan_by_tcpsk(%struct.TYPE_6__*, %struct.smc_init_info*) #2

declare dso_local i32 @smc_find_ism_device(%struct.smc_sock*, %struct.smc_init_info*) #2

declare dso_local i32 @smc_connect_ism_vlan_setup(%struct.smc_sock*, %struct.smc_init_info*) #2

declare dso_local i32 @smc_find_rdma_device(%struct.smc_sock*, %struct.smc_init_info*) #2

declare dso_local i32 @smc_connect_clc(%struct.smc_sock*, i32, %struct.smc_clc_msg_accept_confirm*, %struct.smc_init_info*) #2

declare dso_local i32 @smc_connect_ism_vlan_cleanup(%struct.smc_sock*, i32, %struct.smc_init_info*) #2

declare dso_local i32 @smc_connect_rdma(%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*, %struct.smc_init_info*) #2

declare dso_local i32 @smc_connect_ism(%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*, %struct.smc_init_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
