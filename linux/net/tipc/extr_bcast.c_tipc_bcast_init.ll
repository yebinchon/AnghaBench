; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bcast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { %struct.tipc_link*, i32, %struct.tipc_link* }
%struct.tipc_link = type { i32, i32, %struct.tipc_link*, i32 }
%struct.tipc_bc_base = type { i32, i32, %struct.tipc_bc_base*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FB_MTU = common dso_local global i32 0, align 4
@BCLINK_WIN_DEFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bcast_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.tipc_net*, align 8
  %5 = alloca %struct.tipc_bc_base*, align 8
  %6 = alloca %struct.tipc_link*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.tipc_net* @tipc_net(%struct.net* %7)
  store %struct.tipc_net* %8, %struct.tipc_net** %4, align 8
  store %struct.tipc_bc_base* null, %struct.tipc_bc_base** %5, align 8
  store %struct.tipc_link* null, %struct.tipc_link** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tipc_link* @kzalloc(i32 24, i32 %9)
  %11 = bitcast %struct.tipc_link* %10 to %struct.tipc_bc_base*
  store %struct.tipc_bc_base* %11, %struct.tipc_bc_base** %5, align 8
  %12 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %5, align 8
  %13 = icmp ne %struct.tipc_bc_base* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %5, align 8
  %17 = bitcast %struct.tipc_bc_base* %16 to %struct.tipc_link*
  %18 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %19 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %18, i32 0, i32 2
  store %struct.tipc_link* %17, %struct.tipc_link** %19, align 8
  %20 = load %struct.net*, %struct.net** %3, align 8
  %21 = call %struct.tipc_net* @tipc_net(%struct.net* %20)
  %22 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.net*, %struct.net** %3, align 8
  %25 = load i32, i32* @FB_MTU, align 4
  %26 = load i32, i32* @BCLINK_WIN_DEFAULT, align 4
  %27 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %5, align 8
  %28 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %27, i32 0, i32 3
  %29 = call i32 @tipc_link_bc_create(%struct.net* %24, i32 0, i32 0, i32 %25, i32 %26, i32 0, i32* %28, i32* null, i32* null, %struct.tipc_link** %6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %15
  br label %44

32:                                               ; preds = %15
  %33 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %34 = bitcast %struct.tipc_link* %33 to %struct.tipc_bc_base*
  %35 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %5, align 8
  %36 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %35, i32 0, i32 2
  store %struct.tipc_bc_base* %34, %struct.tipc_bc_base** %36, align 8
  %37 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %38 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %39 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %38, i32 0, i32 0
  store %struct.tipc_link* %37, %struct.tipc_link** %39, align 8
  %40 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %5, align 8
  %41 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %40, i32 0, i32 0
  store i32 10, i32* %41, align 8
  %42 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %5, align 8
  %43 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %52

44:                                               ; preds = %31, %14
  %45 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %5, align 8
  %46 = bitcast %struct.tipc_bc_base* %45 to %struct.tipc_link*
  %47 = call i32 @kfree(%struct.tipc_link* %46)
  %48 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %49 = call i32 @kfree(%struct.tipc_link* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %44, %32
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local %struct.tipc_link* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tipc_link_bc_create(%struct.net*, i32, i32, i32, i32, i32, i32*, i32*, i32*, %struct.tipc_link**) #1

declare dso_local i32 @kfree(%struct.tipc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
