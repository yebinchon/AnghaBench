; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_set_spdinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_set_spdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.xfrmu_spdhthresh = type { i32, i32 }

@XFRMA_SPD_IPV4_HTHRESH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XFRMA_SPD_IPV6_HTHRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_set_spdinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_set_spdinfo(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrmu_spdhthresh*, align 8
  %10 = alloca %struct.xfrmu_spdhthresh*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @sock_net(i32 %15)
  store %struct.net* %16, %struct.net** %8, align 8
  store %struct.xfrmu_spdhthresh* null, %struct.xfrmu_spdhthresh** %9, align 8
  store %struct.xfrmu_spdhthresh* null, %struct.xfrmu_spdhthresh** %10, align 8
  %17 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %18 = load i64, i64* @XFRMA_SPD_IPV4_HTHRESH, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %3
  %23 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %24 = load i64, i64* @XFRMA_SPD_IPV4_HTHRESH, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  store %struct.nlattr* %26, %struct.nlattr** %11, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %28 = call i32 @nla_len(%struct.nlattr* %27)
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %140

34:                                               ; preds = %22
  %35 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %36 = call %struct.xfrmu_spdhthresh* @nla_data(%struct.nlattr* %35)
  store %struct.xfrmu_spdhthresh* %36, %struct.xfrmu_spdhthresh** %9, align 8
  %37 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %9, align 8
  %38 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 32
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %9, align 8
  %43 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 32
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %140

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %52 = load i64, i64* @XFRMA_SPD_IPV6_HTHRESH, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %58 = load i64, i64* @XFRMA_SPD_IPV6_HTHRESH, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  store %struct.nlattr* %60, %struct.nlattr** %12, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %62 = call i32 @nla_len(%struct.nlattr* %61)
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 8
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %140

68:                                               ; preds = %56
  %69 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %70 = call %struct.xfrmu_spdhthresh* @nla_data(%struct.nlattr* %69)
  store %struct.xfrmu_spdhthresh* %70, %struct.xfrmu_spdhthresh** %10, align 8
  %71 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %10, align 8
  %72 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 128
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %10, align 8
  %77 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 128
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %68
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %140

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %50
  %85 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %9, align 8
  %86 = icmp ne %struct.xfrmu_spdhthresh* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %10, align 8
  %89 = icmp ne %struct.xfrmu_spdhthresh* %88, null
  br i1 %89, label %90, label %139

90:                                               ; preds = %87, %84
  %91 = load %struct.net*, %struct.net** %8, align 8
  %92 = getelementptr inbounds %struct.net, %struct.net* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = call i32 @write_seqlock(i32* %94)
  %96 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %9, align 8
  %97 = icmp ne %struct.xfrmu_spdhthresh* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %90
  %99 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %9, align 8
  %100 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.net*, %struct.net** %8, align 8
  %103 = getelementptr inbounds %struct.net, %struct.net* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %9, align 8
  %107 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.net*, %struct.net** %8, align 8
  %110 = getelementptr inbounds %struct.net, %struct.net* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %98, %90
  %114 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %10, align 8
  %115 = icmp ne %struct.xfrmu_spdhthresh* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %10, align 8
  %118 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.net*, %struct.net** %8, align 8
  %121 = getelementptr inbounds %struct.net, %struct.net* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 4
  %124 = load %struct.xfrmu_spdhthresh*, %struct.xfrmu_spdhthresh** %10, align 8
  %125 = getelementptr inbounds %struct.xfrmu_spdhthresh, %struct.xfrmu_spdhthresh* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.net*, %struct.net** %8, align 8
  %128 = getelementptr inbounds %struct.net, %struct.net* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %116, %113
  %132 = load %struct.net*, %struct.net** %8, align 8
  %133 = getelementptr inbounds %struct.net, %struct.net* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = call i32 @write_sequnlock(i32* %135)
  %137 = load %struct.net*, %struct.net** %8, align 8
  %138 = call i32 @xfrm_policy_hash_rebuild(%struct.net* %137)
  br label %139

139:                                              ; preds = %131, %87
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %80, %65, %46, %31
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.xfrmu_spdhthresh* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @xfrm_policy_hash_rebuild(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
