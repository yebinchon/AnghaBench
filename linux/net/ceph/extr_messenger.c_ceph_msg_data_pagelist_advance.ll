; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pagelist_advance.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pagelist_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg_data_cursor = type { i64, i64, i32, %struct.TYPE_3__*, %struct.ceph_msg_data* }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_msg_data = type { i64, %struct.ceph_pagelist* }
%struct.ceph_pagelist = type { i64, i32 }

@CEPH_MSG_DATA_PAGELIST = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@lru = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_msg_data_cursor*, i64)* @ceph_msg_data_pagelist_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_msg_data_pagelist_advance(%struct.ceph_msg_data_cursor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_msg_data_cursor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ceph_msg_data*, align 8
  %7 = alloca %struct.ceph_pagelist*, align 8
  store %struct.ceph_msg_data_cursor* %0, %struct.ceph_msg_data_cursor** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %8, i32 0, i32 4
  %10 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %9, align 8
  store %struct.ceph_msg_data* %10, %struct.ceph_msg_data** %6, align 8
  %11 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %6, align 8
  %12 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CEPH_MSG_DATA_PAGELIST, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %6, align 8
  %19 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %18, i32 0, i32 1
  %20 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %19, align 8
  store %struct.ceph_pagelist* %20, %struct.ceph_pagelist** %7, align 8
  %21 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %7, align 8
  %22 = icmp ne %struct.ceph_pagelist* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %30 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %7, align 8
  %34 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %40 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PAGE_MASK, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* @PAGE_SIZE, align 8
  %48 = icmp ugt i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %53 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %58 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %2
  %64 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %65 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PAGE_MASK, align 8
  %68 = xor i64 %67, -1
  %69 = and i64 %66, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %2
  store i32 0, i32* %3, align 4
  br label %102

72:                                               ; preds = %63
  %73 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %74 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %102

78:                                               ; preds = %72
  %79 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %80 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %7, align 8
  %84 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %83, i32 0, i32 1
  %85 = call i32 @list_is_last(i32* %82, i32* %84)
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %88 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* @lru, align 4
  %91 = call %struct.TYPE_3__* @list_next_entry(%struct.TYPE_3__* %89, i32 %90)
  %92 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %93 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %92, i32 0, i32 3
  store %struct.TYPE_3__* %91, %struct.TYPE_3__** %93, align 8
  %94 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %95 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PAGE_SIZE, align 8
  %98 = icmp ule i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %101 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %78, %77, %71
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_is_last(i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @list_next_entry(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
