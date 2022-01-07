; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_getcap.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_getcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32*)* }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@DCB_CAP_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_ATTR_CAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dcbnl_cap_nest = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DCB_CAP_ATTR_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlmsghdr*, i32, %struct.nlattr**, %struct.sk_buff*)* @dcbnl_getcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_getcap(%struct.net_device* %0, %struct.nlmsghdr* %1, i32 %2, %struct.nlattr** %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %20 = load i32, i32* @DCB_CAP_ATTR_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %26 = load i64, i64* @DCB_ATTR_CAP, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

33:                                               ; preds = %5
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %37, align 8
  %39 = icmp ne i32 (%struct.net_device*, i32, i32*)* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

43:                                               ; preds = %33
  %44 = load i32, i32* @DCB_CAP_ATTR_MAX, align 4
  %45 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %46 = load i64, i64* @DCB_ATTR_CAP, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = load i32, i32* @dcbnl_cap_nest, align 4
  %50 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %24, i32 %44, %struct.nlattr* %48, i32 %49, i32* null)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

55:                                               ; preds = %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %57 = load i64, i64* @DCB_ATTR_CAP, align 8
  %58 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %56, i64 %57)
  store %struct.nlattr* %58, %struct.nlattr** %14, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @EMSGSIZE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

64:                                               ; preds = %55
  %65 = load i64, i64* @DCB_CAP_ATTR_ALL, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %18, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i64, i64* @DCB_CAP_ATTR_ALL, align 8
  %72 = add i64 %71, 1
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %112, %70
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @DCB_CAP_ATTR_MAX, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %115

78:                                               ; preds = %74
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %112

88:                                               ; preds = %81, %78
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %92, align 8
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 %93(%struct.net_device* %94, i32 %95, i32* %15)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %88
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @nla_put_u8(%struct.sk_buff* %99, i32 %100, i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %108 = call i32 @nla_nest_cancel(%struct.sk_buff* %106, %struct.nlattr* %107)
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %88
  br label %112

112:                                              ; preds = %111, %87
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %74

115:                                              ; preds = %74
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %118 = call i32 @nla_nest_end(%struct.sk_buff* %116, %struct.nlattr* %117)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %119

119:                                              ; preds = %115, %105, %61, %53, %40, %30
  %120 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i64) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
