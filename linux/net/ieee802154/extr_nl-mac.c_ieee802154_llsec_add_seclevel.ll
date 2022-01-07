; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_llsec_add_seclevel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_llsec_add_seclevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llsec_add_seclevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_llsec_add_seclevel(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %6 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %7 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NLM_F_CREATE, align 4
  %12 = load i32, i32* @NLM_F_EXCL, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @NLM_F_CREATE, align 4
  %16 = load i32, i32* @NLM_F_EXCL, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = load i32, i32* @llsec_add_seclevel, align 4
  %26 = call i32 @ieee802154_nl_llsec_change(%struct.sk_buff* %23, %struct.genl_info* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ieee802154_nl_llsec_change(%struct.sk_buff*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
