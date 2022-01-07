; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_page_group_sync_on_bit_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_page_group_sync_on_bit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { %struct.nfs_page*, i32, %struct.nfs_page* }

@PG_HEADLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_page*, i32)* @nfs_page_group_sync_on_bit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_page_group_sync_on_bit_locked(%struct.nfs_page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %8, i32 0, i32 2
  %10 = load %struct.nfs_page*, %struct.nfs_page** %9, align 8
  store %struct.nfs_page* %10, %struct.nfs_page** %6, align 8
  %11 = load i32, i32* @PG_HEADLOCK, align 4
  %12 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %12, i32 0, i32 1
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %20, i32 0, i32 1
  %22 = call i32 @test_and_set_bit(i32 %19, i32* %21)
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  %24 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %24, i32 0, i32 0
  %26 = load %struct.nfs_page*, %struct.nfs_page** %25, align 8
  store %struct.nfs_page* %26, %struct.nfs_page** %7, align 8
  br label %27

27:                                               ; preds = %38, %2
  %28 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %29 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %30 = icmp ne %struct.nfs_page* %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %33, i32 0, i32 1
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %57

38:                                               ; preds = %31
  %39 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %40 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %39, i32 0, i32 0
  %41 = load %struct.nfs_page*, %struct.nfs_page** %40, align 8
  store %struct.nfs_page* %41, %struct.nfs_page** %7, align 8
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  store %struct.nfs_page* %43, %struct.nfs_page** %7, align 8
  br label %44

44:                                               ; preds = %52, %42
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %47 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %46, i32 0, i32 1
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %50 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %49, i32 0, i32 0
  %51 = load %struct.nfs_page*, %struct.nfs_page** %50, align 8
  store %struct.nfs_page* %51, %struct.nfs_page** %7, align 8
  br label %52

52:                                               ; preds = %44
  %53 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %54 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %55 = icmp ne %struct.nfs_page* %53, %54
  br i1 %55, label %44, label %56

56:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
