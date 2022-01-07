; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_pppoatm.c_pppoatm_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_pppoatm.c_pppoatm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.pppoatm_vcc = type { i32, i32, i32, %struct.atm_vcc* }
%struct.atm_vcc = type { i64 (%struct.atm_vcc*, %struct.sk_buff*)*, i32, i32 }
%struct.TYPE_2__ = type { %struct.atm_vcc* }

@.str = private unnamed_addr constant [22 x i8] c"(skb=0x%p, vcc=0x%p)\0A\00", align 1
@SC_COMP_PROT = common dso_local global i32 0, align 4
@BLOCKED = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@DROP_PACKET = common dso_local global i32 0, align 4
@LLC_LEN = common dso_local global i32 0, align 4
@pppllc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Trying to send without setting encaps!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"atm_skb(%p)->vcc(%p)->dev(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppp_channel*, %struct.sk_buff*)* @pppoatm_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoatm_send(%struct.ppp_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppp_channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pppoatm_vcc*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ppp_channel* %0, %struct.ppp_channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ppp_channel*, %struct.ppp_channel** %4, align 8
  %11 = call %struct.pppoatm_vcc* @chan_to_pvcc(%struct.ppp_channel* %10)
  store %struct.pppoatm_vcc* %11, %struct.pppoatm_vcc** %6, align 8
  %12 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %13 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %12, i32 0, i32 3
  %14 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.atm_vcc* %14, %struct.atm_vcc** %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %20 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %19, i32 0, i32 3
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %20, align 8
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %18, %struct.atm_vcc* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %32 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SC_COMP_PROT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @skb_pull(%struct.sk_buff* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %30, %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %43, align 8
  store %struct.atm_vcc* %44, %struct.atm_vcc** %7, align 8
  %45 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %46 = call i32 @sk_atm(%struct.atm_vcc* %45)
  %47 = call i32 @bh_lock_sock(i32 %46)
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %49 = call i32 @sk_atm(%struct.atm_vcc* %48)
  %50 = call i64 @sock_owned_by_user(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load i32, i32* @BLOCKED, align 4
  %54 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %55 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %54, i32 0, i32 2
  %56 = call i32 @test_and_set_bit(i32 %53, i32* %55)
  br label %190

57:                                               ; preds = %40
  %58 = load i32, i32* @ATM_VF_RELEASED, align 4
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %60 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %59, i32 0, i32 2
  %61 = call i64 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ATM_VF_CLOSE, align 4
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %66 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %65, i32 0, i32 2
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ATM_VF_READY, align 4
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %72 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %71, i32 0, i32 2
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %69, %63, %57
  %76 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %77 = call i32 @sk_atm(%struct.atm_vcc* %76)
  %78 = call i32 @bh_unlock_sock(i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  %81 = load i32, i32* @DROP_PACKET, align 4
  store i32 %81, i32* %3, align 4
  br label %216

82:                                               ; preds = %69
  %83 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %84 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %152 [
    i32 129, label %86
    i32 128, label %136
    i32 130, label %145
  ]

86:                                               ; preds = %82
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i64 @skb_headroom(%struct.sk_buff* %87)
  %89 = load i32, i32* @LLC_LEN, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %86
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = load i32, i32* @LLC_LEN, align 4
  %95 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %93, i32 %94)
  store %struct.sk_buff* %95, %struct.sk_buff** %9, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pppoatm_may_send(%struct.pppoatm_vcc* %99, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = call i32 @kfree_skb(%struct.sk_buff* %106)
  br label %190

108:                                              ; preds = %98, %92
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call i32 @consume_skb(%struct.sk_buff* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %111, %struct.sk_buff** %5, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = icmp eq %struct.sk_buff* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %116 = call i32 @sk_atm(%struct.atm_vcc* %115)
  %117 = call i32 @bh_unlock_sock(i32 %116)
  %118 = load i32, i32* @DROP_PACKET, align 4
  store i32 %118, i32* %3, align 4
  br label %216

119:                                              ; preds = %108
  br label %129

120:                                              ; preds = %86
  %121 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @pppoatm_may_send(%struct.pppoatm_vcc* %121, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %190

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %119
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load i32, i32* @LLC_LEN, align 4
  %132 = call i32 @skb_push(%struct.sk_buff* %130, i32 %131)
  %133 = load i32, i32* @pppllc, align 4
  %134 = load i32, i32* @LLC_LEN, align 4
  %135 = call i32 @memcpy(i32 %132, i32 %133, i32 %134)
  br label %152

136:                                              ; preds = %82
  %137 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @pppoatm_may_send(%struct.pppoatm_vcc* %137, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  br label %190

144:                                              ; preds = %136
  br label %152

145:                                              ; preds = %82
  %146 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %147 = call i32 @sk_atm(%struct.atm_vcc* %146)
  %148 = call i32 @bh_unlock_sock(i32 %147)
  %149 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = call i32 @kfree_skb(%struct.sk_buff* %150)
  store i32 1, i32* %3, align 4
  br label %216

152:                                              ; preds = %82, %144, %129
  %153 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %155 = call i32 @atm_account_tx(%struct.atm_vcc* %153, %struct.sk_buff* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = call %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff* %157)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load %struct.atm_vcc*, %struct.atm_vcc** %159, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = call %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff* %161)
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load %struct.atm_vcc*, %struct.atm_vcc** %163, align 8
  %165 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %156, %struct.atm_vcc* %160, i32 %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = call %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff* %168)
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load %struct.atm_vcc*, %struct.atm_vcc** %170, align 8
  %172 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %171, i32 0, i32 0
  %173 = load i64 (%struct.atm_vcc*, %struct.sk_buff*)*, i64 (%struct.atm_vcc*, %struct.sk_buff*)** %172, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = call %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff* %174)
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load %struct.atm_vcc*, %struct.atm_vcc** %176, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %179 = call i64 %173(%struct.atm_vcc* %177, %struct.sk_buff* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %152
  %182 = load i32, i32* @DROP_PACKET, align 4
  br label %184

183:                                              ; preds = %152
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 1, %183 ]
  store i32 %185, i32* %8, align 4
  %186 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %187 = call i32 @sk_atm(%struct.atm_vcc* %186)
  %188 = call i32 @bh_unlock_sock(i32 %187)
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %3, align 4
  br label %216

190:                                              ; preds = %143, %127, %105, %52
  %191 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %192 = call i32 @sk_atm(%struct.atm_vcc* %191)
  %193 = call i32 @bh_unlock_sock(i32 %192)
  %194 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %195 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @SC_COMP_PROT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %190
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = call i64 @skb_headroom(%struct.sk_buff* %201)
  %203 = icmp sgt i64 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 -1
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %204
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = call i32 @skb_push(%struct.sk_buff* %213, i32 1)
  br label %215

215:                                              ; preds = %212, %204, %200, %190
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %184, %145, %114, %75
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.pppoatm_vcc* @chan_to_pvcc(%struct.ppp_channel*) #1

declare dso_local %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @bh_lock_sock(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i64 @sock_owned_by_user(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bh_unlock_sock(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @pppoatm_may_send(%struct.pppoatm_vcc*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @atm_account_tx(%struct.atm_vcc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
