; ModuleID = '/home/carl/AnghaBench/linux/security/extr_lsm_audit.c_ipv4_skb_to_auditdata.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_lsm_audit.c_ipv4_skb_to_auditdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32, i32 }
%struct.tcphdr = type { i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.dccp_hdr = type { i32, i32 }
%struct.sctphdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv4_skb_to_auditdata(%struct.sk_buff* %0, %struct.common_audit_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.common_audit_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca %struct.udphdr*, align 8
  %12 = alloca %struct.dccp_hdr*, align 8
  %13 = alloca %struct.sctphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.common_audit_data* %1, %struct.common_audit_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %9, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %17 = icmp eq %struct.iphdr* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %157

21:                                               ; preds = %3
  %22 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %26 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %24, i32* %30, align 4
  %31 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %35 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %33, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %21
  %48 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  %52 = load i32, i32* @IP_OFFSET, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %157

56:                                               ; preds = %47
  %57 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %152 [
    i32 129, label %60
    i32 128, label %83
    i32 131, label %106
    i32 130, label %129
  ]

60:                                               ; preds = %56
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %61)
  store %struct.tcphdr* %62, %struct.tcphdr** %10, align 8
  %63 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %64 = icmp eq %struct.tcphdr* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %155

66:                                               ; preds = %60
  %67 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %68 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %71 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  %75 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %79 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 4
  br label %155

83:                                               ; preds = %56
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %84)
  store %struct.udphdr* %85, %struct.udphdr** %11, align 8
  %86 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %87 = icmp eq %struct.udphdr* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %155

89:                                               ; preds = %83
  %90 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %91 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %94 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 4
  %98 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %99 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %102 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 4
  br label %155

106:                                              ; preds = %56
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %107)
  store %struct.dccp_hdr* %108, %struct.dccp_hdr** %12, align 8
  %109 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %110 = icmp eq %struct.dccp_hdr* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %155

112:                                              ; preds = %106
  %113 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %114 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %117 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i32 %115, i32* %120, align 4
  %121 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %122 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %125 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %123, i32* %128, align 4
  br label %155

129:                                              ; preds = %56
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = call %struct.sctphdr* @sctp_hdr(%struct.sk_buff* %130)
  store %struct.sctphdr* %131, %struct.sctphdr** %13, align 8
  %132 = load %struct.sctphdr*, %struct.sctphdr** %13, align 8
  %133 = icmp eq %struct.sctphdr* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %155

135:                                              ; preds = %129
  %136 = load %struct.sctphdr*, %struct.sctphdr** %13, align 8
  %137 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %140 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i32 %138, i32* %143, align 4
  %144 = load %struct.sctphdr*, %struct.sctphdr** %13, align 8
  %145 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %148 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %146, i32* %151, align 4
  br label %155

152:                                              ; preds = %56
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %152, %135, %134, %112, %111, %89, %88, %66, %65
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %55, %18
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sctphdr* @sctp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
