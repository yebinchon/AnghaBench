; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v2.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_set_info_target_v2* }
%struct.xt_set_info_target_v2 = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@add_opt = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@del_opt = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@IPSET_NO_TIMEOUT = common dso_local global i64 0, align 8
@IPSET_MAX_TIMEOUT = common dso_local global i64 0, align 8
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @set_target_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_v2(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_set_info_target_v2*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %6 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %6, i32 0, i32 0
  %8 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %7, align 8
  store %struct.xt_set_info_target_v2* %8, %struct.xt_set_info_target_v2** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %10 = call i32 @xt_family(%struct.xt_action_param* %9)
  %11 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %12 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %16 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %20 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %23 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @add_opt, i32 0, i32 0, i32 0), align 8
  %26 = call i32 @ADT_OPT(i64 %25, i32 %10, i32 %14, i32 %18, i32 %21, i32 %24, i32 0, i32 0, i32 0, i32 0)
  %27 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %28 = call i32 @xt_family(%struct.xt_action_param* %27)
  %29 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %30 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %34 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @UINT_MAX, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @del_opt, i32 0, i32 0, i32 0), align 8
  %39 = call i32 @ADT_OPT(i64 %38, i32 %28, i32 %32, i32 %36, i32 0, i32 %37, i32 0, i32 0, i32 0, i32 0)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @add_opt, i32 0, i32 0, i32 0), align 8
  %41 = load i64, i64* @IPSET_NO_TIMEOUT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %2
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @add_opt, i32 0, i32 0, i32 0), align 8
  %45 = load i64, i64* @IPSET_MAX_TIMEOUT, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @IPSET_MAX_TIMEOUT, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @add_opt, i32 0, i32 0, i32 0), align 8
  br label %49

49:                                               ; preds = %47, %43, %2
  %50 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %51 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPSET_INVALID_ID, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %58 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %63 = call i32 @ip_set_add(i64 %60, %struct.sk_buff* %61, %struct.xt_action_param* %62, %struct.TYPE_12__* @add_opt)
  br label %64

64:                                               ; preds = %56, %49
  %65 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %66 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IPSET_INVALID_ID, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.xt_set_info_target_v2*, %struct.xt_set_info_target_v2** %5, align 8
  %73 = getelementptr inbounds %struct.xt_set_info_target_v2, %struct.xt_set_info_target_v2* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %78 = call i32 @ip_set_del(i64 %75, %struct.sk_buff* %76, %struct.xt_action_param* %77, %struct.TYPE_12__* @del_opt)
  br label %79

79:                                               ; preds = %71, %64
  %80 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %80
}

declare dso_local i32 @ADT_OPT(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @ip_set_add(i64, %struct.sk_buff*, %struct.xt_action_param*, %struct.TYPE_12__*) #1

declare dso_local i32 @ip_set_del(i64, %struct.sk_buff*, %struct.xt_action_param*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
