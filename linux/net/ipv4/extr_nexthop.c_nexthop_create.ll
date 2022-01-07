; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32, i32, i32, %struct.TYPE_3__, %struct.nexthop*, %struct.net*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nh_config = type { i32, i32, i64, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nh_info = type { i32, i32, i32, %struct.TYPE_3__, %struct.nh_info*, %struct.net*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nexthop* (%struct.net*, %struct.nh_config*, %struct.netlink_ext_ack*)* @nexthop_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nexthop* @nexthop_create(%struct.net* %0, %struct.nh_config* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.nexthop*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nh_config*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nh_info*, align 8
  %9 = alloca %struct.nexthop*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nh_config* %1, %struct.nh_config** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = call %struct.nh_info* (...) @nexthop_alloc()
  %12 = bitcast %struct.nh_info* %11 to %struct.nexthop*
  store %struct.nexthop* %12, %struct.nexthop** %9, align 8
  %13 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %14 = icmp ne %struct.nexthop* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.nh_info* @ERR_PTR(i32 %17)
  %19 = bitcast %struct.nh_info* %18 to %struct.nexthop*
  store %struct.nexthop* %19, %struct.nexthop** %4, align 8
  br label %111

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.nh_info* @kzalloc(i32 40, i32 %21)
  store %struct.nh_info* %22, %struct.nh_info** %8, align 8
  %23 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %24 = icmp ne %struct.nh_info* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %27 = bitcast %struct.nexthop* %26 to %struct.nh_info*
  %28 = call i32 @kfree(%struct.nh_info* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.nh_info* @ERR_PTR(i32 %30)
  %32 = bitcast %struct.nh_info* %31 to %struct.nexthop*
  store %struct.nexthop* %32, %struct.nexthop** %4, align 8
  br label %111

33:                                               ; preds = %20
  %34 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %35 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %38 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.net*, %struct.net** %5, align 8
  %40 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %41 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %40, i32 0, i32 5
  store %struct.net* %39, %struct.net** %41, align 8
  %42 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %43 = bitcast %struct.nexthop* %42 to %struct.nh_info*
  %44 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %45 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %44, i32 0, i32 4
  store %struct.nh_info* %43, %struct.nh_info** %45, align 8
  %46 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %47 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %50 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @RT_SCOPE_LINK, align 4
  %52 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %53 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %56 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %33
  %60 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %61 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.net*, %struct.net** %5, align 8
  %63 = getelementptr inbounds %struct.net, %struct.net* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %68 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %59, %33
  %70 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %71 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %89 [
    i32 129, label %73
    i32 128, label %81
  ]

73:                                               ; preds = %69
  %74 = load %struct.net*, %struct.net** %5, align 8
  %75 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %76 = bitcast %struct.nexthop* %75 to %struct.nh_info*
  %77 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %78 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %79 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %80 = call i32 @nh_create_ipv4(%struct.net* %74, %struct.nh_info* %76, %struct.nh_info* %77, %struct.nh_config* %78, %struct.netlink_ext_ack* %79)
  store i32 %80, i32* %10, align 4
  br label %89

81:                                               ; preds = %69
  %82 = load %struct.net*, %struct.net** %5, align 8
  %83 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %84 = bitcast %struct.nexthop* %83 to %struct.nh_info*
  %85 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %86 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %87 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %88 = call i32 @nh_create_ipv6(%struct.net* %82, %struct.nh_info* %84, %struct.nh_info* %85, %struct.nh_config* %86, %struct.netlink_ext_ack* %87)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %69, %81, %73
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %94 = call i32 @kfree(%struct.nh_info* %93)
  %95 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %96 = bitcast %struct.nexthop* %95 to %struct.nh_info*
  %97 = call i32 @kfree(%struct.nh_info* %96)
  %98 = load i32, i32* %10, align 4
  %99 = call %struct.nh_info* @ERR_PTR(i32 %98)
  %100 = bitcast %struct.nh_info* %99 to %struct.nexthop*
  store %struct.nexthop* %100, %struct.nexthop** %4, align 8
  br label %111

101:                                              ; preds = %89
  %102 = load %struct.net*, %struct.net** %5, align 8
  %103 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %104 = call i32 @nexthop_devhash_add(%struct.net* %102, %struct.nh_info* %103)
  %105 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %106 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %109 = call i32 @rcu_assign_pointer(i32 %107, %struct.nh_info* %108)
  %110 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  store %struct.nexthop* %110, %struct.nexthop** %4, align 8
  br label %111

111:                                              ; preds = %101, %92, %25, %15
  %112 = load %struct.nexthop*, %struct.nexthop** %4, align 8
  ret %struct.nexthop* %112
}

declare dso_local %struct.nh_info* @nexthop_alloc(...) #1

declare dso_local %struct.nh_info* @ERR_PTR(i32) #1

declare dso_local %struct.nh_info* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.nh_info*) #1

declare dso_local i32 @nh_create_ipv4(%struct.net*, %struct.nh_info*, %struct.nh_info*, %struct.nh_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nh_create_ipv6(%struct.net*, %struct.nh_info*, %struct.nh_info*, %struct.nh_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nexthop_devhash_add(%struct.net*, %struct.nh_info*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nh_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
