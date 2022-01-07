; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pages_cursor_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pages_cursor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg_data_cursor = type { i32, i16, i32, i32, i64, %struct.ceph_msg_data* }
%struct.ceph_msg_data = type { i64, i32, i64, i32 }

@CEPH_MSG_DATA_PAGES = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_msg_data_cursor*, i64)* @ceph_msg_data_pages_cursor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_msg_data_pages_cursor_init(%struct.ceph_msg_data_cursor* %0, i64 %1) #0 {
  %3 = alloca %struct.ceph_msg_data_cursor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ceph_msg_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ceph_msg_data_cursor* %0, %struct.ceph_msg_data_cursor** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %7, i32 0, i32 5
  %9 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %8, align 8
  store %struct.ceph_msg_data* %9, %struct.ceph_msg_data** %5, align 8
  %10 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %11 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CEPH_MSG_DATA_PAGES, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %18 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %33 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @min(i64 %31, i64 %34)
  %36 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %37 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %42 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @calc_pages_for(i32 %40, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %47 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PAGE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %53 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %55 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* @USHRT_MAX, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp sgt i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = trunc i32 %62 to i16
  %64 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %65 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %64, i32 0, i32 1
  store i16 %63, i16* %65, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @SIZE_MAX, align 8
  %68 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %69 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = sub i64 %67, %71
  %73 = icmp ugt i64 %66, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %77 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %80 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = icmp sle i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %88 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @calc_pages_for(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
