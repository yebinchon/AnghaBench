; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_cee_pg_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_cee_pg_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.dcbnl_rtnl_ops* }
%struct.dcbnl_rtnl_ops = type { i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* }
%struct.nlattr = type { i32 }

@DCB_ATTR_CEE_TX_PG = common dso_local global i32 0, align 4
@DCB_ATTR_CEE_RX_PG = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_7 = common dso_local global i32 0, align 4
@DCB_ATTR_VALUE_UNDEFINED = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_PGID = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_UP_MAPPING = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_STRICT_PRIO = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_BW_PCT = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @dcbnl_cee_pg_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_cee_pg_fill(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dcbnl_rtnl_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %17, align 8
  store %struct.dcbnl_rtnl_ops* %18, %struct.dcbnl_rtnl_ops** %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @DCB_ATTR_CEE_TX_PG, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @DCB_ATTR_CEE_RX_PG, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %13, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %27, i32 %28)
  store %struct.nlattr* %29, %struct.nlattr** %14, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %154

35:                                               ; preds = %25
  %36 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %106, %35
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @DCB_PG_ATTR_TC_7, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %109

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %42, i32 %43)
  store %struct.nlattr* %44, %struct.nlattr** %15, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %154

50:                                               ; preds = %41
  %51 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %12, align 8
  %59 = getelementptr inbounds %struct.dcbnl_rtnl_ops, %struct.dcbnl_rtnl_ops* %58, i32 0, i32 3
  %60 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 %60(%struct.net_device* %61, i32 %64, i32* %10, i32* %8, i32* %11, i32* %9)
  br label %75

66:                                               ; preds = %50
  %67 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %12, align 8
  %68 = getelementptr inbounds %struct.dcbnl_rtnl_ops, %struct.dcbnl_rtnl_ops* %67, i32 0, i32 2
  %69 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %68, align 8
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 %69(%struct.net_device* %70, i32 %73, i32* %10, i32* %8, i32* %11, i32* %9)
  br label %75

75:                                               ; preds = %66, %57
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* @DCB_TC_ATTR_PARAM_PGID, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @nla_put_u8(%struct.sk_buff* %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load i32, i32* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @nla_put_u8(%struct.sk_buff* %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = load i32, i32* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @nla_put_u8(%struct.sk_buff* %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = load i32, i32* @DCB_TC_ATTR_PARAM_BW_PCT, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @nla_put_u8(%struct.sk_buff* %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93, %87, %81, %75
  %100 = load i32, i32* @EMSGSIZE, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %154

102:                                              ; preds = %93
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %105 = call i32 @nla_nest_end(%struct.sk_buff* %103, %struct.nlattr* %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %37

109:                                              ; preds = %37
  %110 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %147, %109
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @DCB_PG_ATTR_BW_ID_7, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %150

115:                                              ; preds = %111
  %116 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %115
  %120 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %12, align 8
  %121 = getelementptr inbounds %struct.dcbnl_rtnl_ops, %struct.dcbnl_rtnl_ops* %120, i32 0, i32 1
  %122 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %121, align 8
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 %122(%struct.net_device* %123, i32 %126, i32* %11)
  br label %137

128:                                              ; preds = %115
  %129 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %12, align 8
  %130 = getelementptr inbounds %struct.dcbnl_rtnl_ops, %struct.dcbnl_rtnl_ops* %129, i32 0, i32 0
  %131 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %6, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %135 = sub nsw i32 %133, %134
  %136 = call i32 %131(%struct.net_device* %132, i32 %135, i32* %11)
  br label %137

137:                                              ; preds = %128, %119
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i64 @nla_put_u8(%struct.sk_buff* %138, i32 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @EMSGSIZE, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %154

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %111

150:                                              ; preds = %111
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %153 = call i32 @nla_nest_end(%struct.sk_buff* %151, %struct.nlattr* %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %150, %143, %99, %47, %32
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
