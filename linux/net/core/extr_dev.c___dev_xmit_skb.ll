; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@TCQ_F_NOLOCK = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@__QDISC_STATE_DEACTIVATED = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.net_device*, %struct.netdev_queue*)* @__dev_xmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dev_xmit_skb(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.net_device* %2, %struct.netdev_queue* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.netdev_queue* %3, %struct.netdev_queue** %9, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %15 = call i32* @qdisc_lock(%struct.Qdisc* %14)
  store i32* %15, i32** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %18 = call i32 @qdisc_calculate_pkt_len(%struct.sk_buff* %16, %struct.Qdisc* %17)
  %19 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %20 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %91

25:                                               ; preds = %4
  %26 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %25
  %33 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %32
  %38 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %39 = call i64 @qdisc_run_begin(%struct.Qdisc* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  %42 = load i32, i32* @__QDISC_STATE_DEACTIVATED, align 4
  %43 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 3
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @__qdisc_drop(%struct.sk_buff* %49, %struct.sk_buff** %11)
  %51 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %51, i32* %13, align 4
  br label %67

52:                                               ; preds = %41
  %53 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @qdisc_bstats_cpu_update(%struct.Qdisc* %53, %struct.sk_buff* %54)
  %56 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %61 = call i64 @sch_direct_xmit(%struct.sk_buff* %57, %struct.Qdisc* %58, %struct.net_device* %59, %struct.netdev_queue* %60, i32* null, i32 1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %65 = call i32 @__qdisc_run(%struct.Qdisc* %64)
  br label %66

66:                                               ; preds = %63, %52
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %69 = call i32 @qdisc_run_end(%struct.Qdisc* %68)
  br label %81

70:                                               ; preds = %37, %32, %25
  %71 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %72 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %71, i32 0, i32 1
  %73 = load i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)** %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %76 = call i32 %73(%struct.sk_buff* %74, %struct.Qdisc* %75, %struct.sk_buff** %11)
  %77 = load i32, i32* @NET_XMIT_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %13, align 4
  %79 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %80 = call i32 @qdisc_run(%struct.Qdisc* %79)
  br label %81

81:                                               ; preds = %70, %67
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = ptrtoint %struct.sk_buff* %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %88 = call i32 @kfree_skb_list(%struct.sk_buff* %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %202

91:                                               ; preds = %4
  %92 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %93 = call i32 @qdisc_is_running(%struct.Qdisc* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %99 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %98, i32 0, i32 2
  %100 = call i32 @spin_lock(i32* %99)
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @spin_lock(i32* %102)
  %104 = load i32, i32* @__QDISC_STATE_DEACTIVATED, align 4
  %105 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %106 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %105, i32 0, i32 3
  %107 = call i32 @test_bit(i32 %104, i32* %106)
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = call i32 @__qdisc_drop(%struct.sk_buff* %111, %struct.sk_buff** %11)
  %113 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %113, i32* %13, align 4
  br label %182

114:                                              ; preds = %101
  %115 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %116 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %114
  %122 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %123 = call i32 @qdisc_qlen(%struct.Qdisc* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %155, label %125

125:                                              ; preds = %121
  %126 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %127 = call i64 @qdisc_run_begin(%struct.Qdisc* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = call i32 @qdisc_bstats_update(%struct.Qdisc* %130, %struct.sk_buff* %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %135 = load %struct.net_device*, %struct.net_device** %8, align 8
  %136 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = call i64 @sch_direct_xmit(%struct.sk_buff* %133, %struct.Qdisc* %134, %struct.net_device* %135, %struct.netdev_queue* %136, i32* %137, i32 1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %129
  %141 = load i32, i32* %12, align 4
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %146 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %145, i32 0, i32 2
  %147 = call i32 @spin_unlock(i32* %146)
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %144, %140
  %149 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %150 = call i32 @__qdisc_run(%struct.Qdisc* %149)
  br label %151

151:                                              ; preds = %148, %129
  %152 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %153 = call i32 @qdisc_run_end(%struct.Qdisc* %152)
  %154 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %154, i32* %13, align 4
  br label %181

155:                                              ; preds = %125, %121, %114
  %156 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %157 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %156, i32 0, i32 1
  %158 = load i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)** %157, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %161 = call i32 %158(%struct.sk_buff* %159, %struct.Qdisc* %160, %struct.sk_buff** %11)
  %162 = load i32, i32* @NET_XMIT_MASK, align 4
  %163 = and i32 %161, %162
  store i32 %163, i32* %13, align 4
  %164 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %165 = call i64 @qdisc_run_begin(%struct.Qdisc* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %155
  %168 = load i32, i32* %12, align 4
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %173 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %172, i32 0, i32 2
  %174 = call i32 @spin_unlock(i32* %173)
  store i32 0, i32* %12, align 4
  br label %175

175:                                              ; preds = %171, %167
  %176 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %177 = call i32 @__qdisc_run(%struct.Qdisc* %176)
  %178 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %179 = call i32 @qdisc_run_end(%struct.Qdisc* %178)
  br label %180

180:                                              ; preds = %175, %155
  br label %181

181:                                              ; preds = %180, %151
  br label %182

182:                                              ; preds = %181, %110
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @spin_unlock(i32* %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %186 = ptrtoint %struct.sk_buff* %185 to i32
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %191 = call i32 @kfree_skb_list(%struct.sk_buff* %190)
  br label %192

192:                                              ; preds = %189, %182
  %193 = load i32, i32* %12, align 4
  %194 = call i64 @unlikely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %198 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %197, i32 0, i32 2
  %199 = call i32 @spin_unlock(i32* %198)
  br label %200

200:                                              ; preds = %196, %192
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %200, %89
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_calculate_pkt_len(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i64 @qdisc_run_begin(%struct.Qdisc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__qdisc_drop(%struct.sk_buff*, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_bstats_cpu_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i64 @sch_direct_xmit(%struct.sk_buff*, %struct.Qdisc*, %struct.net_device*, %struct.netdev_queue*, i32*, i32) #1

declare dso_local i32 @__qdisc_run(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_run_end(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_run(%struct.Qdisc*) #1

declare dso_local i32 @kfree_skb_list(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_is_running(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qdisc_qlen(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
