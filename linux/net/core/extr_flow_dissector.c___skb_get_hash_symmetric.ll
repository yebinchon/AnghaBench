; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c___skb_get_hash_symmetric.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c___skb_get_hash_symmetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_keys = type { i32 }

@flow_keys_dissector_symmetric = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL = common dso_local global i32 0, align 4
@hashrnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__skb_get_hash_symmetric(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.flow_keys, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = call i32 (...) @__flow_hash_secret_init()
  %5 = call i32 @memset(%struct.flow_keys* %3, i32 0, i32 4)
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = load i32, i32* @FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL, align 4
  %8 = call i32 @__skb_flow_dissect(i32* null, %struct.sk_buff* %6, i32* @flow_keys_dissector_symmetric, %struct.flow_keys* %3, i32* null, i32 0, i32 0, i32 0, i32 %7)
  %9 = call i32 @__flow_hash_from_keys(%struct.flow_keys* %3, i32* @hashrnd)
  ret i32 %9
}

declare dso_local i32 @__flow_hash_secret_init(...) #1

declare dso_local i32 @memset(%struct.flow_keys*, i32, i32) #1

declare dso_local i32 @__skb_flow_dissect(i32*, %struct.sk_buff*, i32*, %struct.flow_keys*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__flow_hash_from_keys(%struct.flow_keys*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
