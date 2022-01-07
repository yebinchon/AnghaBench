; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_devgroup.c_devgroup_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_devgroup.c_devgroup_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_devgroup_info* }
%struct.xt_devgroup_info = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@XT_DEVGROUP_MATCH_SRC = common dso_local global i32 0, align 4
@XT_DEVGROUP_INVERT_SRC = common dso_local global i32 0, align 4
@XT_DEVGROUP_MATCH_DST = common dso_local global i32 0, align 4
@XT_DEVGROUP_INVERT_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @devgroup_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devgroup_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_devgroup_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %8, align 8
  store %struct.xt_devgroup_info* %9, %struct.xt_devgroup_info** %6, align 8
  %10 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  %11 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XT_DEVGROUP_MATCH_SRC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  %18 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %21 = call %struct.TYPE_4__* @xt_in(%struct.xt_action_param* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %19, %23
  %25 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  %26 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  %33 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XT_DEVGROUP_INVERT_SRC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = xor i32 %31, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %78

43:                                               ; preds = %16, %2
  %44 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  %45 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @XT_DEVGROUP_MATCH_DST, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %43
  %51 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  %52 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %55 = call %struct.TYPE_3__* @xt_out(%struct.xt_action_param* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %53, %57
  %59 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  %60 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  %67 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @XT_DEVGROUP_INVERT_DST, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = xor i32 %65, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %78

77:                                               ; preds = %50, %43
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %42
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_4__* @xt_in(%struct.xt_action_param*) #1

declare dso_local %struct.TYPE_3__* @xt_out(%struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
