; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_ensure_unique_netns.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_ensure_unique_netns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_NET_NS_PID = common dso_local global i64 0, align 8
@IFLA_NET_NS_FD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"specified netns attribute not supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFLA_TARGET_NETNSID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"multiple netns identifying attributes specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.netlink_ext_ack*, i32)* @rtnl_ensure_unique_netns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_ensure_unique_netns(%struct.nlattr** %0, %struct.netlink_ext_ack* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %12 = load i64, i64* @IFLA_NET_NS_PID, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %18 = load i64, i64* @IFLA_NET_NS_FD, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %91

23:                                               ; preds = %16, %10
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %25 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %91

28:                                               ; preds = %3
  %29 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %30 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = load i64, i64* @IFLA_NET_NS_PID, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %42 = load i64, i64* @IFLA_NET_NS_FD, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  br label %86

47:                                               ; preds = %40, %28
  %48 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %49 = load i64, i64* @IFLA_NET_NS_PID, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %55 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %61 = load i64, i64* @IFLA_NET_NS_FD, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53
  br label %86

66:                                               ; preds = %59, %47
  %67 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %68 = load i64, i64* @IFLA_NET_NS_FD, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %74 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %80 = load i64, i64* @IFLA_NET_NS_PID, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = icmp ne %struct.nlattr* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %72
  br label %86

85:                                               ; preds = %78, %66
  store i32 0, i32* %4, align 4
  br label %91

86:                                               ; preds = %84, %65, %46
  %87 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %88 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %85, %23, %22
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
