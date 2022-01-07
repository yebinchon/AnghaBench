; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_setnumtcs.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_setnumtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32)* }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@DCB_NUMTCS_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_ATTR_NUMTCS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dcbnl_numtcs_nest = common dso_local global i32 0, align 4
@DCB_NUMTCS_ATTR_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlmsghdr*, i32, %struct.nlattr**, %struct.sk_buff*)* @dcbnl_setnumtcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_setnumtcs(%struct.net_device* %0, %struct.nlmsghdr* %1, i32 %2, %struct.nlattr** %3, %struct.sk_buff* %4) #0 {
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
  %18 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %24 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %98

31:                                               ; preds = %5
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.net_device*, i32, i32)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %98

41:                                               ; preds = %31
  %42 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %43 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %44 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = load i32, i32* @dcbnl_numtcs_nest, align 4
  %48 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %22, i32 %42, %struct.nlattr* %46, i32 %47, i32* null)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %98

53:                                               ; preds = %41
  %54 = load i32, i32* @DCB_NUMTCS_ATTR_ALL, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %86, %53
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp eq %struct.nlattr* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %86

67:                                               ; preds = %60
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i32 @nla_get_u8(%struct.nlattr* %71)
  store i32 %72, i32* %15, align 4
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %76, align 8
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 %77(%struct.net_device* %78, i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %67
  br label %89

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %56

89:                                               ; preds = %84, %56
  %90 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %91 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @nla_put_u8(%struct.sk_buff* %90, i64 %91, i32 %96)
  store i32 %97, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %98

98:                                               ; preds = %89, %51, %38, %28
  %99 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %6, align 4
  ret i32 %100
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
