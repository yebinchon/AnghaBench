; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.ipv6_opt_hdr = type { i32 }

@TCA_CSUM_UPDATE_FLAG_ICMP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_TCP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_UDP = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_UDPLITE = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_SCTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @tcf_csum_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_ipv6(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.ipv6_opt_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_network_offset(%struct.sk_buff* %13)
  store i32 %14, i32* %11, align 4
  store i32 8, i32* %8, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %11, align 4
  %18 = add i32 %16, %17
  %19 = call i64 @pskb_may_pull(%struct.sk_buff* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %186

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %23)
  store %struct.ipv6hdr* %24, %struct.ipv6hdr** %6, align 8
  %25 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %26 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %30 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %175, %22
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %173 [
    i32 130, label %34
    i32 128, label %35
    i32 129, label %35
    i32 131, label %35
    i32 136, label %89
    i32 134, label %106
    i32 133, label %123
    i32 132, label %140
    i32 135, label %157
  ]

34:                                               ; preds = %32
  br label %185

35:                                               ; preds = %32, %32, %32
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = add i64 %38, 4
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %39, %41
  %43 = trunc i64 %42 to i32
  %44 = call i64 @pskb_may_pull(%struct.sk_buff* %36, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %186

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @skb_network_header(%struct.sk_buff* %48)
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = bitcast i8* %53 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %54, %struct.ipv6_opt_hdr** %7, align 8
  %55 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %56 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %60, %61
  %63 = call i64 @pskb_may_pull(%struct.sk_buff* %57, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %47
  br label %186

66:                                               ; preds = %47
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @skb_network_header(%struct.sk_buff* %67)
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = bitcast i8* %72 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %73, %struct.ipv6_opt_hdr** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 129
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @tcf_csum_ipv6_hopopts(%struct.ipv6_opt_hdr* %77, i32 %78, i32* %10)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %186

82:                                               ; preds = %76, %66
  %83 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %84 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %174

89:                                               ; preds = %32
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_ICMP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = add i64 %98, 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @tcf_csum_ipv6_icmp(%struct.sk_buff* %95, i32 %96, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %186

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %89
  br label %184

106:                                              ; preds = %32
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_TCP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = add i64 %115, 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @tcf_csum_ipv6_tcp(%struct.sk_buff* %112, i32 %113, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  br label %186

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %106
  br label %184

123:                                              ; preds = %32
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_UDP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = add i64 %132, 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @tcf_csum_ipv6_udp(%struct.sk_buff* %129, i32 %130, i32 %134, i32 0)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %128
  br label %186

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %123
  br label %184

140:                                              ; preds = %32
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_UDPLITE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %10, align 4
  %149 = zext i32 %148 to i64
  %150 = add i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @tcf_csum_ipv6_udp(%struct.sk_buff* %146, i32 %147, i32 %151, i32 1)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %145
  br label %186

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %140
  br label %184

157:                                              ; preds = %32
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_SCTP, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %10, align 4
  %166 = zext i32 %165 to i64
  %167 = add i64 %166, 8
  %168 = trunc i64 %167 to i32
  %169 = call i32 @tcf_csum_sctp(%struct.sk_buff* %163, i32 %164, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %162
  br label %186

172:                                              ; preds = %162, %157
  br label %184

173:                                              ; preds = %32
  br label %185

174:                                              ; preds = %82
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = load i32, i32* %8, align 4
  %178 = add i32 %177, 1
  %179 = load i32, i32* %11, align 4
  %180 = add i32 %178, %179
  %181 = call i64 @pskb_may_pull(%struct.sk_buff* %176, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %32, label %183

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %172, %156, %139, %122, %105
  br label %185

185:                                              ; preds = %184, %173, %34
  store i32 1, i32* %3, align 4
  br label %187

186:                                              ; preds = %171, %154, %137, %120, %103, %81, %65, %46, %21
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %186, %185
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @tcf_csum_ipv6_hopopts(%struct.ipv6_opt_hdr*, i32, i32*) #1

declare dso_local i32 @tcf_csum_ipv6_icmp(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcf_csum_ipv6_tcp(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcf_csum_ipv6_udp(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @tcf_csum_sctp(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
