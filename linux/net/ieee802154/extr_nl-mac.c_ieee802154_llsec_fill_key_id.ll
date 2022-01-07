; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_llsec_fill_key_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_llsec_fill_key_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee802154_llsec_key_id = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@IEEE802154_ATTR_LLSEC_KEY_MODE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IEEE802154_SCF_KEY_IMPLICIT = common dso_local global i64 0, align 8
@IEEE802154_ATTR_PAN_ID = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i64 0, align 8
@IEEE802154_ATTR_SHORT_ADDR = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i64 0, align 8
@IEEE802154_ATTR_HW_ADDR = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAD = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_KEY_ID = common dso_local global i32 0, align 4
@IEEE802154_SCF_KEY_SHORT_INDEX = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT = common dso_local global i32 0, align 4
@IEEE802154_SCF_KEY_HW_INDEX = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee802154_llsec_key_id*)* @ieee802154_llsec_fill_key_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_llsec_fill_key_id(%struct.sk_buff* %0, %struct.ieee802154_llsec_key_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee802154_llsec_key_id*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee802154_llsec_key_id* %1, %struct.ieee802154_llsec_key_id** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @IEEE802154_ATTR_LLSEC_KEY_MODE, align 4
  %8 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %9 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @nla_put_u8(%struct.sk_buff* %6, i32 %7, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EMSGSIZE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %128

16:                                               ; preds = %2
  %17 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %18 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE802154_SCF_KEY_IMPLICIT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @IEEE802154_ATTR_PAN_ID, align 4
  %25 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %26 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @nla_put_shortaddr(%struct.sk_buff* %23, i32 %24, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EMSGSIZE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %128

34:                                               ; preds = %22
  %35 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %36 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IEEE802154_ADDR_SHORT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @IEEE802154_ATTR_SHORT_ADDR, align 4
  %44 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %45 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_shortaddr(%struct.sk_buff* %42, i32 %43, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %128

53:                                               ; preds = %41, %34
  %54 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %55 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IEEE802154_ADDR_LONG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load i32, i32* @IEEE802154_ATTR_HW_ADDR, align 4
  %63 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %64 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IEEE802154_ATTR_PAD, align 4
  %68 = call i64 @nla_put_hwaddr(%struct.sk_buff* %61, i32 %62, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EMSGSIZE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %128

73:                                               ; preds = %60, %53
  br label %74

74:                                               ; preds = %73, %16
  %75 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %76 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IEEE802154_SCF_KEY_IMPLICIT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load i32, i32* @IEEE802154_ATTR_LLSEC_KEY_ID, align 4
  %83 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %84 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @nla_put_u8(%struct.sk_buff* %81, i32 %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @EMSGSIZE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %128

91:                                               ; preds = %80, %74
  %92 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %93 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IEEE802154_SCF_KEY_SHORT_INDEX, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = load i32, i32* @IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT, align 4
  %100 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %101 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = call i64 @nla_put_u32(%struct.sk_buff* %98, i32 %99, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @EMSGSIZE, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %128

109:                                              ; preds = %97, %91
  %110 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %111 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IEEE802154_SCF_KEY_HW_INDEX, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load i32, i32* @IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED, align 4
  %118 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %119 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IEEE802154_ATTR_PAD, align 4
  %122 = call i64 @nla_put_hwaddr(%struct.sk_buff* %116, i32 %117, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32, i32* @EMSGSIZE, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %128

127:                                              ; preds = %115, %109
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %124, %106, %88, %70, %50, %31, %13
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_shortaddr(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_hwaddr(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
