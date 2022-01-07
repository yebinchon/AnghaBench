; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.h_nl80211_send_wiphy_reg_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.h_nl80211_send_wiphy_reg_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i32 }

@NL80211_CMD_WIPHY_REG_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulatory_request*)* @nl80211_send_wiphy_reg_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_send_wiphy_reg_change_event(%struct.regulatory_request* %0) #0 {
  %2 = alloca %struct.regulatory_request*, align 8
  store %struct.regulatory_request* %0, %struct.regulatory_request** %2, align 8
  %3 = load i32, i32* @NL80211_CMD_WIPHY_REG_CHANGE, align 4
  %4 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %5 = call i32 @nl80211_common_reg_change_event(i32 %3, %struct.regulatory_request* %4)
  ret void
}

declare dso_local i32 @nl80211_common_reg_change_event(i32, %struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
