; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_set_header_security.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_set_header_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_sub_if_data = type { i32 }
%struct.ieee802154_hdr = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee802154_mac_cb = type { i32, i64, i64, i64 }
%struct.ieee802154_llsec_params = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_SCF_KEY_SHORT_INDEX = common dso_local global i64 0, align 8
@IEEE802154_SCF_KEY_HW_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_sub_if_data*, %struct.ieee802154_hdr*, %struct.ieee802154_mac_cb*)* @mac802154_set_header_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac802154_set_header_security(%struct.ieee802154_sub_if_data* %0, %struct.ieee802154_hdr* %1, %struct.ieee802154_mac_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_sub_if_data*, align 8
  %6 = alloca %struct.ieee802154_hdr*, align 8
  %7 = alloca %struct.ieee802154_mac_cb*, align 8
  %8 = alloca %struct.ieee802154_llsec_params, align 8
  %9 = alloca i32, align 4
  store %struct.ieee802154_sub_if_data* %0, %struct.ieee802154_sub_if_data** %5, align 8
  store %struct.ieee802154_hdr* %1, %struct.ieee802154_hdr** %6, align 8
  store %struct.ieee802154_mac_cb* %2, %struct.ieee802154_mac_cb** %7, align 8
  %10 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %11 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %10, i32 0, i32 0
  %12 = call i32 @mac802154_llsec_get_params(i32* %11, %struct.ieee802154_llsec_params* %8)
  %13 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %7, align 8
  %18 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %7, align 8
  %23 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %121

29:                                               ; preds = %21, %16, %3
  %30 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %7, align 8
  %35 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %7, align 8
  %40 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %33
  %44 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43, %38, %29
  store i32 0, i32* %4, align 4
  br label %121

48:                                               ; preds = %43
  %49 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %7, align 8
  %50 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %7, align 8
  %55 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %121

61:                                               ; preds = %53, %48
  %62 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %7, align 8
  %63 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %7, align 8
  %68 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  br label %73

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i32 [ %69, %66 ], [ %72, %70 ]
  store i32 %74, i32* %9, align 4
  %75 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %6, align 8
  %76 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %6, align 8
  %80 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %6, align 8
  %86 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IEEE802154_SCF_KEY_SHORT_INDEX, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %73
  %94 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %6, align 8
  %98 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 8
  br label %114

100:                                              ; preds = %73
  %101 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IEEE802154_SCF_KEY_HW_INDEX, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %6, align 8
  %111 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %100
  br label %114

114:                                              ; preds = %113, %93
  %115 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %8, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %6, align 8
  %119 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %114, %58, %47, %26
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @mac802154_llsec_get_params(i32*, %struct.ieee802154_llsec_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
