; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_create_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_create_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nexthop = type { i32 }
%struct.nh_info = type { %struct.fib_nh }
%struct.fib_nh = type { i32, i32, i32 }
%struct.nh_config = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib_config = type { i32, i32, i32, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nexthop*, %struct.nh_info*, %struct.nh_config*, %struct.netlink_ext_ack*)* @nh_create_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nh_create_ipv4(%struct.net* %0, %struct.nexthop* %1, %struct.nh_info* %2, %struct.nh_config* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nexthop*, align 8
  %8 = alloca %struct.nh_info*, align 8
  %9 = alloca %struct.nh_config*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.fib_nh*, align 8
  %12 = alloca %struct.fib_config, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nexthop* %1, %struct.nexthop** %7, align 8
  store %struct.nh_info* %2, %struct.nh_info** %8, align 8
  store %struct.nh_config* %3, %struct.nh_config** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %15 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %16 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %15, i32 0, i32 0
  store %struct.fib_nh* %16, %struct.fib_nh** %11, align 8
  %17 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %12, i32 0, i32 0
  %18 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %19 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %12, i32 0, i32 1
  %22 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %23 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %12, i32 0, i32 2
  %26 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %27 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %12, i32 0, i32 3
  %30 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %31 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @AF_INET, align 4
  br label %38

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %29, align 4
  %40 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %12, i32 0, i32 4
  %41 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %42 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %40, align 4
  %45 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %12, i32 0, i32 5
  %46 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %47 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %45, align 4
  %49 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %50 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @l3mdev_fib_table(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.net*, %struct.net** %6, align 8
  %54 = load %struct.fib_nh*, %struct.fib_nh** %11, align 8
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %56 = call i32 @fib_nh_init(%struct.net* %53, %struct.fib_nh* %54, %struct.fib_config* %12, i32 1, %struct.netlink_ext_ack* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %38
  %60 = load %struct.net*, %struct.net** %6, align 8
  %61 = load %struct.fib_nh*, %struct.fib_nh** %11, align 8
  %62 = call i32 @fib_nh_release(%struct.net* %60, %struct.fib_nh* %61)
  br label %89

63:                                               ; preds = %38
  %64 = load %struct.net*, %struct.net** %6, align 8
  %65 = load %struct.fib_nh*, %struct.fib_nh** %11, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %68 = call i32 @fib_check_nh(%struct.net* %64, %struct.fib_nh* %65, i32 %66, i32 0, %struct.netlink_ext_ack* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %63
  %72 = load %struct.fib_nh*, %struct.fib_nh** %11, align 8
  %73 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %76 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.net*, %struct.net** %6, align 8
  %78 = load %struct.fib_nh*, %struct.fib_nh** %11, align 8
  %79 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %78, i32 0, i32 1
  %80 = load %struct.fib_nh*, %struct.fib_nh** %11, align 8
  %81 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fib_info_update_nhc_saddr(%struct.net* %77, i32* %79, i32 %82)
  br label %88

84:                                               ; preds = %63
  %85 = load %struct.net*, %struct.net** %6, align 8
  %86 = load %struct.fib_nh*, %struct.fib_nh** %11, align 8
  %87 = call i32 @fib_nh_release(%struct.net* %85, %struct.fib_nh* %86)
  br label %88

88:                                               ; preds = %84, %71
  br label %89

89:                                               ; preds = %88, %59
  %90 = load i32, i32* %14, align 4
  ret i32 %90
}

declare dso_local i32 @l3mdev_fib_table(i32) #1

declare dso_local i32 @fib_nh_init(%struct.net*, %struct.fib_nh*, %struct.fib_config*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fib_nh_release(%struct.net*, %struct.fib_nh*) #1

declare dso_local i32 @fib_check_nh(%struct.net*, %struct.fib_nh*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fib_info_update_nhc_saddr(%struct.net*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
