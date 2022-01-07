; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_add_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_add_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i64 }
%struct.page = type { i32 }
%struct.ceph_msg_data = type { i64, i64, %struct.page**, i32 }

@CEPH_MSG_DATA_PAGES = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_msg_data_add_pages(%struct.ceph_msg* %0, %struct.page** %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ceph_msg*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ceph_msg_data*, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.page**, %struct.page*** %6, align 8
  %11 = icmp ne %struct.page** %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %21 = call %struct.ceph_msg_data* @ceph_msg_data_add(%struct.ceph_msg* %20)
  store %struct.ceph_msg_data* %21, %struct.ceph_msg_data** %9, align 8
  %22 = load i32, i32* @CEPH_MSG_DATA_PAGES, align 4
  %23 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %9, align 8
  %24 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.page**, %struct.page*** %6, align 8
  %26 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %9, align 8
  %27 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %26, i32 0, i32 2
  store %struct.page** %25, %struct.page*** %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %9, align 8
  %30 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @PAGE_MASK, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  %35 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %9, align 8
  %36 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ceph_msg_data* @ceph_msg_data_add(%struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
