; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_nh_assign_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_nh_assign_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.mpls_route = type { i32 }
%struct.mpls_nh = type { i64, i64, i32, i32 }
%struct.net_device = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NEIGH_LINK_TABLE = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@RTNH_F_DEAD = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@IFF_LOWER_UP = common dso_local global i32 0, align 4
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.mpls_route*, %struct.mpls_nh*, i32)* @mpls_nh_assign_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_nh_assign_dev(%struct.net* %0, %struct.mpls_route* %1, %struct.mpls_nh* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.mpls_route*, align 8
  %8 = alloca %struct.mpls_nh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.mpls_route* %1, %struct.mpls_route** %7, align 8
  store %struct.mpls_nh* %2, %struct.mpls_nh** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = load %struct.mpls_route*, %struct.mpls_route** %7, align 8
  %17 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.net_device* @find_outdev(%struct.net* %15, %struct.mpls_route* %16, %struct.mpls_nh* %17, i32 %18)
  store %struct.net_device* %19, %struct.net_device** %10, align 8
  %20 = load %struct.net_device*, %struct.net_device** %10, align 8
  %21 = call i64 @IS_ERR(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.net_device*, %struct.net_device** %10, align 8
  %25 = call i32 @PTR_ERR(%struct.net_device* %24)
  store i32 %25, i32* %11, align 4
  store %struct.net_device* null, %struct.net_device** %10, align 8
  br label %83

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.net_device*, %struct.net_device** %10, align 8
  %30 = call i32 @mpls_dev_get(%struct.net_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %83

33:                                               ; preds = %26
  %34 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %35 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NEIGH_LINK_TABLE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.net_device*, %struct.net_device** %10, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %44 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %83

48:                                               ; preds = %39, %33
  %49 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %50 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %10, align 8
  %53 = call i32 @RCU_INIT_POINTER(i32 %51, %struct.net_device* %52)
  %54 = load %struct.net_device*, %struct.net_device** %10, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IFF_UP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @RTNH_F_DEAD, align 4
  %62 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %63 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %82

66:                                               ; preds = %48
  %67 = load %struct.net_device*, %struct.net_device** %10, align 8
  %68 = call i32 @dev_get_flags(%struct.net_device* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @IFF_RUNNING, align 4
  %71 = load i32, i32* @IFF_LOWER_UP, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %77 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %78 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %66
  br label %82

82:                                               ; preds = %81, %60
  store i32 0, i32* %5, align 4
  br label %85

83:                                               ; preds = %47, %32, %23
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.net_device* @find_outdev(%struct.net*, %struct.mpls_route*, %struct.mpls_nh*, i32) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local i32 @mpls_dev_get(%struct.net_device*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.net_device*) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
