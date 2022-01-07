; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ieee802154_hdr = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.mac802154_llsec_key = type { i32 }

@IEEE802154_FC_TYPE_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_SCF_SECLEVEL_NONE = common dso_local global i64 0, align 8
@IEEE802154_MFR_SIZE = common dso_local global i64 0, align 8
@IEEE802154_MTU = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_llsec_encrypt(%struct.mac802154_llsec* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac802154_llsec*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee802154_hdr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mac802154_llsec_key*, align 8
  %11 = alloca i32, align 4
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @ieee802154_hdr_pull(%struct.sk_buff* %12, %struct.ieee802154_hdr* %6)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE802154_FC_TYPE_DATA, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %138

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IEEE802154_SCF_SECLEVEL_NONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %25
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @skb_push(%struct.sk_buff* %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %138

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 0
  %42 = call i32 @ieee802154_sechdr_authtag_len(%struct.TYPE_6__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i64, i64* @IEEE802154_MFR_SIZE, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* @IEEE802154_MTU, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %138

59:                                               ; preds = %40
  %60 = call i32 (...) @rcu_read_lock()
  %61 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %62 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %61, i32 0, i32 0
  %63 = call i32 @read_lock_bh(i32* %62)
  %64 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %65 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %131

72:                                               ; preds = %59
  %73 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %74 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 1
  %75 = call %struct.mac802154_llsec_key* @llsec_lookup_key(%struct.mac802154_llsec* %73, %struct.ieee802154_hdr* %6, i32* %74, i32* null)
  store %struct.mac802154_llsec_key* %75, %struct.mac802154_llsec_key** %10, align 8
  %76 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %10, align 8
  %77 = icmp ne %struct.mac802154_llsec_key* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @ENOKEY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %131

81:                                               ; preds = %72
  %82 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %83 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %82, i32 0, i32 0
  %84 = call i32 @read_unlock_bh(i32* %83)
  %85 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %86 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %85, i32 0, i32 0
  %87 = call i32 @write_lock_bh(i32* %86)
  %88 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %89 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @cpu_to_le32(i32 %93)
  %95 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %107

99:                                               ; preds = %81
  %100 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %101 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %100, i32 0, i32 0
  %102 = call i32 @write_unlock_bh(i32* %101)
  %103 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %10, align 8
  %104 = call i32 @llsec_key_put(%struct.mac802154_llsec_key* %103)
  %105 = load i32, i32* @EOVERFLOW, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %135

107:                                              ; preds = %81
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @cpu_to_be32(i32 %109)
  %111 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %112 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %115 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %114, i32 0, i32 0
  %116 = call i32 @write_unlock_bh(i32* %115)
  %117 = call i32 (...) @rcu_read_unlock()
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = call i32 @ieee802154_hdr_push(%struct.sk_buff* %118, %struct.ieee802154_hdr* %6)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i32 @skb_reset_mac_header(%struct.sk_buff* %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %126 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %10, align 8
  %127 = call i32 @llsec_do_encrypt(%struct.sk_buff* %124, %struct.mac802154_llsec* %125, %struct.ieee802154_hdr* %6, %struct.mac802154_llsec_key* %126)
  store i32 %127, i32* %7, align 4
  %128 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %10, align 8
  %129 = call i32 @llsec_key_put(%struct.mac802154_llsec_key* %128)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %138

131:                                              ; preds = %78, %69
  %132 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %133 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %132, i32 0, i32 0
  %134 = call i32 @read_unlock_bh(i32* %133)
  br label %135

135:                                              ; preds = %131, %99
  %136 = call i32 (...) @rcu_read_unlock()
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %107, %56, %36, %22
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @ieee802154_hdr_pull(%struct.sk_buff*, %struct.ieee802154_hdr*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee802154_sechdr_authtag_len(%struct.TYPE_6__*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.mac802154_llsec_key* @llsec_lookup_key(%struct.mac802154_llsec*, %struct.ieee802154_hdr*, i32*, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @llsec_key_put(%struct.mac802154_llsec_key*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee802154_hdr_push(%struct.sk_buff*, %struct.ieee802154_hdr*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @llsec_do_encrypt(%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
