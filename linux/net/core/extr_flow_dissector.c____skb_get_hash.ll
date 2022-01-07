; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c____skb_get_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c____skb_get_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_keys = type { i32 }

@FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.flow_keys*, i32*)* @___skb_get_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @___skb_get_hash(%struct.sk_buff* %0, %struct.flow_keys* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.flow_keys*, align 8
  %6 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.flow_keys* %1, %struct.flow_keys** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %9 = load i32, i32* @FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL, align 4
  %10 = call i32 @skb_flow_dissect_flow_keys(%struct.sk_buff* %7, %struct.flow_keys* %8, i32 %9)
  %11 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @__flow_hash_from_keys(%struct.flow_keys* %11, i32* %12)
  ret i32 %13
}

declare dso_local i32 @skb_flow_dissect_flow_keys(%struct.sk_buff*, %struct.flow_keys*, i32) #1

declare dso_local i32 @__flow_hash_from_keys(%struct.flow_keys*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
