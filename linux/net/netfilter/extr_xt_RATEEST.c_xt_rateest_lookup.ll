; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_RATEEST.c_xt_rateest_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_RATEEST.c_xt_rateest_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_rateest = type { i32 }
%struct.net = type { i32 }
%struct.xt_rateest_net = type { i32 }

@xt_rateest_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xt_rateest* @xt_rateest_lookup(%struct.net* %0, i8* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xt_rateest_net*, align 8
  %6 = alloca %struct.xt_rateest*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* @xt_rateest_id, align 4
  %9 = call %struct.xt_rateest_net* @net_generic(%struct.net* %7, i32 %8)
  store %struct.xt_rateest_net* %9, %struct.xt_rateest_net** %5, align 8
  %10 = load %struct.xt_rateest_net*, %struct.xt_rateest_net** %5, align 8
  %11 = getelementptr inbounds %struct.xt_rateest_net, %struct.xt_rateest_net* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.xt_rateest_net*, %struct.xt_rateest_net** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.xt_rateest* @__xt_rateest_lookup(%struct.xt_rateest_net* %13, i8* %14)
  store %struct.xt_rateest* %15, %struct.xt_rateest** %6, align 8
  %16 = load %struct.xt_rateest_net*, %struct.xt_rateest_net** %5, align 8
  %17 = getelementptr inbounds %struct.xt_rateest_net, %struct.xt_rateest_net* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.xt_rateest*, %struct.xt_rateest** %6, align 8
  ret %struct.xt_rateest* %19
}

declare dso_local %struct.xt_rateest_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xt_rateest* @__xt_rateest_lookup(%struct.xt_rateest_net*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
