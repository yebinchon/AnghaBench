; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_setup_sdata.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_setup_sdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_sub_if_data = type { %struct.TYPE_2__*, i32, i32, %struct.wpan_dev }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32, i32*, i32 }
%struct.wpan_dev = type { i32, i32, i32, i32, i32, i32, i32*, i32, i8*, i8*, i32, i32 }

@IEEE802154_PANID_BROADCAST = common dso_local global i32 0, align 4
@IEEE802154_ADDR_BROADCAST = common dso_local global i32 0, align 4
@mac802154_header_ops = common dso_local global i32 0, align 4
@mac802154_wpan_free = common dso_local global i32 0, align 4
@mac802154_wpan_ops = common dso_local global i32 0, align 4
@mac802154_mlme_wpan = common dso_local global i32 0, align 4
@ieee802154_header_ops = common dso_local global i32 0, align 4
@mac802154_monitor_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_sub_if_data*, i32)* @ieee802154_setup_sdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_setup_sdata(%struct.ieee802154_sub_if_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_sub_if_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpan_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee802154_sub_if_data* %0, %struct.ieee802154_sub_if_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %10 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %9, i32 0, i32 3
  store %struct.wpan_dev* %10, %struct.wpan_dev** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = call i32 @get_random_bytes(i32* %8, i32 4)
  %16 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %17 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %16, i32 0, i32 11
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @atomic_set(i32* %17, i32 %18)
  %20 = call i32 @get_random_bytes(i32* %8, i32 4)
  %21 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %22 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %21, i32 0, i32 10
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @atomic_set(i32* %22, i32 %23)
  %25 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %26 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %25, i32 0, i32 1
  store i32 3, i32* %26, align 4
  %27 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %28 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %27, i32 0, i32 2
  store i32 5, i32* %28, align 8
  %29 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %30 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %29, i32 0, i32 3
  store i32 4, i32* %30, align 4
  %31 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %32 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %31, i32 0, i32 4
  store i32 3, i32* %32, align 8
  %33 = load i32, i32* @IEEE802154_PANID_BROADCAST, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %36 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @IEEE802154_ADDR_BROADCAST, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %40 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %102 [
    i32 128, label %42
    i32 129, label %91
  ]

42:                                               ; preds = %2
  %43 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %44 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %43, i32 0, i32 7
  %45 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %46 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ieee802154_be64_to_le64(i32* %44, i32 %49)
  %51 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %52 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  store i32* @mac802154_header_ops, i32** %54, align 8
  %55 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %56 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* @mac802154_wpan_free, align 4
  %60 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %61 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 8
  %64 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %65 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32* @mac802154_wpan_ops, i32** %67, align 8
  %68 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %69 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32* @mac802154_mlme_wpan, i32** %71, align 8
  %72 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %73 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %72, i32 0, i32 5
  store i32 0, i32* %73, align 4
  %74 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %75 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %74, i32 0, i32 6
  store i32* @ieee802154_header_ops, i32** %75, align 8
  %76 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %77 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %76, i32 0, i32 2
  %78 = call i32 @mutex_init(i32* %77)
  %79 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %80 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %79, i32 0, i32 1
  %81 = call i32 @mac802154_llsec_init(i32* %80)
  %82 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %83 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = call i32 @mac802154_wpan_update_llsec(%struct.TYPE_2__* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %42
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %105

90:                                               ; preds = %42
  br label %104

91:                                               ; preds = %2
  %92 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %93 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %97 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32* @mac802154_monitor_ops, i32** %99, align 8
  %100 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %101 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %100, i32 0, i32 5
  store i32 1, i32* %101, align 4
  br label %104

102:                                              ; preds = %2
  %103 = call i32 (...) @BUG()
  br label %104

104:                                              ; preds = %102, %91, %90
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %88
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ieee802154_be64_to_le64(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mac802154_llsec_init(i32*) #1

declare dso_local i32 @mac802154_wpan_update_llsec(%struct.TYPE_2__*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
