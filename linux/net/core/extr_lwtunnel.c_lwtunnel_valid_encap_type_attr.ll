; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_valid_encap_type_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_valid_encap_type_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rtnexthop = type { i32 }

@RTA_ENCAP_TYPE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwtunnel_valid_encap_type_attr(%struct.nlattr* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.rtnexthop*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %14 = bitcast %struct.nlattr* %13 to %struct.rtnexthop*
  store %struct.rtnexthop* %14, %struct.rtnexthop** %8, align 8
  br label %15

15:                                               ; preds = %46, %3
  %16 = load %struct.rtnexthop*, %struct.rtnexthop** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @rtnh_ok(%struct.rtnexthop* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = load %struct.rtnexthop*, %struct.rtnexthop** %8, align 8
  %22 = call i32 @rtnh_attrlen(%struct.rtnexthop* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.rtnexthop*, %struct.rtnexthop** %8, align 8
  %27 = call %struct.nlattr* @rtnh_attrs(%struct.rtnexthop* %26)
  store %struct.nlattr* %27, %struct.nlattr** %10, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @RTA_ENCAP_TYPE, align 4
  %31 = call %struct.nlattr* @nla_find(%struct.nlattr* %28, i32 %29, i32 %30)
  store %struct.nlattr* %31, %struct.nlattr** %9, align 8
  %32 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %36 = call i32 @nla_get_u16(%struct.nlattr* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %39 = call i64 @lwtunnel_valid_encap_type(i32 %37, %struct.netlink_ext_ack* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %25
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.rtnexthop*, %struct.rtnexthop** %8, align 8
  %48 = call %struct.rtnexthop* @rtnh_next(%struct.rtnexthop* %47, i32* %6)
  store %struct.rtnexthop* %48, %struct.rtnexthop** %8, align 8
  br label %15

49:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @rtnh_ok(%struct.rtnexthop*, i32) #1

declare dso_local i32 @rtnh_attrlen(%struct.rtnexthop*) #1

declare dso_local %struct.nlattr* @rtnh_attrs(%struct.rtnexthop*) #1

declare dso_local %struct.nlattr* @nla_find(%struct.nlattr*, i32, i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i64 @lwtunnel_valid_encap_type(i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.rtnexthop* @rtnh_next(%struct.rtnexthop*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
