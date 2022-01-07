; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to start userspace STP (%d)\0A\00", align 1
@BR_MIN_FORWARD_DELAY = common dso_local global i64 0, align 8
@BR_MAX_FORWARD_DELAY = common dso_local global i64 0, align 8
@BR_USER_STP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"userspace STP started\0A\00", align 1
@BR_KERNEL_STP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"using kernel STP\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*)* @br_stp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_stp_start(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  %3 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %4 = load i32, i32* @ENOENT, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %7 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @dev_net(%struct.TYPE_2__* %8)
  %10 = call i64 @net_eq(i32 %9, i32* @init_net)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %14 = call i32 @br_stp_call_user(%struct.net_bridge* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @br_err(%struct.net_bridge* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %18, %15
  %28 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %29 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BR_MIN_FORWARD_DELAY, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %38 = load i64, i64* @BR_MIN_FORWARD_DELAY, align 8
  %39 = call i32 @__br_set_forward_delay(%struct.net_bridge* %37, i64 %38)
  br label %51

40:                                               ; preds = %27
  %41 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %42 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BR_MAX_FORWARD_DELAY, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %48 = load i64, i64* @BR_MAX_FORWARD_DELAY, align 8
  %49 = call i32 @__br_set_forward_delay(%struct.net_bridge* %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @BR_USER_STP, align 4
  %56 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %57 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %59 = call i32 @br_debug(%struct.net_bridge* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %86

60:                                               ; preds = %51
  %61 = load i32, i32* @BR_KERNEL_STP, align 4
  %62 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %63 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %65 = call i32 @br_debug(%struct.net_bridge* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %67 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IFF_UP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %60
  %75 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %76 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %75, i32 0, i32 3
  %77 = load i64, i64* @jiffies, align 8
  %78 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %79 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = call i32 @mod_timer(i32* %76, i64 %81)
  br label %83

83:                                               ; preds = %74, %60
  %84 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %85 = call i32 @br_port_state_selection(%struct.net_bridge* %84)
  br label %86

86:                                               ; preds = %83, %54
  %87 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %88 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %87, i32 0, i32 1
  %89 = call i32 @spin_unlock_bh(i32* %88)
  ret void
}

declare dso_local i64 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.TYPE_2__*) #1

declare dso_local i32 @br_stp_call_user(%struct.net_bridge*, i8*) #1

declare dso_local i32 @br_err(%struct.net_bridge*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__br_set_forward_delay(%struct.net_bridge*, i64) #1

declare dso_local i32 @br_debug(%struct.net_bridge*, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @br_port_state_selection(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
