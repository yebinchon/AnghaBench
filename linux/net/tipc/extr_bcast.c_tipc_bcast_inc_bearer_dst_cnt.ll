; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_inc_bearer_dst_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_inc_bearer_dst_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bc_base = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bcast_inc_bearer_dst_cnt(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_bc_base*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = call %struct.tipc_bc_base* @tipc_bc_base(%struct.net* %6)
  store %struct.tipc_bc_base* %7, %struct.tipc_bc_base** %5, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = call i32 @tipc_bcast_lock(%struct.net* %8)
  %10 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %5, align 8
  %11 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.net*, %struct.net** %3, align 8
  %19 = call i32 @tipc_bcbase_select_primary(%struct.net* %18)
  %20 = load %struct.net*, %struct.net** %3, align 8
  %21 = call i32 @tipc_bcast_unlock(%struct.net* %20)
  ret void
}

declare dso_local %struct.tipc_bc_base* @tipc_bc_base(%struct.net*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i32 @tipc_bcbase_select_primary(%struct.net*) #1

declare dso_local i32 @tipc_bcast_unlock(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
