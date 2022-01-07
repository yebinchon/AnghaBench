; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_get_temp_osds.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_get_temp_osds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32, i32 }
%struct.ceph_pg_pool_info = type { i32 }
%struct.ceph_pg = type { i32 }
%struct.ceph_osds = type { i64*, i32, i64 }
%struct.ceph_pg_mapping = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64* }

@CRUSH_ITEM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osdmap*, %struct.ceph_pg_pool_info*, %struct.ceph_pg*, %struct.ceph_osds*)* @get_temp_osds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_temp_osds(%struct.ceph_osdmap* %0, %struct.ceph_pg_pool_info* %1, %struct.ceph_pg* %2, %struct.ceph_osds* %3) #0 {
  %5 = alloca %struct.ceph_osdmap*, align 8
  %6 = alloca %struct.ceph_pg_pool_info*, align 8
  %7 = alloca %struct.ceph_pg*, align 8
  %8 = alloca %struct.ceph_osds*, align 8
  %9 = alloca %struct.ceph_pg_mapping*, align 8
  %10 = alloca i32, align 4
  store %struct.ceph_osdmap* %0, %struct.ceph_osdmap** %5, align 8
  store %struct.ceph_pg_pool_info* %1, %struct.ceph_pg_pool_info** %6, align 8
  store %struct.ceph_pg* %2, %struct.ceph_pg** %7, align 8
  store %struct.ceph_osds* %3, %struct.ceph_osds** %8, align 8
  %11 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %12 = call i32 @ceph_osds_init(%struct.ceph_osds* %11)
  %13 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %13, i32 0, i32 1
  %15 = load %struct.ceph_pg*, %struct.ceph_pg** %7, align 8
  %16 = call %struct.ceph_pg_mapping* @lookup_pg_mapping(i32* %14, %struct.ceph_pg* %15)
  store %struct.ceph_pg_mapping* %16, %struct.ceph_pg_mapping** %9, align 8
  %17 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %9, align 8
  %18 = icmp ne %struct.ceph_pg_mapping* %17, null
  br i1 %18, label %19, label %109

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %9, align 8
  %23 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %20
  %28 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %29 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %9, align 8
  %30 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @ceph_osd_is_down(%struct.ceph_osdmap* %28, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %27
  %40 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %6, align 8
  %41 = call i64 @ceph_can_shift_osds(%struct.ceph_pg_pool_info* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %74

44:                                               ; preds = %39
  %45 = load i64, i64* @CRUSH_ITEM_NONE, align 8
  %46 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %47 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %50 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i64, i64* %48, i64 %53
  store i64 %45, i64* %54, align 8
  br label %73

55:                                               ; preds = %27
  %56 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %9, align 8
  %57 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %65 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %68 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i64, i64* %66, i64 %71
  store i64 %63, i64* %72, align 8
  br label %73

73:                                               ; preds = %55, %44
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %20

77:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %105, %77
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %81 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %78
  %85 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %86 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CRUSH_ITEM_NONE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %84
  %95 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %96 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %103 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  br label %108

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %78

108:                                              ; preds = %94, %78
  br label %109

109:                                              ; preds = %108, %4
  %110 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %111 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %110, i32 0, i32 0
  %112 = load %struct.ceph_pg*, %struct.ceph_pg** %7, align 8
  %113 = call %struct.ceph_pg_mapping* @lookup_pg_mapping(i32* %111, %struct.ceph_pg* %112)
  store %struct.ceph_pg_mapping* %113, %struct.ceph_pg_mapping** %9, align 8
  %114 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %9, align 8
  %115 = icmp ne %struct.ceph_pg_mapping* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %9, align 8
  %118 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %122 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %109
  ret void
}

declare dso_local i32 @ceph_osds_init(%struct.ceph_osds*) #1

declare dso_local %struct.ceph_pg_mapping* @lookup_pg_mapping(i32*, %struct.ceph_pg*) #1

declare dso_local i64 @ceph_osd_is_down(%struct.ceph_osdmap*, i64) #1

declare dso_local i64 @ceph_can_shift_osds(%struct.ceph_pg_pool_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
