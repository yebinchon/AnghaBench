; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @smc_pnet_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_pnet_flush(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %6 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %7 = call %struct.net* @genl_info_net(%struct.genl_info* %6)
  store %struct.net* %7, %struct.net** %5, align 8
  %8 = load %struct.net*, %struct.net** %5, align 8
  %9 = call i32 @smc_pnet_remove_by_pnetid(%struct.net* %8, i32* null)
  ret i32 0
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @smc_pnet_remove_by_pnetid(%struct.net*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
