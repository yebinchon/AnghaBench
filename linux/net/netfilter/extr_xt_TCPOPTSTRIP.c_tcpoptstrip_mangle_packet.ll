; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPOPTSTRIP.c_tcpoptstrip_mangle_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPOPTSTRIP.c_tcpoptstrip_mangle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i64, %struct.xt_tcpoptstrip_target_info* }
%struct.xt_tcpoptstrip_target_info = type { i32 }
%struct.tcphdr = type { i32, i32 }

@XT_CONTINUE = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*, i32)* @tcpoptstrip_mangle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpoptstrip_mangle_packet(%struct.sk_buff* %0, %struct.xt_action_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_action_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xt_tcpoptstrip_target_info*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.tcphdr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.xt_action_param*, %struct.xt_action_param** %6, align 8
  %19 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %18, i32 0, i32 1
  %20 = load %struct.xt_tcpoptstrip_target_info*, %struct.xt_tcpoptstrip_target_info** %19, align 8
  store %struct.xt_tcpoptstrip_target_info* %20, %struct.xt_tcpoptstrip_target_info** %8, align 8
  %21 = load %struct.xt_action_param*, %struct.xt_action_param** %6, align 8
  %22 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %26, i32* %4, align 4
  br label %140

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %28, i32 %29, i32 8, %struct.tcphdr* %10)
  store %struct.tcphdr* %30, %struct.tcphdr** %9, align 8
  %31 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %32 = icmp ne %struct.tcphdr* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @NF_DROP, align 4
  store i32 %34, i32* %4, align 4
  br label %140

35:                                               ; preds = %27
  %36 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %37 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 4
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 8
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @NF_DROP, align 4
  store i32 %44, i32* %4, align 4
  br label %140

45:                                               ; preds = %35
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %17, align 4
  %49 = add i32 %47, %48
  %50 = call i64 @skb_ensure_writable(%struct.sk_buff* %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @NF_DROP, align 4
  store i32 %53, i32* %4, align 4
  br label %140

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i64 @skb_network_header(%struct.sk_buff* %55)
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = inttoptr i64 %59 to %struct.tcphdr*
  store %struct.tcphdr* %60, %struct.tcphdr** %9, align 8
  %61 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %62 = bitcast %struct.tcphdr* %61 to i32*
  store i32* %62, i32** %16, align 8
  store i32 8, i32* %12, align 4
  br label %63

63:                                               ; preds = %134, %54
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %17, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %138

68:                                               ; preds = %63
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @optlen(i32* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %72, %73
  %75 = load i32, i32* %17, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %138

78:                                               ; preds = %68
  %79 = load %struct.xt_tcpoptstrip_target_info*, %struct.xt_tcpoptstrip_target_info** %8, align 8
  %80 = getelementptr inbounds %struct.xt_tcpoptstrip_target_info, %struct.xt_tcpoptstrip_target_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tcpoptstrip_test_bit(i32 %81, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %134

90:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %123, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %91
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* @TCPOPT_NOP, align 4
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = add i32 %104, %105
  %107 = urem i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %95
  %110 = load i32, i32* %15, align 4
  %111 = shl i32 %110, 8
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %14, align 4
  %113 = shl i32 %112, 8
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %109, %95
  %115 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 1
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @htons(i32 %118)
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @htons(i32 %120)
  %122 = call i32 @inet_proto_csum_replace2(i32* %116, %struct.sk_buff* %117, i32 %119, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %13, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %91

126:                                              ; preds = %91
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %12, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* @TCPOPT_NOP, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @memset(i32* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %126, %89
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %12, align 4
  br label %63

138:                                              ; preds = %77, %63
  %139 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %52, %43, %33, %25
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @optlen(i32*, i32) #1

declare dso_local i32 @tcpoptstrip_test_bit(i32, i32) #1

declare dso_local i32 @inet_proto_csum_replace2(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
