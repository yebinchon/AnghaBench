; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_set_link_af.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_set_link_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFLA_INET6_MAX = common dso_local global i32 0, align 4
@IFLA_INET6_TOKEN = common dso_local global i64 0, align 8
@IFLA_INET6_ADDR_GEN_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr*)* @inet6_set_link_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_set_link_af(%struct.net_device* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %12)
  store %struct.inet6_dev* %13, %struct.inet6_dev** %6, align 8
  %14 = load i32, i32* @IFLA_INET6_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @IFLA_INET6_MAX, align 4
  %20 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %21 = call i64 @nla_parse_nested_deprecated(%struct.nlattr** %18, i32 %19, %struct.nlattr* %20, i32* null, i32* null)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i64, i64* @IFLA_INET6_TOKEN, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %32 = load i64, i64* @IFLA_INET6_TOKEN, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_data(%struct.nlattr* %34)
  %36 = call i32 @inet6_set_iftoken(%struct.inet6_dev* %31, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %57

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i64, i64* @IFLA_INET6_ADDR_GEN_MODE, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i64, i64* @IFLA_INET6_ADDR_GEN_MODE, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @nla_get_u8(%struct.nlattr* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %54 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %42
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @inet6_set_iftoken(%struct.inet6_dev*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
