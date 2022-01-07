; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_validate_link_af.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_validate_link_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.inet6_dev = type { i32 }

@IFLA_INET6_MAX = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@inet6_af_policy = common dso_local global i32 0, align 4
@IFLA_INET6_TOKEN = common dso_local global i64 0, align 8
@IFLA_INET6_ADDR_GEN_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr*)* @inet6_validate_link_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_validate_link_af(%struct.net_device* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %12 = load i32, i32* @IFLA_INET6_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store %struct.inet6_dev* null, %struct.inet6_dev** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %20)
  store %struct.inet6_dev* %21, %struct.inet6_dev** %8, align 8
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %23 = icmp ne %struct.inet6_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EAFNOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* @IFLA_INET6_MAX, align 4
  %30 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %31 = load i32, i32* @inet6_af_policy, align 4
  %32 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %16, i32 %29, %struct.nlattr* %30, i32 %31, i32* null)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

37:                                               ; preds = %28
  %38 = load i64, i64* @IFLA_INET6_TOKEN, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @IFLA_INET6_ADDR_GEN_MODE, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

50:                                               ; preds = %42, %37
  %51 = load i64, i64* @IFLA_INET6_ADDR_GEN_MODE, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load i64, i64* @IFLA_INET6_ADDR_GEN_MODE, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_get_u8(%struct.nlattr* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @check_addr_gen_mode(i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

66:                                               ; preds = %55
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = icmp ne %struct.net_device* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @dev_net(%struct.net_device* %71)
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @check_stable_privacy(%struct.inet6_dev* %70, i32 %72, i32 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

79:                                               ; preds = %69, %66
  br label %80

80:                                               ; preds = %79, %50
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %76, %63, %47, %35, %24
  %82 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i64 @check_addr_gen_mode(i32) #2

declare dso_local i64 @check_stable_privacy(%struct.inet6_dev*, i32, i32) #2

declare dso_local i32 @dev_net(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
