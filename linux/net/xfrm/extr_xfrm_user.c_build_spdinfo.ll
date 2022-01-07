; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_spdinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_spdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.xfrmk_spdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrmu_spdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrmu_spdhinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrmu_spdhthresh = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_NEWSPDINFO = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_SPD_INFO = common dso_local global i32 0, align 4
@XFRMA_SPD_HINFO = common dso_local global i32 0, align 4
@XFRMA_SPD_IPV4_HTHRESH = common dso_local global i32 0, align 4
@XFRMA_SPD_IPV6_HTHRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net*, i32, i32, i32)* @build_spdinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_spdinfo(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrmk_spdinfo, align 4
  %13 = alloca %struct.xfrmu_spdinfo, align 4
  %14 = alloca %struct.xfrmu_spdhinfo, align 4
  %15 = alloca %struct.xfrmu_spdhthresh, align 4
  %16 = alloca %struct.xfrmu_spdhthresh, align 4
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net* %1, %struct.net** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @XFRM_MSG_NEWSPDINFO, align 4
  %25 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 4, i32 0)
  store %struct.nlmsghdr* %25, %struct.nlmsghdr** %17, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %27 = icmp eq %struct.nlmsghdr* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %139

31:                                               ; preds = %5
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %33 = call i32* @nlmsg_data(%struct.nlmsghdr* %32)
  store i32* %33, i32** %19, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %19, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.net*, %struct.net** %8, align 8
  %37 = call i32 @xfrm_spd_getinfo(%struct.net* %36, %struct.xfrmk_spdinfo* %12)
  %38 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %13, i32 0, i32 9
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %13, i32 0, i32 8
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %13, i32 0, i32 7
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %13, i32 0, i32 6
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %13, i32 0, i32 5
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %13, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.xfrmu_spdhinfo, %struct.xfrmu_spdhinfo* %14, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.xfrmu_spdhinfo, %struct.xfrmu_spdhinfo* %14, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %92, %31
  %63 = load %struct.net*, %struct.net** %8, align 8
  %64 = getelementptr inbounds %struct.net, %struct.net* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = call i32 @read_seqbegin(i32* %66)
  store i32 %67, i32* %20, align 4
  %68 = load %struct.net*, %struct.net** %8, align 8
  %69 = getelementptr inbounds %struct.net, %struct.net* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %15, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.net*, %struct.net** %8, align 8
  %75 = getelementptr inbounds %struct.net, %struct.net* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %15, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.net*, %struct.net** %8, align 8
  %81 = getelementptr inbounds %struct.net, %struct.net* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %16, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.net*, %struct.net** %8, align 8
  %87 = getelementptr inbounds %struct.net, %struct.net* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %16, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %62
  %93 = load %struct.net*, %struct.net** %8, align 8
  %94 = getelementptr inbounds %struct.net, %struct.net* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = load i32, i32* %20, align 4
  %98 = call i64 @read_seqretry(i32* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %62, label %100

100:                                              ; preds = %92
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = load i32, i32* @XFRMA_SPD_INFO, align 4
  %103 = call i32 @nla_put(%struct.sk_buff* %101, i32 %102, i32 40, %struct.xfrmu_spdinfo* %13)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = load i32, i32* @XFRMA_SPD_HINFO, align 4
  %109 = bitcast %struct.xfrmu_spdhinfo* %14 to %struct.xfrmu_spdinfo*
  %110 = call i32 @nla_put(%struct.sk_buff* %107, i32 %108, i32 40, %struct.xfrmu_spdinfo* %109)
  store i32 %110, i32* %18, align 4
  br label %111

111:                                              ; preds = %106, %100
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = load i32, i32* @XFRMA_SPD_IPV4_HTHRESH, align 4
  %117 = bitcast %struct.xfrmu_spdhthresh* %15 to %struct.xfrmu_spdinfo*
  %118 = call i32 @nla_put(%struct.sk_buff* %115, i32 %116, i32 40, %struct.xfrmu_spdinfo* %117)
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = load i32, i32* @XFRMA_SPD_IPV6_HTHRESH, align 4
  %125 = bitcast %struct.xfrmu_spdhthresh* %16 to %struct.xfrmu_spdinfo*
  %126 = call i32 @nla_put(%struct.sk_buff* %123, i32 %124, i32 40, %struct.xfrmu_spdinfo* %125)
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %132 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %133 = call i32 @nlmsg_cancel(%struct.sk_buff* %131, %struct.nlmsghdr* %132)
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %6, align 4
  br label %139

135:                                              ; preds = %127
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %138 = call i32 @nlmsg_end(%struct.sk_buff* %136, %struct.nlmsghdr* %137)
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %135, %130, %28
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_spd_getinfo(%struct.net*, %struct.xfrmk_spdinfo*) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.xfrmu_spdinfo*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
