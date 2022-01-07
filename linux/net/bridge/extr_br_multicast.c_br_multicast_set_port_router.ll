; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_set_port_router.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_set_port_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, %struct.net_bridge* }
%struct.net_bridge = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_multicast_set_port_router(%struct.net_bridge_port* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 2
  %10 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  store %struct.net_bridge* %10, %struct.net_bridge** %5, align 8
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %15 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %18 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %24 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 129
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = call i32 @mod_timer(i32* %29, i64 %34)
  br label %36

36:                                               ; preds = %27, %22
  store i32 0, i32* %7, align 4
  br label %69

37:                                               ; preds = %2
  %38 = load i64, i64* %4, align 8
  switch i64 %38, label %67 [
    i64 131, label %39
    i64 128, label %47
    i64 130, label %52
    i64 129, label %61
  ]

39:                                               ; preds = %37
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %41 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %40, i32 0, i32 0
  store i64 131, i64* %41, align 8
  %42 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %43 = call i32 @__del_port_router(%struct.net_bridge_port* %42)
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %45 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %44, i32 0, i32 1
  %46 = call i32 @del_timer(i32* %45)
  br label %68

47:                                               ; preds = %37
  %48 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %49 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %48, i32 0, i32 0
  store i64 128, i64* %49, align 8
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %51 = call i32 @__del_port_router(%struct.net_bridge_port* %50)
  br label %68

52:                                               ; preds = %37
  %53 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %54 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %53, i32 0, i32 0
  store i64 130, i64* %54, align 8
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %56 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %55, i32 0, i32 1
  %57 = call i32 @del_timer(i32* %56)
  %58 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %59 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %60 = call i32 @br_multicast_add_router(%struct.net_bridge* %58, %struct.net_bridge_port* %59)
  br label %68

61:                                               ; preds = %37
  %62 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %63 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %62, i32 0, i32 0
  store i64 129, i64* %63, align 8
  %64 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %65 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %66 = call i32 @br_multicast_mark_router(%struct.net_bridge* %64, %struct.net_bridge_port* %65)
  br label %68

67:                                               ; preds = %37
  br label %69

68:                                               ; preds = %61, %52, %47, %39
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %67, %36
  %70 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %71 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @__del_port_router(%struct.net_bridge_port*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @br_multicast_add_router(%struct.net_bridge*, %struct.net_bridge_port*) #1

declare dso_local i32 @br_multicast_mark_router(%struct.net_bridge*, %struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
