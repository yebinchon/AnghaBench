; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_ifdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.arg_netdev_event = type { i32, %struct.net_device* }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fib6_info* }

@RTNH_F_DEAD = common dso_local global i32 0, align 4
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_info*, i8*)* @fib6_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_ifdown(%struct.fib6_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arg_netdev_event*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.arg_netdev_event*
  store %struct.arg_netdev_event* %11, %struct.arg_netdev_event** %6, align 8
  %12 = load %struct.arg_netdev_event*, %struct.arg_netdev_event** %6, align 8
  %13 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.net* @dev_net(%struct.net_device* %15)
  store %struct.net* %16, %struct.net** %8, align 8
  %17 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %18 = load %struct.net*, %struct.net** %8, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.fib6_info*, %struct.fib6_info** %20, align 8
  %22 = icmp eq %struct.fib6_info* %17, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %25 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %124

29:                                               ; preds = %23
  %30 = load %struct.arg_netdev_event*, %struct.arg_netdev_event** %6, align 8
  %31 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %123 [
    i32 128, label %33
    i32 129, label %43
    i32 130, label %95
  ]

33:                                               ; preds = %29
  %34 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %35 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = icmp eq %struct.net_device* %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 -1, i32 0
  store i32 %42, i32* %3, align 4
  br label %124

43:                                               ; preds = %29
  %44 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %45 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %124

49:                                               ; preds = %43
  %50 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %51 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %56 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.net_device*, %struct.net_device** %58, align 8
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = icmp eq %struct.net_device* %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 -1, i32 0
  store i32 %63, i32* %3, align 4
  br label %124

64:                                               ; preds = %49
  %65 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = call i32 @rt6_multipath_uses_dev(%struct.fib6_info* %65, %struct.net_device* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  %70 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %71 = load %struct.net_device*, %struct.net_device** %7, align 8
  %72 = call i32 @rt6_multipath_dead_count(%struct.fib6_info* %70, %struct.net_device* %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %74 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %81 = call i32 @rt6_multipath_flush(%struct.fib6_info* %80)
  store i32 -1, i32* %3, align 4
  br label %124

82:                                               ; preds = %69
  %83 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = load i32, i32* @RTNH_F_DEAD, align 4
  %86 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @rt6_multipath_nh_flags_set(%struct.fib6_info* %83, %struct.net_device* %84, i32 %87)
  %89 = load %struct.net*, %struct.net** %8, align 8
  %90 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %91 = call i32 @fib6_update_sernum(%struct.net* %89, %struct.fib6_info* %90)
  %92 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %93 = call i32 @rt6_multipath_rebalance(%struct.fib6_info* %92)
  br label %94

94:                                               ; preds = %82, %64
  store i32 -2, i32* %3, align 4
  br label %124

95:                                               ; preds = %29
  %96 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %97 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.net_device*, %struct.net_device** %99, align 8
  %101 = load %struct.net_device*, %struct.net_device** %7, align 8
  %102 = icmp ne %struct.net_device* %100, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %95
  %104 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %105 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RTF_LOCAL, align 4
  %108 = load i32, i32* @RTF_ANYCAST, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103, %95
  br label %123

113:                                              ; preds = %103
  %114 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %115 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %116 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 8
  %121 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %122 = call i32 @rt6_multipath_rebalance(%struct.fib6_info* %121)
  br label %123

123:                                              ; preds = %29, %113, %112
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %94, %79, %54, %48, %33, %28
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @rt6_multipath_uses_dev(%struct.fib6_info*, %struct.net_device*) #1

declare dso_local i32 @rt6_multipath_dead_count(%struct.fib6_info*, %struct.net_device*) #1

declare dso_local i32 @rt6_multipath_flush(%struct.fib6_info*) #1

declare dso_local i32 @rt6_multipath_nh_flags_set(%struct.fib6_info*, %struct.net_device*, i32) #1

declare dso_local i32 @fib6_update_sernum(%struct.net*, %struct.fib6_info*) #1

declare dso_local i32 @rt6_multipath_rebalance(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
