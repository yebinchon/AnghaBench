; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_fib_modify_prefix_metric.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_fib_modify_prefix_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i64, i64, i32, i64, i32, i32, %struct.in_device* }
%struct.in_device = type { %struct.net_device* }
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFA_F_SECONDARY = common dso_local global i32 0, align 4
@IFA_F_NOPREFIXROUTE = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@RTM_DELROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib_modify_prefix_metric(%struct.in_ifaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.in_ifaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.in_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.in_ifaddr* %0, %struct.in_ifaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %9 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %12 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %10, %13
  store i64 %14, i64* %5, align 8
  %15 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %16 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %15, i32 0, i32 6
  %17 = load %struct.in_device*, %struct.in_device** %16, align 8
  store %struct.in_device* %17, %struct.in_device** %6, align 8
  %18 = load %struct.in_device*, %struct.in_device** %6, align 8
  %19 = getelementptr inbounds %struct.in_device, %struct.in_device* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %29 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IFA_F_SECONDARY, align 4
  %32 = load i32, i32* @IFA_F_NOPREFIXROUTE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %27
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @ipv4_is_zeronet(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %43 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %48 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %36, %27, %2
  br label %95

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @RTM_NEWROUTE, align 4
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_LOOPBACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @RTN_LOCAL, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @RTN_UNICAST, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %68 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @fib_magic(i32 %53, i32 %65, i64 %66, i32 %69, %struct.in_ifaddr* %70, i32 %71)
  %73 = load i32, i32* @RTM_DELROUTE, align 4
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IFF_LOOPBACK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* @RTN_LOCAL, align 4
  br label %84

82:                                               ; preds = %64
  %83 = load i32, i32* @RTN_UNICAST, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %88 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %91 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %92 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fib_magic(i32 %73, i32 %85, i64 %86, i32 %89, %struct.in_ifaddr* %90, i32 %93)
  br label %95

95:                                               ; preds = %84, %51
  ret void
}

declare dso_local i64 @ipv4_is_zeronet(i64) #1

declare dso_local i32 @fib_magic(i32, i32, i64, i32, %struct.in_ifaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
