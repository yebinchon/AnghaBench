; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_topology_change_detection.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_topology_change_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32, i64, i32, i64, i64, i32 }

@BR_KERNEL_STP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"topology change detected, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"propagating\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sending tcn bpdu\00", align 1
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_topology_change_detection(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  %3 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %4 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %5 = call i32 @br_is_root_bridge(%struct.net_bridge* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %7 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BR_KERNEL_STP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @br_info(%struct.net_bridge* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %23 = call i32 @__br_set_topology_change(%struct.net_bridge* %22, i32 1)
  %24 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 6
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %28 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = call i32 @mod_timer(i32* %25, i64 %34)
  br label %53

36:                                               ; preds = %12
  %37 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %38 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %43 = call i32 @br_transmit_tcn(%struct.net_bridge* %42)
  %44 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %45 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %44, i32 0, i32 3
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %48 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @mod_timer(i32* %45, i64 %50)
  br label %52

52:                                               ; preds = %41, %36
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %55 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %11
  ret void
}

declare dso_local i32 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @br_info(%struct.net_bridge*, i8*, i8*) #1

declare dso_local i32 @__br_set_topology_change(%struct.net_bridge*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @br_transmit_tcn(%struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
