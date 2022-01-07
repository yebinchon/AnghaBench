; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_bcn_getcfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_bcn_getcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)* }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@DCB_BCN_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_ATTR_BCN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dcbnl_bcn_nest = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_ALL = common dso_local global i64 0, align 8
@DCB_BCN_ATTR_RP_0 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RP_7 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_BCNA_0 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlmsghdr*, i32, %struct.nlattr**, %struct.sk_buff*)* @dcbnl_bcn_getcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_bcn_getcfg(%struct.net_device* %0, %struct.nlmsghdr* %1, i32 %2, %struct.nlattr** %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %21 = load i32, i32* @DCB_BCN_ATTR_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %27 = load i64, i64* @DCB_ATTR_BCN, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %161

34:                                               ; preds = %5
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %38, align 8
  %40 = icmp ne i32 (%struct.net_device*, i32, i32*)* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %45, align 8
  %47 = icmp ne i32 (%struct.net_device*, i32, i32*)* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41, %34
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %161

51:                                               ; preds = %41
  %52 = load i32, i32* @DCB_BCN_ATTR_MAX, align 4
  %53 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %54 = load i64, i64* @DCB_ATTR_BCN, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = load i32, i32* @dcbnl_bcn_nest, align 4
  %58 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %25, i32 %52, %struct.nlattr* %56, i32 %57, i32* null)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %161

63:                                               ; preds = %51
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = load i64, i64* @DCB_ATTR_BCN, align 8
  %66 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %64, i64 %65)
  store %struct.nlattr* %66, %struct.nlattr** %12, align 8
  %67 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %161

72:                                               ; preds = %63
  %73 = load i64, i64* @DCB_BCN_ATTR_ALL, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %72
  %79 = load i32, i32* @DCB_BCN_ATTR_RP_0, align 4
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %113, %78
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @DCB_BCN_ATTR_RP_7, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %80
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %113

94:                                               ; preds = %87, %84
  %95 = load %struct.net_device*, %struct.net_device** %7, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %98, align 8
  %100 = load %struct.net_device*, %struct.net_device** %7, align 8
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @DCB_BCN_ATTR_RP_0, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 %99(%struct.net_device* %100, i32 %103, i32* %15)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @nla_put_u8(%struct.sk_buff* %105, i32 %106, i32 %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %94
  br label %156

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %93
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %80

116:                                              ; preds = %80
  %117 = load i32, i32* @DCB_BCN_ATTR_BCNA_0, align 4
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %149, %116
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* @DCB_BCN_ATTR_RI, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %152

122:                                              ; preds = %118
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = icmp ne %struct.nlattr* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  br label %149

132:                                              ; preds = %125, %122
  %133 = load %struct.net_device*, %struct.net_device** %7, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %136, align 8
  %138 = load %struct.net_device*, %struct.net_device** %7, align 8
  %139 = load i32, i32* %19, align 4
  %140 = call i32 %137(%struct.net_device* %138, i32 %139, i32* %16)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @nla_put_u32(%struct.sk_buff* %141, i32 %142, i32 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %132
  br label %156

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148, %131
  %150 = load i32, i32* %19, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %19, align 4
  br label %118

152:                                              ; preds = %118
  %153 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %154 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %155 = call i32 @nla_nest_end(%struct.sk_buff* %153, %struct.nlattr* %154)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %161

156:                                              ; preds = %147, %111
  %157 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %158 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %159 = call i32 @nla_nest_cancel(%struct.sk_buff* %157, %struct.nlattr* %158)
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %161

161:                                              ; preds = %156, %152, %69, %61, %48, %31
  %162 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i64) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
