; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_identify_lost_members.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_identify_lost_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_peer = type { i32, i32, i64, i32, %struct.tipc_mon_domain* }
%struct.tipc_mon_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_peer*, %struct.tipc_mon_domain*, i32)* @mon_identify_lost_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_identify_lost_members(%struct.tipc_peer* %0, %struct.tipc_mon_domain* %1, i32 %2) #0 {
  %4 = alloca %struct.tipc_peer*, align 8
  %5 = alloca %struct.tipc_mon_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_peer*, align 8
  %8 = alloca %struct.tipc_mon_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tipc_peer* %0, %struct.tipc_peer** %4, align 8
  store %struct.tipc_mon_domain* %1, %struct.tipc_mon_domain** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  store %struct.tipc_peer* %11, %struct.tipc_peer** %7, align 8
  %12 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %13 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %12, i32 0, i32 4
  %14 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %13, align 8
  store %struct.tipc_mon_domain* %14, %struct.tipc_mon_domain** %8, align 8
  %15 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %16 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %66, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %18
  %23 = load %struct.tipc_peer*, %struct.tipc_peer** %7, align 8
  %24 = call %struct.tipc_peer* @peer_nxt(%struct.tipc_peer* %23)
  store %struct.tipc_peer* %24, %struct.tipc_peer** %7, align 8
  %25 = load %struct.tipc_peer*, %struct.tipc_peer** %7, align 8
  %26 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %31 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @map_get(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %22
  br label %66

37:                                               ; preds = %29
  %38 = load %struct.tipc_peer*, %struct.tipc_peer** %7, align 8
  %39 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %66

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %43
  %51 = load %struct.tipc_peer*, %struct.tipc_peer** %7, align 8
  %52 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %66

53:                                               ; preds = %46
  %54 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %8, align 8
  %55 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @map_get(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load %struct.tipc_peer*, %struct.tipc_peer** %7, align 8
  %62 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %50, %42, %36
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %18

69:                                               ; preds = %18
  ret void
}

declare dso_local %struct.tipc_peer* @peer_nxt(%struct.tipc_peer*) #1

declare dso_local i32 @map_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
