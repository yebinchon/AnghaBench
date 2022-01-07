; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_address-claim.c_j1939_ac_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_address-claim.c_j1939_ac_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.j1939_sk_buff_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i8*, i64, i64 }
%struct.j1939_ecu = type { i64 }

@J1939_PGN_ADDRESS_CLAIMED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"tx drop: invalid sa for name 0x%016llx\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"tx drop: invalid da for name 0x%016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @j1939_ac_fixup(%struct.j1939_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.j1939_sk_buff_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.j1939_ecu*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %10)
  store %struct.j1939_sk_buff_cb* %11, %struct.j1939_sk_buff_cb** %6, align 8
  %12 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %13 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @J1939_PGN_ADDRESS_CLAIMED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @j1939_ac_verify_outgoing(%struct.j1939_priv* %19, %struct.sk_buff* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %124

26:                                               ; preds = %18
  %27 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %28 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %29 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.j1939_ecu* @j1939_ecu_get_by_name(%struct.j1939_priv* %27, i64 %31)
  store %struct.j1939_ecu* %32, %struct.j1939_ecu** %9, align 8
  %33 = load %struct.j1939_ecu*, %struct.j1939_ecu** %9, align 8
  %34 = icmp ne %struct.j1939_ecu* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %124

38:                                               ; preds = %26
  %39 = load %struct.j1939_ecu*, %struct.j1939_ecu** %9, align 8
  %40 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %43 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.j1939_ecu*, %struct.j1939_ecu** %9, align 8
  %49 = call i32 @j1939_ecu_unmap(%struct.j1939_ecu* %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.j1939_ecu*, %struct.j1939_ecu** %9, align 8
  %52 = call i32 @j1939_ecu_put(%struct.j1939_ecu* %51)
  br label %91

53:                                               ; preds = %2
  %54 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %55 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %53
  %60 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %61 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %62 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @j1939_name_to_addr(%struct.j1939_priv* %60, i64 %64)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @j1939_address_is_unicast(i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %59
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @j1939_ac_msg_is_request(%struct.sk_buff* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %75 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %78 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @netdev_notice(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @EADDRNOTAVAIL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %124

84:                                               ; preds = %69, %59
  %85 = load i8*, i8** %8, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %88 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %53
  br label %91

91:                                               ; preds = %90, %50
  %92 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %93 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %91
  %98 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %99 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %100 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @j1939_name_to_addr(%struct.j1939_priv* %98, i64 %102)
  store i8* %103, i8** %8, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @j1939_address_is_unicast(i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %97
  %108 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %109 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %112 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @netdev_notice(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @EADDRNOTAVAIL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %124

118:                                              ; preds = %97
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %6, align 8
  %121 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  br label %123

123:                                              ; preds = %118, %91
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %107, %73, %35, %24
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @j1939_ac_verify_outgoing(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_get_by_name(%struct.j1939_priv*, i64) #1

declare dso_local i32 @j1939_ecu_unmap(%struct.j1939_ecu*) #1

declare dso_local i32 @j1939_ecu_put(%struct.j1939_ecu*) #1

declare dso_local i8* @j1939_name_to_addr(%struct.j1939_priv*, i64) #1

declare dso_local i32 @j1939_address_is_unicast(i8*) #1

declare dso_local i32 @j1939_ac_msg_is_request(%struct.sk_buff*) #1

declare dso_local i32 @netdev_notice(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
