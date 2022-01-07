; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee802154_hdr = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.mac802154_llsec_key = type { i32 }
%struct.ieee802154_llsec_key_id = type { i32 }
%struct.mac802154_llsec_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ieee802154_llsec_seclevel = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_llsec_decrypt(%struct.mac802154_llsec* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac802154_llsec*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee802154_hdr, align 8
  %7 = alloca %struct.mac802154_llsec_key*, align 8
  %8 = alloca %struct.ieee802154_llsec_key_id, align 4
  %9 = alloca %struct.mac802154_llsec_device*, align 8
  %10 = alloca %struct.ieee802154_llsec_seclevel, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i64 @ieee802154_hdr_peek(%struct.sk_buff* %14, %struct.ieee802154_hdr* %6)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %145

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %145

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %145

34:                                               ; preds = %26
  %35 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %36 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %35, i32 0, i32 0
  %37 = call i32 @read_lock_bh(i32* %36)
  %38 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %39 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %45 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %44, i32 0, i32 0
  %46 = call i32 @read_unlock_bh(i32* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %145

49:                                               ; preds = %34
  %50 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %51 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %50, i32 0, i32 0
  %52 = call i32 @read_unlock_bh(i32* %51)
  %53 = call i32 (...) @rcu_read_lock()
  %54 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %55 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 2
  %56 = call %struct.mac802154_llsec_key* @llsec_lookup_key(%struct.mac802154_llsec* %54, %struct.ieee802154_hdr* %6, i32* %55, %struct.ieee802154_llsec_key_id* %8)
  store %struct.mac802154_llsec_key* %56, %struct.mac802154_llsec_key** %7, align 8
  %57 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %7, align 8
  %58 = icmp ne %struct.mac802154_llsec_key* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOKEY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %142

62:                                               ; preds = %49
  %63 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %64 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 2
  %65 = call %struct.mac802154_llsec_device* @llsec_lookup_dev(%struct.mac802154_llsec* %63, i32* %64)
  store %struct.mac802154_llsec_device* %65, %struct.mac802154_llsec_device** %9, align 8
  %66 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %9, align 8
  %67 = icmp ne %struct.mac802154_llsec_device* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %11, align 4
  br label %139

71:                                               ; preds = %62
  %72 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %73 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @llsec_lookup_seclevel(%struct.mac802154_llsec* %72, i32 %75, i32 0, %struct.ieee802154_llsec_seclevel* %10)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %139

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.ieee802154_llsec_seclevel, %struct.ieee802154_llsec_seclevel* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @BIT(i64 %86)
  %88 = and i32 %83, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.ieee802154_llsec_seclevel, %struct.ieee802154_llsec_seclevel* %10, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %9, align 8
  %101 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  br label %139

108:                                              ; preds = %99, %95, %90, %81
  %109 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %6, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @le32_to_cpu(i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @EOVERFLOW, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %11, align 4
  br label %139

118:                                              ; preds = %108
  %119 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %9, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @llsec_update_devkey_info(%struct.mac802154_llsec_device* %119, %struct.ieee802154_llsec_key_id* %8, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %139

125:                                              ; preds = %118
  %126 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %9, align 8
  %127 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %12, align 4
  %130 = call i32 (...) @rcu_read_unlock()
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %133 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %7, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @llsec_do_decrypt(%struct.sk_buff* %131, %struct.mac802154_llsec* %132, %struct.ieee802154_hdr* %6, %struct.mac802154_llsec_key* %133, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %7, align 8
  %137 = call i32 @llsec_key_put(%struct.mac802154_llsec_key* %136)
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %3, align 4
  br label %145

139:                                              ; preds = %124, %115, %105, %78, %68
  %140 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %7, align 8
  %141 = call i32 @llsec_key_put(%struct.mac802154_llsec_key* %140)
  br label %142

142:                                              ; preds = %139, %59
  %143 = call i32 (...) @rcu_read_unlock()
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %125, %43, %31, %25, %17
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @ieee802154_hdr_peek(%struct.sk_buff*, %struct.ieee802154_hdr*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mac802154_llsec_key* @llsec_lookup_key(%struct.mac802154_llsec*, %struct.ieee802154_hdr*, i32*, %struct.ieee802154_llsec_key_id*) #1

declare dso_local %struct.mac802154_llsec_device* @llsec_lookup_dev(%struct.mac802154_llsec*, i32*) #1

declare dso_local i64 @llsec_lookup_seclevel(%struct.mac802154_llsec*, i32, i32, %struct.ieee802154_llsec_seclevel*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @llsec_update_devkey_info(%struct.mac802154_llsec_device*, %struct.ieee802154_llsec_key_id*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @llsec_do_decrypt(%struct.sk_buff*, %struct.mac802154_llsec*, %struct.ieee802154_hdr*, %struct.mac802154_llsec_key*, i32) #1

declare dso_local i32 @llsec_key_put(%struct.mac802154_llsec_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
