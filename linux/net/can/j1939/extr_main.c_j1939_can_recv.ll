; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_main.c_j1939_can_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_main.c_j1939_can_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.j1939_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.j1939_sk_buff_cb = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.can_frame = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@J1939_CAN_HDR = common dso_local global i32 0, align 4
@uint8_t = common dso_local global i32 0, align 4
@J1939_PGN_MAX = common dso_local global i32 0, align 4
@J1939_TP = common dso_local global i32 0, align 4
@J1939_NO_ADDR = common dso_local global i64 0, align 8
@J1939_ECU_LOCAL_SRC = common dso_local global i32 0, align 4
@J1939_ECU_LOCAL_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*)* @j1939_can_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_can_recv(%struct.sk_buff* %0, i8* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.j1939_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.j1939_sk_buff_cb*, align 8
  %8 = alloca %struct.j1939_sk_buff_cb*, align 8
  %9 = alloca %struct.can_frame*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.j1939_priv*
  store %struct.j1939_priv* %11, %struct.j1939_priv** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %178

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @can_skb_set_owner(%struct.sk_buff* %19, i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.can_frame*
  store %struct.can_frame* %28, %struct.can_frame** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* @J1939_CAN_HDR, align 4
  %31 = call i32 @skb_pull(%struct.sk_buff* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* @uint8_t, align 4
  %34 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %35 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @min_t(i32 %33, i32 %36, i32 8)
  %38 = call i32 @skb_trim(%struct.sk_buff* %32, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %39)
  store %struct.j1939_sk_buff_cb* %40, %struct.j1939_sk_buff_cb** %7, align 8
  %41 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %42 = call i32 @memset(%struct.j1939_sk_buff_cb* %41, i32 0, i32 40)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %43)
  store %struct.j1939_sk_buff_cb* %44, %struct.j1939_sk_buff_cb** %8, align 8
  %45 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %8, align 8
  %46 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %49 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %51 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 26
  %54 = and i32 %53, 7
  %55 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %56 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %58 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %61 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %64 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 8
  %67 = load i32, i32* @J1939_PGN_MAX, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %70 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @J1939_TP, align 4
  %73 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %74 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %77 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @j1939_pgn_is_pdu1(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %18
  %83 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %84 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %89 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i64 %87, i64* %90, align 8
  %91 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %92 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 261888
  store i32 %95, i32* %93, align 4
  br label %101

96:                                               ; preds = %18
  %97 = load i64, i64* @J1939_NO_ADDR, align 8
  %98 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %99 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %82
  %102 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %103 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %102, i32 0, i32 0
  %104 = call i32 @read_lock_bh(i32* %103)
  %105 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %106 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = call i64 @j1939_address_is_unicast(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %101
  %113 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %114 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %117 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %112
  %126 = load i32, i32* @J1939_ECU_LOCAL_SRC, align 4
  %127 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %128 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %112, %101
  %132 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %133 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @j1939_address_is_unicast(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %131
  %139 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %140 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %143 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %138
  %151 = load i32, i32* @J1939_ECU_LOCAL_DST, align 4
  %152 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %153 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %138, %131
  %157 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %158 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %157, i32 0, i32 0
  %159 = call i32 @read_unlock_bh(i32* %158)
  %160 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = call i32 @j1939_ac_recv(%struct.j1939_priv* %160, %struct.sk_buff* %161)
  %163 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = call i64 @j1939_tp_recv(%struct.j1939_priv* %163, %struct.sk_buff* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %175

168:                                              ; preds = %156
  %169 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = call i32 @j1939_simple_recv(%struct.j1939_priv* %169, %struct.sk_buff* %170)
  %172 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = call i32 @j1939_sk_recv(%struct.j1939_priv* %172, %struct.sk_buff* %173)
  br label %175

175:                                              ; preds = %168, %167
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = call i32 @kfree_skb(%struct.sk_buff* %176)
  br label %178

178:                                              ; preds = %175, %17
  ret void
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @can_skb_set_owner(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.j1939_sk_buff_cb*, i32, i32) #1

declare dso_local i64 @j1939_pgn_is_pdu1(i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @j1939_address_is_unicast(i64) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @j1939_ac_recv(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i64 @j1939_tp_recv(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i32 @j1939_simple_recv(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i32 @j1939_sk_recv(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
