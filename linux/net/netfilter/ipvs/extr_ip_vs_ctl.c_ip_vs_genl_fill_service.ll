; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_service.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_service = type { i32, i32, i32, i32, i32, i32, i32, %struct.ip_vs_flags, i32, i32, i32 }
%struct.ip_vs_flags = type { i32, i32 }
%struct.ip_vs_scheduler = type { i8* }
%struct.ip_vs_pe = type { i8* }
%struct.nlattr = type { i32 }
%struct.ip_vs_kstats = type { i32 }

@IPVS_CMD_ATTR_SERVICE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_AF = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_FWMARK = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_PROTOCOL = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_ADDR = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@IPVS_SVC_ATTR_SCHED_NAME = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_PE_NAME = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_FLAGS = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_NETMASK = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_STATS = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_STATS64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_service*)* @ip_vs_genl_fill_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_fill_service(%struct.sk_buff* %0, %struct.ip_vs_service* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_service*, align 8
  %6 = alloca %struct.ip_vs_scheduler*, align 8
  %7 = alloca %struct.ip_vs_pe*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.ip_vs_flags, align 4
  %10 = alloca %struct.ip_vs_kstats, align 4
  %11 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_vs_service* %1, %struct.ip_vs_service** %5, align 8
  %12 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %9, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %9, i32 0, i32 1
  %14 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %15 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @IPVS_CMD_ATTR_SERVICE, align 4
  %19 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %17, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %8, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %159

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @IPVS_SVC_ATTR_AF, align 4
  %28 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %29 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @nla_put_u16(%struct.sk_buff* %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %153

34:                                               ; preds = %25
  %35 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %36 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @IPVS_SVC_ATTR_FWMARK, align 4
  %42 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %43 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %153

48:                                               ; preds = %39
  br label %74

49:                                               ; preds = %34
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @IPVS_SVC_ATTR_PROTOCOL, align 4
  %52 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %53 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_u16(%struct.sk_buff* %50, i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* @IPVS_SVC_ATTR_ADDR, align 4
  %60 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %61 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %60, i32 0, i32 7
  %62 = call i64 @nla_put(%struct.sk_buff* %58, i32 %59, i32 8, %struct.ip_vs_flags* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i32, i32* @IPVS_SVC_ATTR_PORT, align 4
  %67 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %68 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @nla_put_be16(%struct.sk_buff* %65, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64, %57, %49
  br label %153

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %76 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @rcu_dereference_protected(i32 %77, i32 1)
  %79 = bitcast i8* %78 to %struct.ip_vs_scheduler*
  store %struct.ip_vs_scheduler* %79, %struct.ip_vs_scheduler** %6, align 8
  %80 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %6, align 8
  %81 = icmp ne %struct.ip_vs_scheduler* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %6, align 8
  %84 = getelementptr inbounds %struct.ip_vs_scheduler, %struct.ip_vs_scheduler* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  br label %87

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i8* [ %85, %82 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %86 ]
  store i8* %88, i8** %11, align 8
  %89 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %90 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @rcu_dereference_protected(i32 %91, i32 1)
  %93 = bitcast i8* %92 to %struct.ip_vs_pe*
  store %struct.ip_vs_pe* %93, %struct.ip_vs_pe** %7, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load i32, i32* @IPVS_SVC_ATTR_SCHED_NAME, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = call i64 @nla_put_string(%struct.sk_buff* %94, i32 %95, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %133, label %99

99:                                               ; preds = %87
  %100 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %7, align 8
  %101 = icmp ne %struct.ip_vs_pe* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = load i32, i32* @IPVS_SVC_ATTR_PE_NAME, align 4
  %105 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %7, align 8
  %106 = getelementptr inbounds %struct.ip_vs_pe, %struct.ip_vs_pe* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @nla_put_string(%struct.sk_buff* %103, i32 %104, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %133, label %110

110:                                              ; preds = %102, %99
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load i32, i32* @IPVS_SVC_ATTR_FLAGS, align 4
  %113 = call i64 @nla_put(%struct.sk_buff* %111, i32 %112, i32 8, %struct.ip_vs_flags* %9)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %110
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load i32, i32* @IPVS_SVC_ATTR_TIMEOUT, align 4
  %118 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %119 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @HZ, align 4
  %122 = sdiv i32 %120, %121
  %123 = call i64 @nla_put_u32(%struct.sk_buff* %116, i32 %117, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %115
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load i32, i32* @IPVS_SVC_ATTR_NETMASK, align 4
  %128 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %129 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @nla_put_be32(%struct.sk_buff* %126, i32 %127, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125, %115, %110, %102, %87
  br label %153

134:                                              ; preds = %125
  %135 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %136 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %135, i32 0, i32 2
  %137 = call i32 @ip_vs_copy_stats(%struct.ip_vs_kstats* %10, i32* %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = load i32, i32* @IPVS_SVC_ATTR_STATS, align 4
  %140 = call i64 @ip_vs_genl_fill_stats(%struct.sk_buff* %138, i32 %139, %struct.ip_vs_kstats* %10)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %153

143:                                              ; preds = %134
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = load i32, i32* @IPVS_SVC_ATTR_STATS64, align 4
  %146 = call i64 @ip_vs_genl_fill_stats64(%struct.sk_buff* %144, i32 %145, %struct.ip_vs_kstats* %10)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %153

149:                                              ; preds = %143
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %152 = call i32 @nla_nest_end(%struct.sk_buff* %150, %struct.nlattr* %151)
  store i32 0, i32* %3, align 4
  br label %159

153:                                              ; preds = %148, %142, %133, %72, %47, %33
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %156 = call i32 @nla_nest_cancel(%struct.sk_buff* %154, %struct.nlattr* %155)
  %157 = load i32, i32* @EMSGSIZE, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %153, %149, %22
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.ip_vs_flags*) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

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
