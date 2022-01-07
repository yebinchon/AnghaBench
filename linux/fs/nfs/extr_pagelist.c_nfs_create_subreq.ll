; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_create_subreq.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_create_subreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.nfs_page*, %struct.nfs_page*, i32, i32, i32)* @nfs_create_subreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_create_subreq(%struct.nfs_page* %0, %struct.nfs_page* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %6, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.nfs_page* @__nfs_create_request(i32 %14, i32 %17, i32 %18, i32 %19, i32 %20)
  store %struct.nfs_page* %21, %struct.nfs_page** %11, align 8
  %22 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %23 = call i32 @IS_ERR(%struct.nfs_page* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %5
  %26 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %27 = call i32 @nfs_lock_request(%struct.nfs_page* %26)
  %28 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %29 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %34 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %35 = call i32 @nfs_page_group_init(%struct.nfs_page* %33, %struct.nfs_page* %34)
  %36 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %40 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %25, %5
  %42 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  ret %struct.nfs_page* %42
}

declare dso_local %struct.nfs_page* @__nfs_create_request(i32, i32, i32, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @nfs_lock_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_page_group_init(%struct.nfs_page*, %struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
