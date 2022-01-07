; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_vfinfo_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_vfinfo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RTEXT_FILTER_VF = common dso_local global i32 0, align 4
@MAX_VLAN_LIST_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @rtnl_vfinfo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_vfinfo_size(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %78

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RTEXT_FILTER_VF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %13
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dev_num_vf(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = call i32 @nla_total_size(i32 0)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nla_total_size(i32 0)
  %28 = call i32 @nla_total_size(i32 4)
  %29 = add nsw i32 %27, %28
  %30 = call i32 @nla_total_size(i32 4)
  %31 = add nsw i32 %29, %30
  %32 = call i32 @nla_total_size(i32 4)
  %33 = add nsw i32 %31, %32
  %34 = call i32 @nla_total_size(i32 0)
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @MAX_VLAN_LIST_LEN, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @nla_total_size(i32 %39)
  %41 = add nsw i32 %35, %40
  %42 = call i32 @nla_total_size(i32 4)
  %43 = add nsw i32 %41, %42
  %44 = call i32 @nla_total_size(i32 4)
  %45 = add nsw i32 %43, %44
  %46 = call i32 @nla_total_size(i32 4)
  %47 = add nsw i32 %45, %46
  %48 = call i32 @nla_total_size(i32 4)
  %49 = add nsw i32 %47, %48
  %50 = call i32 @nla_total_size(i32 4)
  %51 = add nsw i32 %49, %50
  %52 = call i32 @nla_total_size(i32 0)
  %53 = add nsw i32 %51, %52
  %54 = call i32 @nla_total_size_64bit(i32 4)
  %55 = add nsw i32 %53, %54
  %56 = call i32 @nla_total_size_64bit(i32 4)
  %57 = add nsw i32 %55, %56
  %58 = call i32 @nla_total_size_64bit(i32 4)
  %59 = add nsw i32 %57, %58
  %60 = call i32 @nla_total_size_64bit(i32 4)
  %61 = add nsw i32 %59, %60
  %62 = call i32 @nla_total_size_64bit(i32 4)
  %63 = add nsw i32 %61, %62
  %64 = call i32 @nla_total_size_64bit(i32 4)
  %65 = add nsw i32 %63, %64
  %66 = call i32 @nla_total_size_64bit(i32 4)
  %67 = add nsw i32 %65, %66
  %68 = call i32 @nla_total_size_64bit(i32 4)
  %69 = add nsw i32 %67, %68
  %70 = call i32 @nla_total_size(i32 4)
  %71 = add nsw i32 %69, %70
  %72 = mul nsw i32 %26, %71
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @dev_num_vf(i64) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i32 @nla_total_size_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
