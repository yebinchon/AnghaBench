; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_assign_roles.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_assign_roles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_monitor = type { i32, %struct.tipc_peer* }
%struct.tipc_peer = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_monitor*, %struct.tipc_peer*)* @mon_assign_roles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_assign_roles(%struct.tipc_monitor* %0, %struct.tipc_peer* %1) #0 {
  %3 = alloca %struct.tipc_monitor*, align 8
  %4 = alloca %struct.tipc_peer*, align 8
  %5 = alloca %struct.tipc_peer*, align 8
  %6 = alloca %struct.tipc_peer*, align 8
  %7 = alloca i32, align 4
  store %struct.tipc_monitor* %0, %struct.tipc_monitor** %3, align 8
  store %struct.tipc_peer* %1, %struct.tipc_peer** %4, align 8
  %8 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %9 = call %struct.tipc_peer* @peer_nxt(%struct.tipc_peer* %8)
  store %struct.tipc_peer* %9, %struct.tipc_peer** %5, align 8
  %10 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %10, i32 0, i32 1
  %12 = load %struct.tipc_peer*, %struct.tipc_peer** %11, align 8
  store %struct.tipc_peer* %12, %struct.tipc_peer** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %52, %2
  %14 = load %struct.tipc_peer*, %struct.tipc_peer** %5, align 8
  %15 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %16 = icmp ne %struct.tipc_peer* %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load %struct.tipc_peer*, %struct.tipc_peer** %5, align 8
  %19 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %23 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.tipc_peer*, %struct.tipc_peer** %5, align 8
  %28 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %30 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %31 = icmp eq %struct.tipc_peer* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.tipc_peer*, %struct.tipc_peer** %5, align 8
  %34 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %26
  br label %52

36:                                               ; preds = %17
  %37 = load %struct.tipc_peer*, %struct.tipc_peer** %5, align 8
  %38 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %52

42:                                               ; preds = %36
  %43 = load %struct.tipc_peer*, %struct.tipc_peer** %5, align 8
  %44 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %55

48:                                               ; preds = %42
  %49 = load %struct.tipc_peer*, %struct.tipc_peer** %5, align 8
  store %struct.tipc_peer* %49, %struct.tipc_peer** %4, align 8
  %50 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %51 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %41, %35
  %53 = load %struct.tipc_peer*, %struct.tipc_peer** %5, align 8
  %54 = call %struct.tipc_peer* @peer_nxt(%struct.tipc_peer* %53)
  store %struct.tipc_peer* %54, %struct.tipc_peer** %5, align 8
  br label %13

55:                                               ; preds = %47, %13
  %56 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %57 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  ret void
}

declare dso_local %struct.tipc_peer* @peer_nxt(%struct.tipc_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
