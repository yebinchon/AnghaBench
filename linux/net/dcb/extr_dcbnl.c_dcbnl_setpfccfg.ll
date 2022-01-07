; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_setpfccfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_setpfccfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i64, i32)* }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i64 }
%struct.sk_buff = type { i32 }

@DCB_PFC_UP_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_ATTR_PFC_CFG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dcbnl_pfc_up_nest = common dso_local global i32 0, align 4
@DCB_PFC_UP_ATTR_0 = common dso_local global i32 0, align 4
@DCB_PFC_UP_ATTR_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlmsghdr*, i32, %struct.nlattr**, %struct.sk_buff*)* @dcbnl_setpfccfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_setpfccfg(%struct.net_device* %0, %struct.nlmsghdr* %1, i32 %2, %struct.nlattr** %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %18 = load i32, i32* @DCB_PFC_UP_ATTR_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %24 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %96

31:                                               ; preds = %5
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.net_device*, i64, i32)*, i32 (%struct.net_device*, i64, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.net_device*, i64, i32)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %96

41:                                               ; preds = %31
  %42 = load i32, i32* @DCB_PFC_UP_ATTR_MAX, align 4
  %43 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %44 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = load i32, i32* @dcbnl_pfc_up_nest, align 4
  %48 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %22, i32 %42, %struct.nlattr* %46, i32 %47, i32* null)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %96

53:                                               ; preds = %41
  %54 = load i32, i32* @DCB_PFC_UP_ATTR_0, align 4
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %89, %53
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @DCB_PFC_UP_ATTR_7, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp eq %struct.nlattr* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %89

66:                                               ; preds = %59
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i32 @nla_get_u8(%struct.nlattr* %70)
  store i32 %71, i32* %16, align 4
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.net_device*, i64, i32)*, i32 (%struct.net_device*, i64, i32)** %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @DCB_PFC_UP_ATTR_0, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = load i32, i32* %16, align 4
  %88 = call i32 %76(%struct.net_device* %77, i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %66, %65
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %55

92:                                               ; preds = %55
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %95 = call i32 @nla_put_u8(%struct.sk_buff* %93, i64 %94, i32 0)
  store i32 %95, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %96

96:                                               ; preds = %92, %51, %38, %28
  %97 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
