; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_pnfs_num_cont_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_pnfs_num_cont_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64)* @pnfs_num_cont_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pnfs_num_cont_bytes(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.address_space*, %struct.address_space** %9, align 8
  store %struct.address_space* %10, %struct.address_space** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i64 @i_size_read(%struct.inode* %11)
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i64 @DIV_ROUND_UP(i64 %12, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.address_space*, %struct.address_space** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  %27 = load i32, i32* @ULONG_MAX, align 4
  %28 = call i64 @page_cache_next_miss(%struct.address_space* %24, i64 %26, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = call i32 (...) @rcu_read_unlock()
  br label %30

30:                                               ; preds = %22, %2
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i64 @i_size_read(%struct.inode* %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = shl i64 %36, %37
  %39 = sub nsw i64 %35, %38
  store i64 %39, i64* %3, align 8
  br label %46

40:                                               ; preds = %30
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i64, i64* @PAGE_SHIFT, align 8
  %45 = shl i64 %43, %44
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @page_cache_next_miss(%struct.address_space*, i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
