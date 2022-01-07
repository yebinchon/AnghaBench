; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_tcpudp.c_tcp_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_tcpudp.c_tcp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, i32, i32, %struct.xt_tcp* }
%struct.xt_tcp = type { i32, i8, i8, i64, i32*, i32* }
%struct.tcphdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Dropping evil TCP offset=1 frag.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Dropping evil TCP offset=0 tinygram.\0A\00", align 1
@XT_TCP_INV_SRCPT = common dso_local global i32 0, align 4
@XT_TCP_INV_DSTPT = common dso_local global i32 0, align 4
@XT_TCP_INV_FLAGS = common dso_local global i32 0, align 4
@XT_TCP_INV_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @tcp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.tcphdr, align 4
  %8 = alloca %struct.xt_tcp*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 3
  %11 = load %struct.xt_tcp*, %struct.xt_tcp** %10, align 8
  store %struct.xt_tcp* %11, %struct.xt_tcp** %8, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %18 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %24 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %16
  store i32 0, i32* %3, align 4
  br label %156

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %29 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %27, i32 %30, i32 12, %struct.tcphdr* %7)
  store %struct.tcphdr* %31, %struct.tcphdr** %6, align 8
  %32 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %33 = icmp eq %struct.tcphdr* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %37 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %156

38:                                               ; preds = %26
  %39 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %40 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %45 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %50 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  %53 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %54 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @XT_TCP_INV_SRCPT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @port_match(i32 %43, i32 %48, i32 %52, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %156

65:                                               ; preds = %38
  %66 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %67 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %72 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %77 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ntohs(i32 %78)
  %80 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %81 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @XT_TCP_INV_DSTPT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @port_match(i32 %70, i32 %75, i32 %79, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %156

92:                                               ; preds = %65
  %93 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %94 = load i32, i32* @XT_TCP_INV_FLAGS, align 4
  %95 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %96 = bitcast %struct.tcphdr* %95 to i8*
  %97 = getelementptr inbounds i8, i8* %96, i64 13
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %101 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %100, i32 0, i32 1
  %102 = load i8, i8* %101, align 4
  %103 = zext i8 %102 to i32
  %104 = and i32 %99, %103
  %105 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %106 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %105, i32 0, i32 2
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %104, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @NF_INVF(%struct.xt_tcp* %93, i32 %94, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %156

114:                                              ; preds = %92
  %115 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %116 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %114
  %120 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %121 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %124, 12
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %128 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  store i32 0, i32* %3, align 4
  br label %156

129:                                              ; preds = %119
  %130 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %131 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %135 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %138 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %139, 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 %141, 12
  %143 = trunc i64 %142 to i32
  %144 = load %struct.xt_tcp*, %struct.xt_tcp** %8, align 8
  %145 = getelementptr inbounds %struct.xt_tcp, %struct.xt_tcp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @XT_TCP_INV_OPTION, align 4
  %148 = and i32 %146, %147
  %149 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %150 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %149, i32 0, i32 1
  %151 = call i32 @tcp_find_option(i64 %132, %struct.sk_buff* %133, i32 %136, i32 %143, i32 %148, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %156

154:                                              ; preds = %129
  br label %155

155:                                              ; preds = %154, %114
  store i32 1, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %153, %126, %113, %91, %64, %34, %25
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @port_match(i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @NF_INVF(%struct.xt_tcp*, i32, i32) #1

declare dso_local i32 @tcp_find_option(i64, %struct.sk_buff*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
