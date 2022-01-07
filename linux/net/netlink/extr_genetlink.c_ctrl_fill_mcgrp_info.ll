; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_ctrl_fill_mcgrp_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_ctrl_fill_mcgrp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32, i32 }
%struct.genl_multicast_group = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@genl_ctrl = common dso_local global i32 0, align 4
@CTRL_ATTR_FAMILY_NAME = common dso_local global i32 0, align 4
@CTRL_ATTR_FAMILY_ID = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GROUPS = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GRP_ID = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GRP_NAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_family*, %struct.genl_multicast_group*, i32, i32, i32, i32, %struct.sk_buff*, i32)* @ctrl_fill_mcgrp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_fill_mcgrp_info(%struct.genl_family* %0, %struct.genl_multicast_group* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.sk_buff* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.genl_family*, align 8
  %11 = alloca %struct.genl_multicast_group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca %struct.nlattr*, align 8
  store %struct.genl_family* %0, %struct.genl_family** %10, align 8
  store %struct.genl_multicast_group* %1, %struct.genl_multicast_group** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.sk_buff* %6, %struct.sk_buff** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %17, align 4
  %26 = call i8* @genlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32* @genl_ctrl, i32 %24, i32 %25)
  store i8* %26, i8** %18, align 8
  %27 = load i8*, i8** %18, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %91

30:                                               ; preds = %8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %32 = load i32, i32* @CTRL_ATTR_FAMILY_NAME, align 4
  %33 = load %struct.genl_family*, %struct.genl_family** %10, align 8
  %34 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_string(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %40 = load i32, i32* @CTRL_ATTR_FAMILY_ID, align 4
  %41 = load %struct.genl_family*, %struct.genl_family** %10, align 8
  %42 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u16(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %30
  br label %85

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %49 = load i32, i32* @CTRL_ATTR_MCAST_GROUPS, align 4
  %50 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %48, i32 %49)
  store %struct.nlattr* %50, %struct.nlattr** %19, align 8
  %51 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %52 = icmp eq %struct.nlattr* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %85

54:                                               ; preds = %47
  %55 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %56 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %55, i32 1)
  store %struct.nlattr* %56, %struct.nlattr** %20, align 8
  %57 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %58 = icmp eq %struct.nlattr* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %85

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %62 = load i32, i32* @CTRL_ATTR_MCAST_GRP_ID, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @nla_put_u32(%struct.sk_buff* %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %68 = load i32, i32* @CTRL_ATTR_MCAST_GRP_NAME, align 4
  %69 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %11, align 8
  %70 = getelementptr inbounds %struct.genl_multicast_group, %struct.genl_multicast_group* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @nla_put_string(%struct.sk_buff* %67, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %60
  br label %85

75:                                               ; preds = %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %78 = call i32 @nla_nest_end(%struct.sk_buff* %76, %struct.nlattr* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %80 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %81 = call i32 @nla_nest_end(%struct.sk_buff* %79, %struct.nlattr* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %83 = load i8*, i8** %18, align 8
  %84 = call i32 @genlmsg_end(%struct.sk_buff* %82, i8* %83)
  store i32 0, i32* %9, align 4
  br label %91

85:                                               ; preds = %74, %59, %53, %46
  %86 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = call i32 @genlmsg_cancel(%struct.sk_buff* %86, i8* %87)
  %89 = load i32, i32* @EMSGSIZE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %85, %75, %29
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
