; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_stp.c_ebt_stp_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_stp.c_ebt_stp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_stp_info* }
%struct.ebt_stp_info = type { i32, i64 }
%struct.stp_header = type { i64 }
%struct.stp_config_pdu = type { i64 }

@__const.ebt_stp_mt.header = private unnamed_addr constant [6 x i32] [i32 66, i32 66, i32 3, i32 0, i32 0, i32 0], align 16
@EBT_STP_TYPE = common dso_local global i32 0, align 4
@BPDU_TYPE_CONFIG = common dso_local global i64 0, align 8
@EBT_STP_CONFIG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_stp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_stp_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ebt_stp_info*, align 8
  %7 = alloca %struct.stp_header*, align 8
  %8 = alloca %struct.stp_header, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca %struct.stp_config_pdu*, align 8
  %11 = alloca %struct.stp_config_pdu, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 0
  %14 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %13, align 8
  store %struct.ebt_stp_info* %14, %struct.ebt_stp_info** %6, align 8
  %15 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x i32]* @__const.ebt_stp_mt.header to i8*), i64 24, i1 false)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.stp_header* @skb_header_pointer(%struct.sk_buff* %16, i32 0, i32 8, %struct.stp_header* %8)
  store %struct.stp_header* %17, %struct.stp_header** %7, align 8
  %18 = load %struct.stp_header*, %struct.stp_header** %7, align 8
  %19 = icmp eq %struct.stp_header* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

21:                                               ; preds = %2
  %22 = load %struct.stp_header*, %struct.stp_header** %7, align 8
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %24 = call i64 @memcmp(%struct.stp_header* %22, i32* %23, i32 24)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %75

27:                                               ; preds = %21
  %28 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %29 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EBT_STP_TYPE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %36 = load i32, i32* @EBT_STP_TYPE, align 4
  %37 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %38 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.stp_header*, %struct.stp_header** %7, align 8
  %41 = getelementptr inbounds %struct.stp_header, %struct.stp_header* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @NF_INVF(%struct.ebt_stp_info* %35, i32 %36, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %75

48:                                               ; preds = %34, %27
  %49 = load %struct.stp_header*, %struct.stp_header** %7, align 8
  %50 = getelementptr inbounds %struct.stp_header, %struct.stp_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BPDU_TYPE_CONFIG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %56 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EBT_STP_CONFIG_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = bitcast %struct.stp_config_pdu* %11 to %struct.stp_header*
  %64 = call %struct.stp_header* @skb_header_pointer(%struct.sk_buff* %62, i32 8, i32 8, %struct.stp_header* %63)
  %65 = bitcast %struct.stp_header* %64 to %struct.stp_config_pdu*
  store %struct.stp_config_pdu* %65, %struct.stp_config_pdu** %10, align 8
  %66 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %10, align 8
  %67 = icmp eq %struct.stp_config_pdu* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %75

69:                                               ; preds = %61
  %70 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %71 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %10, align 8
  %72 = bitcast %struct.stp_config_pdu* %71 to %struct.stp_header*
  %73 = call i32 @ebt_filter_config(%struct.ebt_stp_info* %70, %struct.stp_header* %72)
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %54, %48
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %69, %68, %47, %26, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.stp_header* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.stp_header*) #2

declare dso_local i64 @memcmp(%struct.stp_header*, i32*, i32) #2

declare dso_local i64 @NF_INVF(%struct.ebt_stp_info*, i32, i32) #2

declare dso_local i32 @ebt_filter_config(%struct.ebt_stp_info*, %struct.stp_header*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
