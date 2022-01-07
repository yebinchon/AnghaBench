; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_match_v3.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_match_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_set_info_match_v3* }
%struct.xt_set_info_match_v3 = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@opt = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@IPSET_COUNTER_NONE = common dso_local global i64 0, align 8
@IPSET_FLAG_MATCH_COUNTERS = common dso_local global i32 0, align 4
@IPSET_INV_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @set_match_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_match_v3(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_set_info_match_v3*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %6 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %6, i32 0, i32 0
  %8 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %7, align 8
  store %struct.xt_set_info_match_v3* %8, %struct.xt_set_info_match_v3** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %10 = call i32 @xt_family(%struct.xt_action_param* %9)
  %11 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %12 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %16 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %20 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UINT_MAX, align 4
  %23 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %24 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %28 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %32 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %36 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @opt, i32 0, i32 0), align 4
  %40 = call i32 @ADT_OPT(i32 %39, i32 %10, i32 %14, i32 %18, i32 %21, i32 %22, i32 %26, i32 %30, i64 %34, i64 %38)
  %41 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %42 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPSET_COUNTER_NONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %2
  %48 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %49 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPSET_COUNTER_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47, %2
  %55 = load i32, i32* @IPSET_FLAG_MATCH_COUNTERS, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @opt, i32 0, i32 0), align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @opt, i32 0, i32 0), align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %60 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %65 = load %struct.xt_set_info_match_v3*, %struct.xt_set_info_match_v3** %5, align 8
  %66 = getelementptr inbounds %struct.xt_set_info_match_v3, %struct.xt_set_info_match_v3* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IPSET_INV_MATCH, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @match_set(i32 %62, %struct.sk_buff* %63, %struct.xt_action_param* %64, %struct.TYPE_10__* @opt, i32 %70)
  ret i32 %71
}

declare dso_local i32 @ADT_OPT(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @match_set(i32, %struct.sk_buff*, %struct.xt_action_param*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
