; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_get_broadcast_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_get_broadcast_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bc_base = type { i64, i64, i64, i64 }

@BCLINK_MODE_BCAST = common dso_local global i32 0, align 4
@BCLINK_MODE_RCAST = common dso_local global i32 0, align 4
@BCLINK_MODE_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bcast_get_broadcast_mode(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_bc_base*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = call %struct.tipc_bc_base* @tipc_bc_base(%struct.net* %5)
  store %struct.tipc_bc_base* %6, %struct.tipc_bc_base** %4, align 8
  %7 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %4, align 8
  %8 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @BCLINK_MODE_BCAST, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @BCLINK_MODE_RCAST, align 4
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %4, align 8
  %22 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %4, align 8
  %27 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @BCLINK_MODE_SEL, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %25, %20
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30, %18, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.tipc_bc_base* @tipc_bc_base(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
