; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_group_search_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_group_search_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, %struct.nfs_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.nfs_page*, i32)* @nfs_page_group_search_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_page_group_search_locked(%struct.nfs_page* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  store %struct.nfs_page* %7, %struct.nfs_page** %6, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %11 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %18, %21
  %23 = icmp ult i32 %15, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  store %struct.nfs_page* %25, %struct.nfs_page** %3, align 8
  br label %35

26:                                               ; preds = %14, %8
  %27 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %28 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %27, i32 0, i32 2
  %29 = load %struct.nfs_page*, %struct.nfs_page** %28, align 8
  store %struct.nfs_page* %29, %struct.nfs_page** %6, align 8
  br label %30

30:                                               ; preds = %26
  %31 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %32 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %33 = icmp ne %struct.nfs_page* %31, %32
  br i1 %33, label %8, label %34

34:                                               ; preds = %30
  store %struct.nfs_page* null, %struct.nfs_page** %3, align 8
  br label %35

35:                                               ; preds = %34, %24
  %36 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  ret %struct.nfs_page* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
