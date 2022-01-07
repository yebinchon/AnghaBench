; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_fill_mroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_fill_mroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mfc_cache = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.rtmsg = type { i32, i32, i64, i32, i32, i32, i32, i64, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@RTNL_FAMILY_IPMR = common dso_local global i32 0, align 4
@RTA_TABLE = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@MFC_STATIC = common dso_local global i32 0, align 4
@RTPROT_STATIC = common dso_local global i32 0, align 4
@RTPROT_MROUTED = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.sk_buff*, i32, i32, %struct.mfc_cache*, i32, i32)* @ipmr_fill_mroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_fill_mroute(%struct.mr_table* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.mfc_cache* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mr_table*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mfc_cache*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.rtmsg*, align 8
  %18 = alloca i32, align 4
  store %struct.mr_table* %0, %struct.mr_table** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.mfc_cache* %4, %struct.mfc_cache** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %19, i32 %20, i32 %21, i32 %22, i32 48, i32 %23)
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %16, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %26 = icmp ne %struct.nlmsghdr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %121

30:                                               ; preds = %7
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %32 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %31)
  store %struct.rtmsg* %32, %struct.rtmsg** %17, align 8
  %33 = load i32, i32* @RTNL_FAMILY_IPMR, align 4
  %34 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %35 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %37 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %36, i32 0, i32 0
  store i32 32, i32* %37, align 8
  %38 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %39 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %38, i32 0, i32 1
  store i32 32, i32* %39, align 4
  %40 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %41 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.mr_table*, %struct.mr_table** %9, align 8
  %43 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %46 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = load i32, i32* @RTA_TABLE, align 4
  %49 = load %struct.mr_table*, %struct.mr_table** %9, align 8
  %50 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %30
  br label %115

55:                                               ; preds = %30
  %56 = load i32, i32* @RTN_MULTICAST, align 4
  %57 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %58 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %60 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %61 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mfc_cache*, %struct.mfc_cache** %13, align 8
  %63 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MFC_STATIC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load i32, i32* @RTPROT_STATIC, align 4
  %71 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %72 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %55
  %74 = load i32, i32* @RTPROT_MROUTED, align 4
  %75 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %76 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %79 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = load i32, i32* @RTA_SRC, align 4
  %82 = load %struct.mfc_cache*, %struct.mfc_cache** %13, align 8
  %83 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @nla_put_in_addr(%struct.sk_buff* %80, i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %77
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = load i32, i32* @RTA_DST, align 4
  %90 = load %struct.mfc_cache*, %struct.mfc_cache** %13, align 8
  %91 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @nla_put_in_addr(%struct.sk_buff* %88, i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %77
  br label %115

96:                                               ; preds = %87
  %97 = load %struct.mr_table*, %struct.mr_table** %9, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = load %struct.mfc_cache*, %struct.mfc_cache** %13, align 8
  %100 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %99, i32 0, i32 0
  %101 = load %struct.rtmsg*, %struct.rtmsg** %17, align 8
  %102 = call i32 @mr_fill_mroute(%struct.mr_table* %97, %struct.sk_buff* %98, %struct.TYPE_2__* %100, %struct.rtmsg* %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %115

111:                                              ; preds = %105, %96
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %114 = call i32 @nlmsg_end(%struct.sk_buff* %112, %struct.nlmsghdr* %113)
  store i32 0, i32* %8, align 4
  br label %121

115:                                              ; preds = %110, %95, %54
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %118 = call i32 @nlmsg_cancel(%struct.sk_buff* %116, %struct.nlmsghdr* %117)
  %119 = load i32, i32* @EMSGSIZE, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %115, %111, %27
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @mr_fill_mroute(%struct.mr_table*, %struct.sk_buff*, %struct.TYPE_2__*, %struct.rtmsg*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
