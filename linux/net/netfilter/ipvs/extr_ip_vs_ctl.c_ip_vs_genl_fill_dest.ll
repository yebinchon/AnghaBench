; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_dest = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.ip_vs_kstats = type { i32 }

@IPVS_CMD_ATTR_DEST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_ADDR = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_PORT = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_FWD_METHOD = common dso_local global i32 0, align 4
@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_WEIGHT = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_TUN_TYPE = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_TUN_PORT = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_TUN_FLAGS = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_U_THRESH = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_L_THRESH = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_ACTIVE_CONNS = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_INACT_CONNS = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_PERSIST_CONNS = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_ADDR_FAMILY = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_STATS = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_STATS64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_dest*)* @ip_vs_genl_fill_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_fill_dest(%struct.sk_buff* %0, %struct.ip_vs_dest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.ip_vs_kstats, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load i32, i32* @IPVS_CMD_ATTR_DEST, align 4
  %10 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %8, i32 %9)
  store %struct.nlattr* %10, %struct.nlattr** %6, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EMSGSIZE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %147

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @IPVS_DEST_ATTR_ADDR, align 4
  %19 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %20 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %19, i32 0, i32 13
  %21 = call i64 @nla_put(%struct.sk_buff* %17, i32 %18, i32 4, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %121, label %23

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @IPVS_DEST_ATTR_PORT, align 4
  %26 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %27 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @nla_put_be16(%struct.sk_buff* %24, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %121, label %31

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @IPVS_DEST_ATTR_FWD_METHOD, align 4
  %34 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %35 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %34, i32 0, i32 11
  %36 = call i32 @atomic_read(i32* %35)
  %37 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %121, label %41

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @IPVS_DEST_ATTR_WEIGHT, align 4
  %44 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %45 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %44, i32 0, i32 10
  %46 = call i32 @atomic_read(i32* %45)
  %47 = call i64 @nla_put_u32(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %121, label %49

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @IPVS_DEST_ATTR_TUN_TYPE, align 4
  %52 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %53 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_u8(%struct.sk_buff* %50, i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %121, label %57

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* @IPVS_DEST_ATTR_TUN_PORT, align 4
  %60 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %61 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_put_be16(%struct.sk_buff* %58, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %121, label %65

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* @IPVS_DEST_ATTR_TUN_FLAGS, align 4
  %68 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %69 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @nla_put_u16(%struct.sk_buff* %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load i32, i32* @IPVS_DEST_ATTR_U_THRESH, align 4
  %76 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %77 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @nla_put_u32(%struct.sk_buff* %74, i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %121, label %81

81:                                               ; preds = %73
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* @IPVS_DEST_ATTR_L_THRESH, align 4
  %84 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %85 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %82, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %81
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* @IPVS_DEST_ATTR_ACTIVE_CONNS, align 4
  %92 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %93 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %92, i32 0, i32 6
  %94 = call i32 @atomic_read(i32* %93)
  %95 = call i64 @nla_put_u32(%struct.sk_buff* %90, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %121, label %97

97:                                               ; preds = %89
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = load i32, i32* @IPVS_DEST_ATTR_INACT_CONNS, align 4
  %100 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %101 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %100, i32 0, i32 5
  %102 = call i32 @atomic_read(i32* %101)
  %103 = call i64 @nla_put_u32(%struct.sk_buff* %98, i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %97
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = load i32, i32* @IPVS_DEST_ATTR_PERSIST_CONNS, align 4
  %108 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %109 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %108, i32 0, i32 4
  %110 = call i32 @atomic_read(i32* %109)
  %111 = call i64 @nla_put_u32(%struct.sk_buff* %106, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %105
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load i32, i32* @IPVS_DEST_ATTR_ADDR_FAMILY, align 4
  %116 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %117 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @nla_put_u16(%struct.sk_buff* %114, i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113, %105, %97, %89, %81, %73, %65, %57, %49, %41, %31, %23, %16
  br label %141

122:                                              ; preds = %113
  %123 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %124 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %123, i32 0, i32 2
  %125 = call i32 @ip_vs_copy_stats(%struct.ip_vs_kstats* %7, i32* %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load i32, i32* @IPVS_DEST_ATTR_STATS, align 4
  %128 = call i64 @ip_vs_genl_fill_stats(%struct.sk_buff* %126, i32 %127, %struct.ip_vs_kstats* %7)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %141

131:                                              ; preds = %122
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = load i32, i32* @IPVS_DEST_ATTR_STATS64, align 4
  %134 = call i64 @ip_vs_genl_fill_stats64(%struct.sk_buff* %132, i32 %133, %struct.ip_vs_kstats* %7)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %141

137:                                              ; preds = %131
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %140 = call i32 @nla_nest_end(%struct.sk_buff* %138, %struct.nlattr* %139)
  store i32 0, i32* %3, align 4
  br label %147

141:                                              ; preds = %136, %130, %121
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %144 = call i32 @nla_nest_cancel(%struct.sk_buff* %142, %struct.nlattr* %143)
  %145 = load i32, i32* @EMSGSIZE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %141, %137, %13
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ip_vs_copy_stats(%struct.ip_vs_kstats*, i32*) #1

declare dso_local i64 @ip_vs_genl_fill_stats(%struct.sk_buff*, i32, %struct.ip_vs_kstats*) #1

declare dso_local i64 @ip_vs_genl_fill_stats64(%struct.sk_buff*, i32, %struct.ip_vs_kstats*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
