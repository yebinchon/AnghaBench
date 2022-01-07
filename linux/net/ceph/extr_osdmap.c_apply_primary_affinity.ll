; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_apply_primary_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_apply_primary_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i64* }
%struct.ceph_pg_pool_info = type { i32 }
%struct.ceph_osds = type { i32, i32*, i32 }

@CRUSH_ITEM_NONE = common dso_local global i32 0, align 4
@CEPH_OSD_DEFAULT_PRIMARY_AFFINITY = common dso_local global i64 0, align 8
@CEPH_OSD_MAX_PRIMARY_AFFINITY = common dso_local global i32 0, align 4
@CRUSH_HASH_RJENKINS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osdmap*, %struct.ceph_pg_pool_info*, i32, %struct.ceph_osds*)* @apply_primary_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_primary_affinity(%struct.ceph_osdmap* %0, %struct.ceph_pg_pool_info* %1, i32 %2, %struct.ceph_osds* %3) #0 {
  %5 = alloca %struct.ceph_osdmap*, align 8
  %6 = alloca %struct.ceph_pg_pool_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_osds*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ceph_osdmap* %0, %struct.ceph_osdmap** %5, align 8
  store %struct.ceph_pg_pool_info* %1, %struct.ceph_pg_pool_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ceph_osds* %3, %struct.ceph_osds** %8, align 8
  store i32 -1, i32* %10, align 4
  %14 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %161

19:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %49, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %23 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %28 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %26
  %38 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CEPH_OSD_DEFAULT_PRIMARY_AFFINITY, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37, %26
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %20

52:                                               ; preds = %47, %20
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %55 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %161

59:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %107, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %63 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %110

66:                                               ; preds = %60
  %67 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %68 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %107

78:                                               ; preds = %66
  %79 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %80 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @CEPH_OSD_MAX_PRIMARY_AFFINITY, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %78
  %91 = load i32, i32* @CRUSH_HASH_RJENKINS1, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @crush_hash32_2(i32 %91, i32 %92, i32 %93)
  %95 = ashr i32 %94, 16
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %98
  br label %106

104:                                              ; preds = %90, %78
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %10, align 4
  br label %110

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106, %77
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %60

110:                                              ; preds = %104, %60
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %161

114:                                              ; preds = %110
  %115 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %116 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %123 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %6, align 8
  %125 = call i64 @ceph_can_shift_osds(%struct.ceph_pg_pool_info* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %114
  %128 = load i32, i32* %10, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %161

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %150, %130
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %132
  %136 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %137 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %145 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  br label %150

150:                                              ; preds = %135
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %9, align 4
  br label %132

153:                                              ; preds = %132
  %154 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %155 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ceph_osds*, %struct.ceph_osds** %8, align 8
  %158 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %18, %58, %113, %153, %127, %114
  ret void
}

declare dso_local i32 @crush_hash32_2(i32, i32, i32) #1

declare dso_local i64 @ceph_can_shift_osds(%struct.ceph_pg_pool_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
