; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_tap_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_tap_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFLA_GRE_REMOTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipgre_tap_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_tap_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %10 = load i64, i64* @IFLA_ADDRESS, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %16 = load i64, i64* @IFLA_ADDRESS, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = call i64 @nla_len(%struct.nlattr* %18)
  %20 = load i64, i64* @ETH_ALEN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %66

25:                                               ; preds = %14
  %26 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %27 = load i64, i64* @IFLA_ADDRESS, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i32 @nla_data(%struct.nlattr* %29)
  %31 = call i32 @is_valid_ether_addr(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @EADDRNOTAVAIL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %39 = icmp ne %struct.nlattr** %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %61

41:                                               ; preds = %37
  %42 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %43 = load i64, i64* @IFLA_GRE_REMOTE, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %49 = load i64, i64* @IFLA_GRE_REMOTE, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i32 @nla_data(%struct.nlattr* %51)
  %53 = call i32 @memcpy(i32* %8, i32 %52, i32 4)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %40
  %62 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %63 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %64 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %65 = call i32 @ipgre_tunnel_validate(%struct.nlattr** %62, %struct.nlattr** %63, %struct.netlink_ext_ack* %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %56, %33, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ipgre_tunnel_validate(%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
