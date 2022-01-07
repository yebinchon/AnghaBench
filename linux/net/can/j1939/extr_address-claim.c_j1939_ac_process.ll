; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_address-claim.c_j1939_ac_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_address-claim.c_j1939_ac_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.j1939_sk_buff_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.j1939_ecu = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"rx address claim with wrong dlc %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rx address claim without name\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"rx address claim with broadcast sa\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_priv*, %struct.sk_buff*)* @j1939_ac_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_ac_process(%struct.j1939_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.j1939_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.j1939_sk_buff_cb*, align 8
  %6 = alloca %struct.j1939_ecu*, align 8
  %7 = alloca %struct.j1939_ecu*, align 8
  %8 = alloca i32, align 4
  store %struct.j1939_priv* %0, %struct.j1939_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %9)
  store %struct.j1939_sk_buff_cb* %10, %struct.j1939_sk_buff_cb** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %17 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @netdev_notice(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %142

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @j1939_skb_to_name(%struct.sk_buff* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %28 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %34 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @netdev_notice(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %142

37:                                               ; preds = %23
  %38 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %39 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @j1939_address_is_valid(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %46 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @netdev_notice(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %142

49:                                               ; preds = %37
  %50 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %51 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %50, i32 0, i32 0
  %52 = call i32 @write_lock_bh(i32* %51)
  %53 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.j1939_ecu* @j1939_ecu_get_by_name_locked(%struct.j1939_priv* %53, i32 %54)
  store %struct.j1939_ecu* %55, %struct.j1939_ecu** %6, align 8
  %56 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %57 = icmp ne %struct.j1939_ecu* %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %49
  %59 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %60 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @j1939_address_is_unicast(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call %struct.j1939_ecu* @j1939_ecu_create_locked(%struct.j1939_priv* %66, i32 %67)
  store %struct.j1939_ecu* %68, %struct.j1939_ecu** %6, align 8
  br label %69

69:                                               ; preds = %65, %58, %49
  %70 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %71 = call i64 @IS_ERR_OR_NULL(%struct.j1939_ecu* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %138

74:                                               ; preds = %69
  %75 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %76 = call i32 @j1939_ecu_timer_cancel(%struct.j1939_ecu* %75)
  %77 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %78 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @j1939_address_is_idle(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %85 = call i32 @j1939_ecu_unmap_locked(%struct.j1939_ecu* %84)
  br label %135

86:                                               ; preds = %74
  %87 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %88 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %91 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %89, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %97 = call i32 @j1939_ecu_unmap_locked(%struct.j1939_ecu* %96)
  br label %98

98:                                               ; preds = %95, %86
  %99 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %100 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %104 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %106 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %107 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call %struct.j1939_ecu* @j1939_ecu_get_by_addr_locked(%struct.j1939_priv* %105, i64 %109)
  store %struct.j1939_ecu* %110, %struct.j1939_ecu** %7, align 8
  %111 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %112 = icmp ne %struct.j1939_ecu* %111, null
  br i1 %112, label %113, label %132

113:                                              ; preds = %98
  %114 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %115 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %118 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %123 = call i32 @j1939_ecu_unmap_locked(%struct.j1939_ecu* %122)
  %124 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %125 = call i32 @j1939_ecu_put(%struct.j1939_ecu* %124)
  br label %135

126:                                              ; preds = %113
  %127 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %128 = call i32 @j1939_ecu_unmap_locked(%struct.j1939_ecu* %127)
  %129 = load %struct.j1939_ecu*, %struct.j1939_ecu** %7, align 8
  %130 = call i32 @j1939_ecu_put(%struct.j1939_ecu* %129)
  br label %131

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %98
  %133 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %134 = call i32 @j1939_ecu_timer_start(%struct.j1939_ecu* %133)
  br label %135

135:                                              ; preds = %132, %121, %83
  %136 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %137 = call i32 @j1939_ecu_put(%struct.j1939_ecu* %136)
  br label %138

138:                                              ; preds = %135, %73
  %139 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %140 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %139, i32 0, i32 0
  %141 = call i32 @write_unlock_bh(i32* %140)
  br label %142

142:                                              ; preds = %138, %44, %32, %15
  ret void
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @netdev_notice(i32, i8*, ...) #1

declare dso_local i32 @j1939_skb_to_name(%struct.sk_buff*) #1

declare dso_local i32 @j1939_address_is_valid(i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_get_by_name_locked(%struct.j1939_priv*, i32) #1

declare dso_local i64 @j1939_address_is_unicast(i64) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_create_locked(%struct.j1939_priv*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.j1939_ecu*) #1

declare dso_local i32 @j1939_ecu_timer_cancel(%struct.j1939_ecu*) #1

declare dso_local i64 @j1939_address_is_idle(i64) #1

declare dso_local i32 @j1939_ecu_unmap_locked(%struct.j1939_ecu*) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_get_by_addr_locked(%struct.j1939_priv*, i64) #1

declare dso_local i32 @j1939_ecu_put(%struct.j1939_ecu*) #1

declare dso_local i32 @j1939_ecu_timer_start(%struct.j1939_ecu*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
