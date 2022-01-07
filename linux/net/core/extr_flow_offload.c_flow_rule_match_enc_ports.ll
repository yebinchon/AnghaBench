; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_rule_match_enc_ports.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_rule_match_enc_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_rule = type { i32 }
%struct.flow_match_ports = type { i32 }

@FLOW_DISSECTOR_KEY_ENC_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flow_rule_match_enc_ports(%struct.flow_rule* %0, %struct.flow_match_ports* %1) #0 {
  %3 = alloca %struct.flow_rule*, align 8
  %4 = alloca %struct.flow_match_ports*, align 8
  store %struct.flow_rule* %0, %struct.flow_rule** %3, align 8
  store %struct.flow_match_ports* %1, %struct.flow_match_ports** %4, align 8
  %5 = load %struct.flow_rule*, %struct.flow_rule** %3, align 8
  %6 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 4
  %7 = load %struct.flow_match_ports*, %struct.flow_match_ports** %4, align 8
  %8 = call i32 @FLOW_DISSECTOR_MATCH(%struct.flow_rule* %5, i32 %6, %struct.flow_match_ports* %7)
  ret void
}

declare dso_local i32 @FLOW_DISSECTOR_MATCH(%struct.flow_rule*, i32, %struct.flow_match_ports*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
