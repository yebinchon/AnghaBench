; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_advance.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg_data_cursor = type { i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_msg_data_cursor*, i64)* @ceph_msg_data_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_msg_data_advance(%struct.ceph_msg_data_cursor* %0, i64 %1) #0 {
  %3 = alloca %struct.ceph_msg_data_cursor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ceph_msg_data_cursor* %0, %struct.ceph_msg_data_cursor** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ugt i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %31 [
    i32 129, label %18
    i32 128, label %22
    i32 131, label %26
    i32 130, label %30
  ]

18:                                               ; preds = %2
  %19 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @ceph_msg_data_pagelist_advance(%struct.ceph_msg_data_cursor* %19, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @ceph_msg_data_pages_advance(%struct.ceph_msg_data_cursor* %23, i64 %24)
  store i32 %25, i32* %5, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ceph_msg_data_bvecs_advance(%struct.ceph_msg_data_cursor* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %2, %30
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %26, %22, %18
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %36 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %40 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %33
  %44 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %45 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %50 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %57 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 1
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %57, align 8
  %60 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %61 = call i32 @__ceph_msg_data_cursor_init(%struct.ceph_msg_data_cursor* %60)
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %48, %43, %33
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %3, align 8
  %65 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_msg_data_pagelist_advance(%struct.ceph_msg_data_cursor*, i64) #1

declare dso_local i32 @ceph_msg_data_pages_advance(%struct.ceph_msg_data_cursor*, i64) #1

declare dso_local i32 @ceph_msg_data_bvecs_advance(%struct.ceph_msg_data_cursor*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__ceph_msg_data_cursor_init(%struct.ceph_msg_data_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
