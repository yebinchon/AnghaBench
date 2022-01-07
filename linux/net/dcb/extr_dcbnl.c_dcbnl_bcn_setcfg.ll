; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_bcn_setcfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_bcn_setcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i64, i32)* }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i64 }
%struct.sk_buff = type { i32 }

@DCB_BCN_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_ATTR_BCN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dcbnl_pfc_up_nest = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RP_0 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RP_7 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_BCNA_0 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlmsghdr*, i32, %struct.nlattr**, %struct.sk_buff*)* @dcbnl_bcn_setcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_bcn_setcfg(%struct.net_device* %0, %struct.nlmsghdr* %1, i32 %2, %struct.nlattr** %3, %struct.sk_buff* %4) #0 {
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
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %19 = load i32, i32* @DCB_BCN_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %25 = load i64, i64* @DCB_ATTR_BCN, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %135

32:                                               ; preds = %5
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.net_device*, i32, i32)* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.net_device*, i64, i32)*, i32 (%struct.net_device*, i64, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.net_device*, i64, i32)* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %135

49:                                               ; preds = %39
  %50 = load i32, i32* @DCB_BCN_ATTR_MAX, align 4
  %51 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %52 = load i64, i64* @DCB_ATTR_BCN, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = load i32, i32* @dcbnl_pfc_up_nest, align 4
  %56 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %23, i32 %50, %struct.nlattr* %54, i32 %55, i32* null)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %135

61:                                               ; preds = %49
  %62 = load i32, i32* @DCB_BCN_ATTR_RP_0, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %97, %61
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @DCB_BCN_ATTR_RP_7, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = icmp eq %struct.nlattr* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %97

74:                                               ; preds = %67
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i32 @nla_get_u8(%struct.nlattr* %78)
  store i32 %79, i32* %16, align 4
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32 (%struct.net_device*, i64, i32)*, i32 (%struct.net_device*, i64, i32)** %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @DCB_BCN_ATTR_RP_0, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %91, %93
  %95 = load i32, i32* %16, align 4
  %96 = call i32 %84(%struct.net_device* %85, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %74, %73
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %63

100:                                              ; preds = %63
  %101 = load i32, i32* @DCB_BCN_ATTR_BCNA_0, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %128, %100
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @DCB_BCN_ATTR_RI, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = icmp eq %struct.nlattr* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %128

113:                                              ; preds = %106
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = call i32 @nla_get_u32(%struct.nlattr* %117)
  store i32 %118, i32* %17, align 4
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %122, align 8
  %124 = load %struct.net_device*, %struct.net_device** %7, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i32 %123(%struct.net_device* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %113, %112
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %102

131:                                              ; preds = %102
  %132 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %133 = load i64, i64* @DCB_ATTR_BCN, align 8
  %134 = call i32 @nla_put_u8(%struct.sk_buff* %132, i64 %133, i32 0)
  store i32 %134, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %135

135:                                              ; preds = %131, %59, %46, %29
  %136 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

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
