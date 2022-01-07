; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bc_link_set_queue_limits.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bc_link_set_queue_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_link = type { i32 }

@ENOPROTOOPT = common dso_local global i32 0, align 4
@BCLINK_WIN_MIN = common dso_local global i32 0, align 4
@TIPC_MAX_LINK_WIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32)* @tipc_bc_link_set_queue_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_bc_link_set_queue_limits(%struct.net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_link*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = call %struct.tipc_link* @tipc_bc_sndlink(%struct.net* %7)
  store %struct.tipc_link* %8, %struct.tipc_link** %6, align 8
  %9 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %10 = icmp ne %struct.tipc_link* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOPROTOOPT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BCLINK_WIN_MIN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @BCLINK_WIN_MIN, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TIPC_MAX_LINK_WIN, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.net*, %struct.net** %4, align 8
  %29 = call i32 @tipc_bcast_lock(%struct.net* %28)
  %30 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @tipc_link_set_queue_limits(%struct.tipc_link* %30, i32 %31)
  %33 = load %struct.net*, %struct.net** %4, align 8
  %34 = call i32 @tipc_bcast_unlock(%struct.net* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %24, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.tipc_link* @tipc_bc_sndlink(%struct.net*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i32 @tipc_link_set_queue_limits(%struct.tipc_link*, i32) #1

declare dso_local i32 @tipc_bcast_unlock(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
