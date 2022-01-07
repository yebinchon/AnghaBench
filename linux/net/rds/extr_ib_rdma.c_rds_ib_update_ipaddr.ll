; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_update_ipaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_update_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_device = type { i32 }
%struct.in6_addr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_ib_update_ipaddr(%struct.rds_ib_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_ib_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.rds_ib_device*, align 8
  store %struct.rds_ib_device* %0, %struct.rds_ib_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %7 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %8 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rds_ib_device* @rds_ib_get_device(i32 %11)
  store %struct.rds_ib_device* %12, %struct.rds_ib_device** %6, align 8
  %13 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %14 = icmp ne %struct.rds_ib_device* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %17 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %18 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rds_ib_add_ipaddr(%struct.rds_ib_device* %16, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %25 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %26 = icmp ne %struct.rds_ib_device* %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %29 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %30 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rds_ib_remove_ipaddr(%struct.rds_ib_device* %28, i32 %33)
  %35 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %36 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %35)
  %37 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %38 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %39 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rds_ib_add_ipaddr(%struct.rds_ib_device* %37, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %23
  %45 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %46 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %27, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.rds_ib_device* @rds_ib_get_device(i32) #1

declare dso_local i32 @rds_ib_add_ipaddr(%struct.rds_ib_device*, i32) #1

declare dso_local i32 @rds_ib_remove_ipaddr(%struct.rds_ib_device*, i32) #1

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
