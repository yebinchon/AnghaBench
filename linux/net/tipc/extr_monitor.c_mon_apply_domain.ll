; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_apply_domain.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_apply_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_monitor = type { i32 }
%struct.tipc_peer = type { i64, i64, i32, %struct.tipc_mon_domain* }
%struct.tipc_mon_domain = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_monitor*, %struct.tipc_peer*)* @mon_apply_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_apply_domain(%struct.tipc_monitor* %0, %struct.tipc_peer* %1) #0 {
  %3 = alloca %struct.tipc_monitor*, align 8
  %4 = alloca %struct.tipc_peer*, align 8
  %5 = alloca %struct.tipc_mon_domain*, align 8
  %6 = alloca %struct.tipc_peer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tipc_monitor* %0, %struct.tipc_monitor** %3, align 8
  store %struct.tipc_peer* %1, %struct.tipc_peer** %4, align 8
  %9 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %10 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %9, i32 0, i32 3
  %11 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %10, align 8
  store %struct.tipc_mon_domain* %11, %struct.tipc_mon_domain** %5, align 8
  %12 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %13 = icmp ne %struct.tipc_mon_domain* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %16 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  br label %55

20:                                               ; preds = %14
  %21 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %22 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %24 = call %struct.tipc_peer* @peer_nxt(%struct.tipc_peer* %23)
  store %struct.tipc_peer* %24, %struct.tipc_peer** %6, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %52, %20
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %28 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %33 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %41 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %55

45:                                               ; preds = %31
  %46 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %47 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %51 = call %struct.tipc_peer* @peer_nxt(%struct.tipc_peer* %50)
  store %struct.tipc_peer* %51, %struct.tipc_peer** %6, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %25

55:                                               ; preds = %19, %44, %25
  ret void
}

declare dso_local %struct.tipc_peer* @peer_nxt(%struct.tipc_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
