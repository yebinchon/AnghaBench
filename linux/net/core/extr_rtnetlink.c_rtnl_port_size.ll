; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_port_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_port_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PORT_PROFILE_MAX = common dso_local global i32 0, align 4
@PORT_UUID_MAX = common dso_local global i32 0, align 4
@RTEXT_FILTER_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i32)* @rtnl_port_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtnl_port_size(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i64 @nla_total_size(i32 4)
  %11 = load i32, i32* @PORT_PROFILE_MAX, align 4
  %12 = call i64 @nla_total_size(i32 %11)
  %13 = add i64 %10, %12
  %14 = load i32, i32* @PORT_UUID_MAX, align 4
  %15 = call i64 @nla_total_size(i32 %14)
  %16 = add i64 %13, %15
  %17 = load i32, i32* @PORT_UUID_MAX, align 4
  %18 = call i64 @nla_total_size(i32 %17)
  %19 = add i64 %16, %18
  %20 = call i64 @nla_total_size(i32 1)
  %21 = add i64 %19, %20
  %22 = call i64 @nla_total_size(i32 2)
  %23 = add i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = call i64 @nla_total_size(i32 4)
  store i64 %24, i64* %7, align 8
  %25 = call i64 @nla_total_size(i32 4)
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %8, align 8
  %28 = call i64 @nla_total_size(i32 4)
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %9, align 8
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RTEXT_FILTER_VF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %37, %2
  store i64 0, i64* %3, align 8
  br label %70

49:                                               ; preds = %43
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @dev_num_vf(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @dev_num_vf(i32 %64)
  %66 = mul i64 %60, %65
  %67 = add i64 %59, %66
  store i64 %67, i64* %3, align 8
  br label %70

68:                                               ; preds = %49
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %68, %56, %48
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @dev_num_vf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
