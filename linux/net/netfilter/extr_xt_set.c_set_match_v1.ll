; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_match_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_match_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_set_info_match_v1* }
%struct.xt_set_info_match_v1 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@opt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@IPSET_RETURN_NOMATCH = common dso_local global i32 0, align 4
@IPSET_FLAG_RETURN_NOMATCH = common dso_local global i32 0, align 4
@IPSET_INV_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @set_match_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_match_v1(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_set_info_match_v1*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %6 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %6, i32 0, i32 0
  %8 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %7, align 8
  store %struct.xt_set_info_match_v1* %8, %struct.xt_set_info_match_v1** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %10 = call i32 @xt_family(%struct.xt_action_param* %9)
  %11 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %5, align 8
  %12 = getelementptr inbounds %struct.xt_set_info_match_v1, %struct.xt_set_info_match_v1* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %5, align 8
  %16 = getelementptr inbounds %struct.xt_set_info_match_v1, %struct.xt_set_info_match_v1* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UINT_MAX, align 4
  %20 = load i64, i64* bitcast (%struct.TYPE_6__* @opt to i64*), align 4
  %21 = call i32 @ADT_OPT(i64 %20, i32 %10, i32 %14, i32 %18, i32 0, i32 %19, i32 0, i32 0, i32 0, i32 0)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @opt, i32 0, i32 0), align 4
  %23 = load i32, i32* @IPSET_RETURN_NOMATCH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @IPSET_FLAG_RETURN_NOMATCH, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @opt, i32 0, i32 1), align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @opt, i32 0, i32 1), align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %5, align 8
  %32 = getelementptr inbounds %struct.xt_set_info_match_v1, %struct.xt_set_info_match_v1* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %37 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %5, align 8
  %38 = getelementptr inbounds %struct.xt_set_info_match_v1, %struct.xt_set_info_match_v1* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IPSET_INV_MATCH, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @match_set(i32 %34, %struct.sk_buff* %35, %struct.xt_action_param* %36, %struct.TYPE_6__* @opt, i32 %42)
  ret i32 %43
}

declare dso_local i32 @ADT_OPT(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @match_set(i32, %struct.sk_buff*, %struct.xt_action_param*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
