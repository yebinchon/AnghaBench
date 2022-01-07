; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bc_link_set_broadcast_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_bc_link_set_broadcast_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bc_base = type { i32, i32, i32 }

@ENOPROTOOPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32)* @tipc_bc_link_set_broadcast_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_bc_link_set_broadcast_ratio(%struct.net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_bc_base*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = call %struct.tipc_bc_base* @tipc_bc_base(%struct.net* %7)
  store %struct.tipc_bc_base* %8, %struct.tipc_bc_base** %6, align 8
  %9 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %10 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %15 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @ENOPROTOOPT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 100
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.tipc_bc_base*, %struct.tipc_bc_base** %6, align 8
  %33 = getelementptr inbounds %struct.tipc_bc_base, %struct.tipc_bc_base* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.net*, %struct.net** %4, align 8
  %35 = call i32 @tipc_bcast_lock(%struct.net* %34)
  %36 = load %struct.net*, %struct.net** %4, align 8
  %37 = call i32 @tipc_bcbase_calc_bc_threshold(%struct.net* %36)
  %38 = load %struct.net*, %struct.net** %4, align 8
  %39 = call i32 @tipc_bcast_unlock(%struct.net* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %27, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.tipc_bc_base* @tipc_bc_base(%struct.net*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i32 @tipc_bcbase_calc_bc_threshold(%struct.net*) #1

declare dso_local i32 @tipc_bcast_unlock(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
