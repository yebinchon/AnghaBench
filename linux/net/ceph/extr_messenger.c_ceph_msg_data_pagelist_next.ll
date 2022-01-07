; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pagelist_next.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pagelist_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ceph_msg_data_cursor = type { i64, i64, %struct.page*, i64, %struct.ceph_msg_data* }
%struct.ceph_msg_data = type { i64, %struct.ceph_pagelist* }
%struct.ceph_pagelist = type { i64 }

@CEPH_MSG_DATA_PAGELIST = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.ceph_msg_data_cursor*, i64*, i64*)* @ceph_msg_data_pagelist_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @ceph_msg_data_pagelist_next(%struct.ceph_msg_data_cursor* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.ceph_msg_data_cursor*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ceph_msg_data*, align 8
  %8 = alloca %struct.ceph_pagelist*, align 8
  store %struct.ceph_msg_data_cursor* %0, %struct.ceph_msg_data_cursor** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %9, i32 0, i32 4
  %11 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %10, align 8
  store %struct.ceph_msg_data* %11, %struct.ceph_msg_data** %7, align 8
  %12 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %7, align 8
  %13 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CEPH_MSG_DATA_PAGELIST, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %7, align 8
  %20 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %19, i32 0, i32 1
  %21 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %20, align 8
  store %struct.ceph_pagelist* %21, %struct.ceph_pagelist** %8, align 8
  %22 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %8, align 8
  %23 = icmp ne %struct.ceph_pagelist* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %27, i32 0, i32 2
  %29 = load %struct.page*, %struct.page** %28, align 8
  %30 = icmp ne %struct.page* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %35 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %8, align 8
  %42 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %48 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PAGE_MASK, align 8
  %51 = xor i64 %50, -1
  %52 = and i64 %49, %51
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %55 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %3
  %59 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %60 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  br label %69

63:                                               ; preds = %3
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %64, %66
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %71 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %70, i32 0, i32 2
  %72 = load %struct.page*, %struct.page** %71, align 8
  ret %struct.page* %72
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
