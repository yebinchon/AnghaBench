; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v0.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_set_info_target_v0* }
%struct.xt_set_info_target_v0 = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@add_opt = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@del_opt = common dso_local global i32 0, align 4
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @set_target_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_v0(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_set_info_target_v0*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %6 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %6, i32 0, i32 0
  %8 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %7, align 8
  store %struct.xt_set_info_target_v0* %8, %struct.xt_set_info_target_v0** %5, align 8
  %9 = load i32, i32* @add_opt, align 4
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %11 = call i32 @xt_family(%struct.xt_action_param* %10)
  %12 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %13 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %19 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @UINT_MAX, align 4
  %25 = call i32 @ADT_OPT(i32 %9, i32 %11, i32 %17, i32 %23, i32 0, i32 %24, i32 0, i32 0, i32 0, i32 0)
  %26 = load i32, i32* @del_opt, align 4
  %27 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %28 = call i32 @xt_family(%struct.xt_action_param* %27)
  %29 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %30 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %36 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @UINT_MAX, align 4
  %42 = call i32 @ADT_OPT(i32 %26, i32 %28, i32 %34, i32 %40, i32 0, i32 %41, i32 0, i32 0, i32 0, i32 0)
  %43 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %44 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IPSET_INVALID_ID, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %2
  %50 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %51 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %56 = call i32 @ip_set_add(i64 %53, %struct.sk_buff* %54, %struct.xt_action_param* %55, i32* @add_opt)
  br label %57

57:                                               ; preds = %49, %2
  %58 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %59 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IPSET_INVALID_ID, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %66 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %71 = call i32 @ip_set_del(i64 %68, %struct.sk_buff* %69, %struct.xt_action_param* %70, i32* @del_opt)
  br label %72

72:                                               ; preds = %64, %57
  %73 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %73
}

declare dso_local i32 @ADT_OPT(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @ip_set_add(i64, %struct.sk_buff*, %struct.xt_action_param*, i32*) #1

declare dso_local i32 @ip_set_del(i64, %struct.sk_buff*, %struct.xt_action_param*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
