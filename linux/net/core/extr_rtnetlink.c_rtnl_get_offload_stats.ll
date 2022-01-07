; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_get_offload_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_get_offload_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.net_device*, i8*)*, i32 (%struct.net_device*, i32)* }
%struct.nlattr = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@IFLA_OFFLOAD_XSTATS_FIRST = common dso_local global i32 0, align 4
@IFLA_OFFLOAD_XSTATS_MAX = common dso_local global i32 0, align 4
@IFLA_OFFLOAD_XSTATS_UNSPEC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32*)* @rtnl_get_offload_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_get_offload_stats(%struct.sk_buff* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.nlattr* null, %struct.nlattr** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.net_device*, i32)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32, %struct.net_device*, i8*)*, i32 (i32, %struct.net_device*, i8*)** %28, align 8
  %30 = icmp ne i32 (i32, %struct.net_device*, i8*)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %17, %3
  %32 = load i32, i32* @ENODATA, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %109

34:                                               ; preds = %24
  %35 = load i32, i32* @IFLA_OFFLOAD_XSTATS_FIRST, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %91, %34
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @IFLA_OFFLOAD_XSTATS_MAX, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %94

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %91

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @rtnl_get_offload_stats_attr_size(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %91

52:                                               ; preds = %46
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %56, align 8
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 %57(%struct.net_device* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %91

63:                                               ; preds = %52
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @IFLA_OFFLOAD_XSTATS_UNSPEC, align 4
  %68 = call %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff* %64, i32 %65, i32 %66, i32 %67)
  store %struct.nlattr* %68, %struct.nlattr** %8, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %102

72:                                               ; preds = %63
  %73 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %74 = call i8* @nla_data(%struct.nlattr* %73)
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @memset(i8* %75, i32 0, i32 %76)
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (i32, %struct.net_device*, i8*)*, i32 (i32, %struct.net_device*, i8*)** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 %82(i32 %83, %struct.net_device* %84, i8* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %105

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %62, %51, %45
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %36

94:                                               ; preds = %36
  %95 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %96 = icmp ne %struct.nlattr* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @ENODATA, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %109

100:                                              ; preds = %94
  %101 = load i32*, i32** %7, align 8
  store i32 0, i32* %101, align 4
  store i32 0, i32* %4, align 4
  br label %109

102:                                              ; preds = %71
  %103 = load i32, i32* @EMSGSIZE, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %89
  %106 = load i32, i32* %9, align 4
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %100, %97, %31
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @rtnl_get_offload_stats_attr_size(i32) #1

declare dso_local %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
