; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_dst_clone.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_dst_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtable = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@ipv4_dst_ops = common dso_local global i32 0, align 4
@DST_OBSOLETE_FORCE_CHK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@DST_HOST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtable* @rt_dst_clone(%struct.net_device* %0, %struct.rtable* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtable*, align 8
  %5 = alloca %struct.rtable*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtable* %1, %struct.rtable** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = load i32, i32* @DST_OBSOLETE_FORCE_CHK, align 4
  %8 = load %struct.rtable*, %struct.rtable** %4, align 8
  %9 = getelementptr inbounds %struct.rtable, %struct.rtable* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rtable* @dst_alloc(i32* @ipv4_dst_ops, %struct.net_device* %6, i32 1, i32 %7, i32 %11)
  store %struct.rtable* %12, %struct.rtable** %5, align 8
  %13 = load %struct.rtable*, %struct.rtable** %5, align 8
  %14 = icmp ne %struct.rtable* %13, null
  br i1 %14, label %15, label %123

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @dev_net(%struct.net_device* %16)
  %18 = call i32 @rt_genid_ipv4(i32 %17)
  %19 = load %struct.rtable*, %struct.rtable** %5, align 8
  %20 = getelementptr inbounds %struct.rtable, %struct.rtable* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rtable*, %struct.rtable** %4, align 8
  %22 = getelementptr inbounds %struct.rtable, %struct.rtable* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rtable*, %struct.rtable** %5, align 8
  %25 = getelementptr inbounds %struct.rtable, %struct.rtable* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 8
  %26 = load %struct.rtable*, %struct.rtable** %4, align 8
  %27 = getelementptr inbounds %struct.rtable, %struct.rtable* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtable*, %struct.rtable** %5, align 8
  %30 = getelementptr inbounds %struct.rtable, %struct.rtable* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rtable*, %struct.rtable** %4, align 8
  %32 = getelementptr inbounds %struct.rtable, %struct.rtable* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rtable*, %struct.rtable** %5, align 8
  %35 = getelementptr inbounds %struct.rtable, %struct.rtable* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rtable*, %struct.rtable** %4, align 8
  %37 = getelementptr inbounds %struct.rtable, %struct.rtable* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rtable*, %struct.rtable** %5, align 8
  %40 = getelementptr inbounds %struct.rtable, %struct.rtable* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rtable*, %struct.rtable** %4, align 8
  %42 = getelementptr inbounds %struct.rtable, %struct.rtable* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rtable*, %struct.rtable** %5, align 8
  %45 = getelementptr inbounds %struct.rtable, %struct.rtable* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.rtable*, %struct.rtable** %4, align 8
  %47 = getelementptr inbounds %struct.rtable, %struct.rtable* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rtable*, %struct.rtable** %5, align 8
  %50 = getelementptr inbounds %struct.rtable, %struct.rtable* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rtable*, %struct.rtable** %4, align 8
  %52 = getelementptr inbounds %struct.rtable, %struct.rtable* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.rtable*, %struct.rtable** %5, align 8
  %55 = getelementptr inbounds %struct.rtable, %struct.rtable* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.rtable*, %struct.rtable** %4, align 8
  %57 = getelementptr inbounds %struct.rtable, %struct.rtable* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AF_INET, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %15
  %62 = load %struct.rtable*, %struct.rtable** %4, align 8
  %63 = getelementptr inbounds %struct.rtable, %struct.rtable* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rtable*, %struct.rtable** %5, align 8
  %66 = getelementptr inbounds %struct.rtable, %struct.rtable* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  br label %80

67:                                               ; preds = %15
  %68 = load %struct.rtable*, %struct.rtable** %4, align 8
  %69 = getelementptr inbounds %struct.rtable, %struct.rtable* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AF_INET6, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.rtable*, %struct.rtable** %4, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rtable*, %struct.rtable** %5, align 8
  %78 = getelementptr inbounds %struct.rtable, %struct.rtable* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.rtable*, %struct.rtable** %5, align 8
  %82 = getelementptr inbounds %struct.rtable, %struct.rtable* %81, i32 0, i32 2
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load i32, i32* @DST_HOST, align 4
  %85 = load %struct.rtable*, %struct.rtable** %5, align 8
  %86 = getelementptr inbounds %struct.rtable, %struct.rtable* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load %struct.rtable*, %struct.rtable** %4, align 8
  %91 = getelementptr inbounds %struct.rtable, %struct.rtable* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rtable*, %struct.rtable** %5, align 8
  %95 = getelementptr inbounds %struct.rtable, %struct.rtable* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load %struct.rtable*, %struct.rtable** %4, align 8
  %98 = getelementptr inbounds %struct.rtable, %struct.rtable* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rtable*, %struct.rtable** %5, align 8
  %102 = getelementptr inbounds %struct.rtable, %struct.rtable* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load %struct.rtable*, %struct.rtable** %4, align 8
  %105 = getelementptr inbounds %struct.rtable, %struct.rtable* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.rtable*, %struct.rtable** %5, align 8
  %109 = getelementptr inbounds %struct.rtable, %struct.rtable* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @jiffies, align 4
  %112 = load %struct.rtable*, %struct.rtable** %5, align 8
  %113 = getelementptr inbounds %struct.rtable, %struct.rtable* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load %struct.rtable*, %struct.rtable** %4, align 8
  %116 = getelementptr inbounds %struct.rtable, %struct.rtable* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @lwtstate_get(i32 %118)
  %120 = load %struct.rtable*, %struct.rtable** %5, align 8
  %121 = getelementptr inbounds %struct.rtable, %struct.rtable* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  br label %123

123:                                              ; preds = %80, %2
  %124 = load %struct.rtable*, %struct.rtable** %5, align 8
  ret %struct.rtable* %124
}

declare dso_local %struct.rtable* @dst_alloc(i32*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rt_genid_ipv4(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lwtstate_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
