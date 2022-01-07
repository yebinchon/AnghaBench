; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_peer_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_peer_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_monitor = type { i32 }
%struct.tipc_peer = type { i32, i32, i32, i32, i64, %struct.tipc_mon_domain* }
%struct.tipc_mon_domain = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Mon: unknown link %x/%u DOWN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_mon_peer_down(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_monitor*, align 8
  %8 = alloca %struct.tipc_peer*, align 8
  %9 = alloca %struct.tipc_peer*, align 8
  %10 = alloca %struct.tipc_peer*, align 8
  %11 = alloca %struct.tipc_mon_domain*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.tipc_monitor* @tipc_monitor(%struct.net* %13, i32 %14)
  store %struct.tipc_monitor* %15, %struct.tipc_monitor** %7, align 8
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.tipc_peer* @get_self(%struct.net* %16, i32 %17)
  store %struct.tipc_peer* %18, %struct.tipc_peer** %8, align 8
  %19 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %20 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %19, i32 0, i32 0
  %21 = call i32 @write_lock_bh(i32* %20)
  %22 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.tipc_peer* @get_peer(%struct.tipc_monitor* %22, i32 %23)
  store %struct.tipc_peer* %24, %struct.tipc_peer** %9, align 8
  %25 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %26 = icmp ne %struct.tipc_peer* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %74

31:                                               ; preds = %3
  %32 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %33 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %36 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %38 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %37, i32 0, i32 5
  %39 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %38, align 8
  store %struct.tipc_mon_domain* %39, %struct.tipc_mon_domain** %11, align 8
  %40 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %41 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %40, i32 0, i32 5
  store %struct.tipc_mon_domain* null, %struct.tipc_mon_domain** %41, align 8
  %42 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %43 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %48 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @mon_identify_lost_members(%struct.tipc_peer* %47, %struct.tipc_mon_domain* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %31
  %52 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %11, align 8
  %53 = call i32 @kfree(%struct.tipc_mon_domain* %52)
  %54 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %55 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %57 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %59 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %61 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %63 = call %struct.tipc_peer* @peer_head(%struct.tipc_peer* %62)
  store %struct.tipc_peer* %63, %struct.tipc_peer** %10, align 8
  %64 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %65 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %66 = icmp eq %struct.tipc_peer* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %69 = call i32 @mon_update_local_domain(%struct.tipc_monitor* %68)
  br label %70

70:                                               ; preds = %67, %51
  %71 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %72 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %73 = call i32 @mon_assign_roles(%struct.tipc_monitor* %71, %struct.tipc_peer* %72)
  br label %74

74:                                               ; preds = %70, %27
  %75 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %76 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %75, i32 0, i32 0
  %77 = call i32 @write_unlock_bh(i32* %76)
  ret void
}

declare dso_local %struct.tipc_monitor* @tipc_monitor(%struct.net*, i32) #1

declare dso_local %struct.tipc_peer* @get_self(%struct.net*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.tipc_peer* @get_peer(%struct.tipc_monitor*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mon_identify_lost_members(%struct.tipc_peer*, %struct.tipc_mon_domain*, i32) #1

declare dso_local i32 @kfree(%struct.tipc_mon_domain*) #1

declare dso_local %struct.tipc_peer* @peer_head(%struct.tipc_peer*) #1

declare dso_local i32 @mon_update_local_domain(%struct.tipc_monitor*) #1

declare dso_local i32 @mon_assign_roles(%struct.tipc_monitor*, %struct.tipc_peer*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
