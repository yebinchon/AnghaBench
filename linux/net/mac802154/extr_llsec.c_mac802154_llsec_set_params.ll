; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee802154_llsec_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IEEE802154_LLSEC_PARAM_ENABLED = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_FRAME_COUNTER = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_OUT_LEVEL = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_OUT_KEY = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_KEY_SOURCE = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_PAN_ID = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_HWADDR = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_COORD_HWADDR = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_COORD_SHORTADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_llsec_set_params(%struct.mac802154_llsec* %0, %struct.ieee802154_llsec_params* %1, i32 %2) #0 {
  %4 = alloca %struct.mac802154_llsec*, align 8
  %5 = alloca %struct.ieee802154_llsec_params*, align 8
  %6 = alloca i32, align 4
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %4, align 8
  store %struct.ieee802154_llsec_params* %1, %struct.ieee802154_llsec_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %8 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %7, i32 0, i32 0
  %9 = call i32 @write_lock_bh(i32* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IEEE802154_LLSEC_PARAM_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %16 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %19 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 8
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IEEE802154_LLSEC_PARAM_FRAME_COUNTER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %28 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %31 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 7
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IEEE802154_LLSEC_PARAM_OUT_LEVEL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %40 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %43 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @IEEE802154_LLSEC_PARAM_OUT_KEY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %52 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %55 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @IEEE802154_LLSEC_PARAM_KEY_SOURCE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %64 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %67 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @IEEE802154_LLSEC_PARAM_PAN_ID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %76 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %79 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %69
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @IEEE802154_LLSEC_PARAM_HWADDR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %88 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %91 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %81
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @IEEE802154_LLSEC_PARAM_COORD_HWADDR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %100 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %103 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %93
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @IEEE802154_LLSEC_PARAM_COORD_SHORTADDR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %5, align 8
  %112 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %115 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  br label %117

117:                                              ; preds = %110, %105
  %118 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %119 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %118, i32 0, i32 0
  %120 = call i32 @write_unlock_bh(i32* %119)
  ret i32 0
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
