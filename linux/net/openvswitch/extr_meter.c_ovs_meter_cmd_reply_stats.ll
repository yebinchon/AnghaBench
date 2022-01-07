; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_reply_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_cmd_reply_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dp_meter = type { i64, %struct.dp_meter_band*, i32, i32 }
%struct.dp_meter_band = type { i32 }
%struct.nlattr = type { i32 }

@OVS_METER_ATTR_ID = common dso_local global i32 0, align 4
@OVS_METER_ATTR_STATS = common dso_local global i32 0, align 4
@OVS_METER_ATTR_USED = common dso_local global i32 0, align 4
@OVS_METER_ATTR_PAD = common dso_local global i32 0, align 4
@OVS_METER_ATTR_BANDS = common dso_local global i32 0, align 4
@OVS_BAND_ATTR_UNSPEC = common dso_local global i32 0, align 4
@OVS_BAND_ATTR_STATS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.dp_meter*)* @ovs_meter_cmd_reply_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_meter_cmd_reply_stats(%struct.sk_buff* %0, i32 %1, %struct.dp_meter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dp_meter*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.dp_meter_band*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dp_meter* %2, %struct.dp_meter** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @OVS_METER_ATTR_ID, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @nla_put_u32(%struct.sk_buff* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %83

18:                                               ; preds = %3
  %19 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %20 = icmp ne %struct.dp_meter* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %86

22:                                               ; preds = %18
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load i32, i32* @OVS_METER_ATTR_STATS, align 4
  %25 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %26 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %25, i32 0, i32 3
  %27 = call i64 @nla_put(%struct.sk_buff* %23, i32 %24, i32 4, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @OVS_METER_ATTR_USED, align 4
  %32 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %33 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @OVS_METER_ATTR_PAD, align 4
  %36 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %30, i32 %31, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %22
  br label %83

39:                                               ; preds = %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @OVS_METER_ATTR_BANDS, align 4
  %42 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %40, i32 %41)
  store %struct.nlattr* %42, %struct.nlattr** %8, align 8
  %43 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %83

46:                                               ; preds = %39
  %47 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %48 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %47, i32 0, i32 1
  %49 = load %struct.dp_meter_band*, %struct.dp_meter_band** %48, align 8
  store %struct.dp_meter_band* %49, %struct.dp_meter_band** %9, align 8
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %74, %46
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.dp_meter*, %struct.dp_meter** %7, align 8
  %53 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* @OVS_BAND_ATTR_UNSPEC, align 4
  %59 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %57, i32 %58)
  store %struct.nlattr* %59, %struct.nlattr** %11, align 8
  %60 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32, i32* @OVS_BAND_ATTR_STATS, align 4
  %65 = load %struct.dp_meter_band*, %struct.dp_meter_band** %9, align 8
  %66 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %65, i32 0, i32 0
  %67 = call i64 @nla_put(%struct.sk_buff* %63, i32 %64, i32 4, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %56
  br label %83

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %73 = call i32 @nla_nest_end(%struct.sk_buff* %71, %struct.nlattr* %72)
  br label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %10, align 8
  %77 = load %struct.dp_meter_band*, %struct.dp_meter_band** %9, align 8
  %78 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %77, i32 1
  store %struct.dp_meter_band* %78, %struct.dp_meter_band** %9, align 8
  br label %50

79:                                               ; preds = %50
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %82 = call i32 @nla_nest_end(%struct.sk_buff* %80, %struct.nlattr* %81)
  store i32 0, i32* %4, align 4
  br label %86

83:                                               ; preds = %69, %45, %38, %17
  %84 = load i32, i32* @EMSGSIZE, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %79, %21
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
