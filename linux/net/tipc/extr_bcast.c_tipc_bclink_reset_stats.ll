; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bclink_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bclink_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_link = type { i32 }

@ENOPROTOOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bclink_reset_stats(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_link*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = call %struct.tipc_link* @tipc_bc_sndlink(%struct.net* %5)
  store %struct.tipc_link* %6, %struct.tipc_link** %4, align 8
  %7 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %8 = icmp ne %struct.tipc_link* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOPROTOOPT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = call i32 @tipc_bcast_lock(%struct.net* %13)
  %15 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %16 = call i32 @tipc_link_reset_stats(%struct.tipc_link* %15)
  %17 = load %struct.net*, %struct.net** %3, align 8
  %18 = call i32 @tipc_bcast_unlock(%struct.net* %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.tipc_link* @tipc_bc_sndlink(%struct.net*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i32 @tipc_link_reset_stats(%struct.tipc_link*) #1

declare dso_local i32 @tipc_bcast_unlock(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
