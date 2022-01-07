; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pages_next.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pages_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ceph_msg_data_cursor = type { i64, i64, i64, i64, i64, %struct.ceph_msg_data* }
%struct.ceph_msg_data = type { i64, %struct.page** }

@CEPH_MSG_DATA_PAGES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.ceph_msg_data_cursor*, i64*, i64*)* @ceph_msg_data_pages_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @ceph_msg_data_pages_next(%struct.ceph_msg_data_cursor* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.ceph_msg_data_cursor*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ceph_msg_data*, align 8
  store %struct.ceph_msg_data_cursor* %0, %struct.ceph_msg_data_cursor** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %8, i32 0, i32 5
  %10 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %9, align 8
  store %struct.ceph_msg_data* %10, %struct.ceph_msg_data** %7, align 8
  %11 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %7, align 8
  %12 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CEPH_MSG_DATA_PAGES, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = icmp uge i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %35 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  %38 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %3
  %43 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  br label %53

47:                                               ; preds = %3
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %48, %50
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %7, align 8
  %55 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %54, i32 0, i32 1
  %56 = load %struct.page**, %struct.page*** %55, align 8
  %57 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %58 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.page*, %struct.page** %56, i64 %59
  %61 = load %struct.page*, %struct.page** %60, align 8
  ret %struct.page* %61
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
