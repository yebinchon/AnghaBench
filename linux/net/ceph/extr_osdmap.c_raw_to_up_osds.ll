; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_raw_to_up_osds.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_raw_to_up_osds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32 }
%struct.ceph_pg_pool_info = type { i32 }
%struct.ceph_osds = type { i32, i32, i32* }

@CRUSH_ITEM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osdmap*, %struct.ceph_pg_pool_info*, %struct.ceph_osds*)* @raw_to_up_osds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_to_up_osds(%struct.ceph_osdmap* %0, %struct.ceph_pg_pool_info* %1, %struct.ceph_osds* %2) #0 {
  %4 = alloca %struct.ceph_osdmap*, align 8
  %5 = alloca %struct.ceph_pg_pool_info*, align 8
  %6 = alloca %struct.ceph_osds*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_osdmap* %0, %struct.ceph_osdmap** %4, align 8
  store %struct.ceph_pg_pool_info* %1, %struct.ceph_pg_pool_info** %5, align 8
  store %struct.ceph_osds* %2, %struct.ceph_osds** %6, align 8
  %9 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %10 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %5, align 8
  %16 = call i64 @ceph_can_shift_osds(%struct.ceph_pg_pool_info* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %59, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %27 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %28 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ceph_osd_is_down(%struct.ceph_osdmap* %26, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %59

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %44 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %51 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 %49, i32* %57, align 4
  br label %58

58:                                               ; preds = %42, %39
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %19

62:                                               ; preds = %19
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %65 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %69 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %74 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %79 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %72, %62
  br label %123

81:                                               ; preds = %3
  %82 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %83 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %119, %81
  %87 = load i32, i32* %7, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %86
  %90 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %91 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %92 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @ceph_osd_is_down(%struct.ceph_osdmap* %90, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %102 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %103 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %118

108:                                              ; preds = %89
  %109 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %110 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %117 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %108, %100
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %7, align 4
  br label %86

122:                                              ; preds = %86
  br label %123

123:                                              ; preds = %122, %80
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ceph_can_shift_osds(%struct.ceph_pg_pool_info*) #1

declare dso_local i64 @ceph_osd_is_down(%struct.ceph_osdmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
