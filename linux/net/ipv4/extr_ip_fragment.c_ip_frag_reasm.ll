; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_frag_reasm.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_frag_reasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__, i32*, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32 }

@ip_frag_ecn_table = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@IPSKB_FRAG_PMTU = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMOKS = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"queue_glue: no memory for gluing queue %p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Oversized IP packet from %pI4\0A\00", align 1
@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq*, %struct.sk_buff*, %struct.sk_buff*, %struct.net_device*)* @ip_frag_reasm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_frag_reasm(%struct.ipq* %0, %struct.sk_buff* %1, %struct.sk_buff* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ipq* %0, %struct.ipq** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %16 = load %struct.ipq*, %struct.ipq** %6, align 8
  %17 = getelementptr inbounds %struct.ipq, %struct.ipq* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.net*, %struct.net** %20, align 8
  store %struct.net* %21, %struct.net** %10, align 8
  %22 = load %struct.ipq*, %struct.ipq** %6, align 8
  %23 = call i32 @ipq_kill(%struct.ipq* %22)
  %24 = load i32*, i32** @ip_frag_ecn_table, align 8
  %25 = load %struct.ipq*, %struct.ipq** %6, align 8
  %26 = getelementptr inbounds %struct.ipq, %struct.ipq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp eq i32 %30, 255
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  br label %143

38:                                               ; preds = %4
  %39 = load %struct.ipq*, %struct.ipq** %6, align 8
  %40 = getelementptr inbounds %struct.ipq, %struct.ipq* %39, i32 0, i32 2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i8* @inet_frag_reasm_prepare(%struct.TYPE_10__* %40, %struct.sk_buff* %41, %struct.sk_buff* %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %131

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = call i32 @ip_hdrlen(%struct.sk_buff* %48)
  %50 = load %struct.ipq*, %struct.ipq** %6, align 8
  %51 = getelementptr inbounds %struct.ipq, %struct.ipq* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %49, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @E2BIG, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 65535
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %136

60:                                               ; preds = %47
  %61 = load %struct.ipq*, %struct.ipq** %6, align 8
  %62 = getelementptr inbounds %struct.ipq, %struct.ipq* %61, i32 0, i32 2
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.ipq*, %struct.ipq** %6, align 8
  %66 = call i32 @ip_frag_coalesce_ok(%struct.ipq* %65)
  %67 = call i32 @inet_frag_reasm_finish(%struct.TYPE_10__* %62, %struct.sk_buff* %63, i8* %64, i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %9, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  store %struct.net_device* %68, %struct.net_device** %70, align 8
  %71 = load %struct.ipq*, %struct.ipq** %6, align 8
  %72 = getelementptr inbounds %struct.ipq, %struct.ipq* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ipq*, %struct.ipq** %6, align 8
  %75 = getelementptr inbounds %struct.ipq, %struct.ipq* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @max(i64 %73, i64 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call %struct.TYPE_11__* @IPCB(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %82)
  store %struct.iphdr* %83, %struct.iphdr** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i8* @htons(i32 %84)
  %86 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %90 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.ipq*, %struct.ipq** %6, align 8
  %94 = getelementptr inbounds %struct.ipq, %struct.ipq* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ipq*, %struct.ipq** %6, align 8
  %97 = getelementptr inbounds %struct.ipq, %struct.ipq* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %95, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %60
  %102 = load i32, i32* @IPSKB_FRAG_PMTU, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = call %struct.TYPE_11__* @IPCB(%struct.sk_buff* %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @IP_DF, align 4
  %109 = call i8* @htons(i32 %108)
  %110 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %115

112:                                              ; preds = %60
  %113 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %114 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %113, i32 0, i32 1
  store i8* null, i8** %114, align 8
  br label %115

115:                                              ; preds = %112, %101
  %116 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %117 = call i32 @ip_send_check(%struct.iphdr* %116)
  %118 = load %struct.net*, %struct.net** %10, align 8
  %119 = load i32, i32* @IPSTATS_MIB_REASMOKS, align 4
  %120 = call i32 @__IP_INC_STATS(%struct.net* %118, i32 %119)
  %121 = load i32, i32* @RB_ROOT, align 4
  %122 = load %struct.ipq*, %struct.ipq** %6, align 8
  %123 = getelementptr inbounds %struct.ipq, %struct.ipq* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 5
  store i32 %121, i32* %124, align 8
  %125 = load %struct.ipq*, %struct.ipq** %6, align 8
  %126 = getelementptr inbounds %struct.ipq, %struct.ipq* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  store i32* null, i32** %127, align 8
  %128 = load %struct.ipq*, %struct.ipq** %6, align 8
  %129 = getelementptr inbounds %struct.ipq, %struct.ipq* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  store i32* null, i32** %130, align 8
  store i32 0, i32* %5, align 4
  br label %148

131:                                              ; preds = %46
  %132 = load %struct.ipq*, %struct.ipq** %6, align 8
  %133 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.ipq* %132)
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %14, align 4
  br label %143

136:                                              ; preds = %59
  %137 = load %struct.ipq*, %struct.ipq** %6, align 8
  %138 = getelementptr inbounds %struct.ipq, %struct.ipq* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %141)
  br label %143

143:                                              ; preds = %136, %131, %35
  %144 = load %struct.net*, %struct.net** %10, align 8
  %145 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %146 = call i32 @__IP_INC_STATS(%struct.net* %144, i32 %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %143, %115
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @ipq_kill(%struct.ipq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @inet_frag_reasm_prepare(%struct.TYPE_10__*, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @inet_frag_reasm_finish(%struct.TYPE_10__*, %struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @ip_frag_coalesce_ok(%struct.ipq*) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local %struct.TYPE_11__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, %struct.ipq*) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
