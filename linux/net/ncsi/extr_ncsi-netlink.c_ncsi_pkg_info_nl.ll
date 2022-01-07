; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_pkg_info_nl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_pkg_info_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, i32, i32 }
%struct.ncsi_dev_priv = type { i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NCSI_ATTR_IFINDEX = common dso_local global i64 0, align 8
@NCSI_ATTR_PACKAGE_ID = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ncsi_genl_family = common dso_local global i32 0, align 4
@NCSI_CMD_PKG_INFO = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NCSI_ATTR_PACKAGE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ncsi_pkg_info_nl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_pkg_info_nl(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = icmp ne %struct.genl_info* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %129

22:                                               ; preds = %14
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @NCSI_ATTR_IFINDEX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %129

33:                                               ; preds = %22
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @NCSI_ATTR_PACKAGE_ID, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %129

44:                                               ; preds = %33
  %45 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %46 = call i32 @genl_info_net(%struct.genl_info* %45)
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

57:                                               ; preds = %44
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %129

60:                                               ; preds = %44
  %61 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.sk_buff* @genlmsg_new(i32 %61, i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %8, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %129

69:                                               ; preds = %60
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %72 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NCSI_CMD_PKG_INFO, align 4
  %78 = call i8* @genlmsg_put(%struct.sk_buff* %70, i32 %73, i32 %76, i32* @ncsi_genl_family, i32 0, i32 %77)
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %69
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @kfree_skb(%struct.sk_buff* %82)
  %84 = load i32, i32* @EMSGSIZE, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %129

86:                                               ; preds = %69
  %87 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %88 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @NCSI_ATTR_PACKAGE_ID, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nla_get_u32(i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = load i32, i32* @NCSI_ATTR_PACKAGE_LIST, align 4
  %96 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %94, i32 %95)
  store %struct.nlattr* %96, %struct.nlattr** %9, align 8
  %97 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %86
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i32 @kfree_skb(%struct.sk_buff* %100)
  %102 = load i32, i32* @EMSGSIZE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %129

104:                                              ; preds = %86
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @ncsi_write_package_info(%struct.sk_buff* %105, %struct.ncsi_dev_priv* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %114 = call i32 @nla_nest_cancel(%struct.sk_buff* %112, %struct.nlattr* %113)
  br label %125

115:                                              ; preds = %104
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %118 = call i32 @nla_nest_end(%struct.sk_buff* %116, %struct.nlattr* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @genlmsg_end(%struct.sk_buff* %119, i8* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %124 = call i32 @genlmsg_reply(%struct.sk_buff* %122, %struct.genl_info* %123)
  store i32 %124, i32* %3, align 4
  br label %129

125:                                              ; preds = %111
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = call i32 @kfree_skb(%struct.sk_buff* %126)
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %115, %99, %81, %66, %57, %41, %30, %19
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.ncsi_dev_priv* @ndp_from_ifindex(i32, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @ncsi_write_package_info(%struct.sk_buff*, %struct.ncsi_dev_priv*, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
