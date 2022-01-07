; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_osf.c_xt_osf_match_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_osf.c_xt_osf_match_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32 }

@nf_osf_fingers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @xt_osf_match_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_osf_match_packet(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %7 = call i32 @xt_family(%struct.xt_action_param* %6)
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %9 = call i32 @xt_hooknum(%struct.xt_action_param* %8)
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %11 = call i32 @xt_in(%struct.xt_action_param* %10)
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %13 = call i32 @xt_out(%struct.xt_action_param* %12)
  %14 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %15 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %18 = call i32 @xt_net(%struct.xt_action_param* %17)
  %19 = load i32, i32* @nf_osf_fingers, align 4
  %20 = call i32 @nf_osf_match(%struct.sk_buff* %5, i32 %7, i32 %9, i32 %11, i32 %13, i32 %16, i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @nf_osf_match(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local i32 @xt_in(%struct.xt_action_param*) #1

declare dso_local i32 @xt_out(%struct.xt_action_param*) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
