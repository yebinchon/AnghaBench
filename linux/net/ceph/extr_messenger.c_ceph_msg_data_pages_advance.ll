; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pages_advance.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_pages_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg_data_cursor = type { i64, i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CEPH_MSG_DATA_PAGES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_msg_data_cursor*, i64)* @ceph_msg_data_pages_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_msg_data_pages_advance(%struct.ceph_msg_data_cursor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_msg_data_cursor*, align 8
  %5 = alloca i64, align 8
  store %struct.ceph_msg_data_cursor* %0, %struct.ceph_msg_data_cursor** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CEPH_MSG_DATA_PAGES, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %17, %18
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = icmp ugt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %30 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %33, %35
  %37 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %43 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %2
  store i32 0, i32* %3, align 4
  br label %75

47:                                               ; preds = %41
  %48 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %49 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %75

53:                                               ; preds = %47
  %54 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %55 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %58 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %64 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %68 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PAGE_SIZE, align 8
  %71 = icmp ule i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %74 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %53, %52, %46
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
