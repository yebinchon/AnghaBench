; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_802_3.c_ebt_802_3_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_802_3.c_ebt_802_3_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_802_3_info* }
%struct.ebt_802_3_info = type { i32, i64, i64 }
%struct.ebt_802_3_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@IS_UI = common dso_local global i32 0, align 4
@EBT_802_3_SAP = common dso_local global i32 0, align 4
@EBT_802_3_TYPE = common dso_local global i32 0, align 4
@CHECK_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_802_3_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_802_3_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ebt_802_3_info*, align 8
  %7 = alloca %struct.ebt_802_3_hdr*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %10, align 8
  store %struct.ebt_802_3_info* %11, %struct.ebt_802_3_info** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.ebt_802_3_hdr* @ebt_802_3_hdr(%struct.sk_buff* %12)
  store %struct.ebt_802_3_hdr* %13, %struct.ebt_802_3_hdr** %7, align 8
  %14 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %15 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IS_UI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %24 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i64 [ %27, %22 ], [ %33, %28 ]
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %37 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EBT_802_3_SAP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %34
  %43 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %44 = load i32, i32* @EBT_802_3_SAP, align 4
  %45 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %46 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %47, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @NF_INVF(%struct.ebt_802_3_info* %43, i32 %44, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %113

58:                                               ; preds = %42
  %59 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %60 = load i32, i32* @EBT_802_3_SAP, align 4
  %61 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %62 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %63, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @NF_INVF(%struct.ebt_802_3_info* %59, i32 %60, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %113

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %34
  %76 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %77 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @EBT_802_3_TYPE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %75
  %83 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %84 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHECK_TYPE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %92 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CHECK_TYPE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %90, %82
  store i32 0, i32* %3, align 4
  br label %113

99:                                               ; preds = %90
  %100 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %101 = load i32, i32* @EBT_802_3_TYPE, align 4
  %102 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %103 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @NF_INVF(%struct.ebt_802_3_info* %100, i32 %101, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %113

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %75
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %110, %98, %73, %57
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.ebt_802_3_hdr* @ebt_802_3_hdr(%struct.sk_buff*) #1

declare dso_local i64 @NF_INVF(%struct.ebt_802_3_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
