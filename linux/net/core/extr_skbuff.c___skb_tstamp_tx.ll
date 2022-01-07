; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___skb_tstamp_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___skb_tstamp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.sock = type { i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@SOF_TIMESTAMPING_OPT_TX_SWHW = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_OPT_TSONLY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SKBTX_ANY_TSTAMP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOF_TIMESTAMPING_OPT_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__skb_tstamp_tx(%struct.sk_buff* %0, %struct.skb_shared_hwtstamps* %1, %struct.sock* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.skb_shared_hwtstamps*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.skb_shared_hwtstamps* %1, %struct.skb_shared_hwtstamps** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %100

15:                                               ; preds = %4
  %16 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %6, align 8
  %17 = icmp ne %struct.skb_shared_hwtstamps* %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SOF_TIMESTAMPING_OPT_TX_SWHW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %100

34:                                               ; preds = %25, %18, %15
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SOF_TIMESTAMPING_OPT_TSONLY, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @skb_may_tx_timestamp(%struct.sock* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %100

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %9, align 8
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %9, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %100

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SKBTX_ANY_TSTAMP, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %62, %59
  %82 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %6, align 8
  %83 = icmp ne %struct.skb_shared_hwtstamps* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %85)
  %87 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %6, align 8
  %88 = bitcast %struct.skb_shared_hwtstamps* %86 to i8*
  %89 = bitcast %struct.skb_shared_hwtstamps* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 4, i1 false)
  br label %94

90:                                               ; preds = %81
  %91 = call i32 (...) @ktime_get_real()
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = load %struct.sock*, %struct.sock** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @__skb_complete_tx_timestamp(%struct.sk_buff* %95, %struct.sock* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %58, %44, %33, %14
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_may_tx_timestamp(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @__skb_complete_tx_timestamp(%struct.sk_buff*, %struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
