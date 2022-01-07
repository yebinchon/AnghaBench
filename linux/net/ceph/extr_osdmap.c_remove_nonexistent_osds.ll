; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_remove_nonexistent_osds.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_remove_nonexistent_osds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32 }
%struct.ceph_pg_pool_info = type { i32 }
%struct.ceph_osds = type { i32, i32* }

@CRUSH_ITEM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osdmap*, %struct.ceph_pg_pool_info*, %struct.ceph_osds*)* @remove_nonexistent_osds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_nonexistent_osds(%struct.ceph_osdmap* %0, %struct.ceph_pg_pool_info* %1, %struct.ceph_osds* %2) #0 {
  %4 = alloca %struct.ceph_osdmap*, align 8
  %5 = alloca %struct.ceph_pg_pool_info*, align 8
  %6 = alloca %struct.ceph_osds*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_osdmap* %0, %struct.ceph_osdmap** %4, align 8
  store %struct.ceph_pg_pool_info* %1, %struct.ceph_pg_pool_info** %5, align 8
  store %struct.ceph_osds* %2, %struct.ceph_osds** %6, align 8
  %9 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %5, align 8
  %10 = call i64 @ceph_can_shift_osds(%struct.ceph_pg_pool_info* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %53, %12
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %16 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %21 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ceph_osd_exists(%struct.ceph_osdmap* %20, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %53

33:                                               ; preds = %19
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %38 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %45 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 %43, i32* %51, align 4
  br label %52

52:                                               ; preds = %36, %33
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %13

56:                                               ; preds = %13
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %59 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %93

62:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %89, %62
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %66 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %4, align 8
  %71 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %72 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ceph_osd_exists(%struct.ceph_osdmap* %70, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %82 = load %struct.ceph_osds*, %struct.ceph_osds** %6, align 8
  %83 = getelementptr inbounds %struct.ceph_osds, %struct.ceph_osds* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %80, %69
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %63

92:                                               ; preds = %63
  br label %93

93:                                               ; preds = %92, %56
  ret void
}

declare dso_local i64 @ceph_can_shift_osds(%struct.ceph_pg_pool_info*) #1

declare dso_local i32 @ceph_osd_exists(%struct.ceph_osdmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
