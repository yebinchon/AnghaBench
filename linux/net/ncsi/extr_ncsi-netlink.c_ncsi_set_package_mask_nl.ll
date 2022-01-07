; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_set_package_mask_nl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_set_package_mask_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.ncsi_dev_priv = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NCSI_ATTR_IFINDEX = common dso_local global i64 0, align 8
@NCSI_ATTR_PACKAGE_MASK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@NCSI_ATTR_MULTI_FLAG = common dso_local global i64 0, align 8
@NCSI_DEV_HWA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"NCSI: Can't use multiple packages without HWA\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@NCSI_DEV_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ncsi_set_package_mask_nl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_set_package_mask_nl(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = icmp ne %struct.genl_info* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %129

19:                                               ; preds = %11
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @NCSI_ATTR_IFINDEX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %129

30:                                               ; preds = %19
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @NCSI_ATTR_PACKAGE_MASK, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %129

41:                                               ; preds = %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sock_net(i32 %44)
  %46 = call i32 @get_net(i32 %45)
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @NCSI_ATTR_IFINDEX, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nla_get_u32(i32 %52)
  %54 = call %struct.ncsi_dev_priv* @ndp_from_ifindex(i32 %46, i32 %53)
  store %struct.ncsi_dev_priv* %54, %struct.ncsi_dev_priv** %6, align 8
  %55 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %56 = icmp ne %struct.ncsi_dev_priv* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %129

60:                                               ; preds = %41
  %61 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %62 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %61, i32 0, i32 3
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @NCSI_ATTR_MULTI_FLAG, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @nla_get_flag(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %60
  %74 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %75 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NCSI_DEV_HWA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %82 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  store i32 0, i32* %8, align 4
  br label %91

83:                                               ; preds = %73
  %84 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %85 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @netdev_err(i32 %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* @EPERM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %83, %80
  br label %95

92:                                               ; preds = %60
  %93 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %94 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %91
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %100 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @NCSI_ATTR_PACKAGE_MASK, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @nla_get_u32(i32 %104)
  %106 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %107 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %98, %95
  %109 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %110 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %109, i32 0, i32 3
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %108
  %116 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %117 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NCSI_DEV_RESET, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %124 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %123, i32 0, i32 2
  %125 = call i32 @ncsi_reset_dev(%struct.TYPE_2__* %124)
  br label %126

126:                                              ; preds = %122, %115
  br label %127

127:                                              ; preds = %126, %108
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %57, %38, %27, %16
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.ncsi_dev_priv* @ndp_from_ifindex(i32, i32) #1

declare dso_local i32 @get_net(i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @nla_get_flag(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ncsi_reset_dev(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
