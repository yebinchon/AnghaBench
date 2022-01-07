; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___grab_nat_entry_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___grab_nat_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat_entry_set = type { i64, i32, i32, i32 }
%struct.f2fs_nm_info = type { i32 }
%struct.nat_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@nat_entry_set_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nat_entry_set* (%struct.f2fs_nm_info*, %struct.nat_entry*)* @__grab_nat_entry_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nat_entry_set* @__grab_nat_entry_set(%struct.f2fs_nm_info* %0, %struct.nat_entry* %1) #0 {
  %3 = alloca %struct.f2fs_nm_info*, align 8
  %4 = alloca %struct.nat_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nat_entry_set*, align 8
  store %struct.f2fs_nm_info* %0, %struct.f2fs_nm_info** %3, align 8
  store %struct.nat_entry* %1, %struct.nat_entry** %4, align 8
  %7 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %8 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @NAT_BLOCK_OFFSET(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %13 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.nat_entry_set* @radix_tree_lookup(i32* %13, i32 %14)
  store %struct.nat_entry_set* %15, %struct.nat_entry_set** %6, align 8
  %16 = load %struct.nat_entry_set*, %struct.nat_entry_set** %6, align 8
  %17 = icmp ne %struct.nat_entry_set* %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @nat_entry_set_slab, align 4
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call %struct.nat_entry_set* @f2fs_kmem_cache_alloc(i32 %19, i32 %20)
  store %struct.nat_entry_set* %21, %struct.nat_entry_set** %6, align 8
  %22 = load %struct.nat_entry_set*, %struct.nat_entry_set** %6, align 8
  %23 = getelementptr inbounds %struct.nat_entry_set, %struct.nat_entry_set* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.nat_entry_set*, %struct.nat_entry_set** %6, align 8
  %26 = getelementptr inbounds %struct.nat_entry_set, %struct.nat_entry_set* %25, i32 0, i32 2
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nat_entry_set*, %struct.nat_entry_set** %6, align 8
  %30 = getelementptr inbounds %struct.nat_entry_set, %struct.nat_entry_set* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nat_entry_set*, %struct.nat_entry_set** %6, align 8
  %32 = getelementptr inbounds %struct.nat_entry_set, %struct.nat_entry_set* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %34 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nat_entry_set*, %struct.nat_entry_set** %6, align 8
  %37 = call i32 @f2fs_radix_tree_insert(i32* %34, i32 %35, %struct.nat_entry_set* %36)
  br label %38

38:                                               ; preds = %18, %2
  %39 = load %struct.nat_entry_set*, %struct.nat_entry_set** %6, align 8
  ret %struct.nat_entry_set* %39
}

declare dso_local i32 @NAT_BLOCK_OFFSET(i32) #1

declare dso_local %struct.nat_entry_set* @radix_tree_lookup(i32*, i32) #1

declare dso_local %struct.nat_entry_set* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @f2fs_radix_tree_insert(i32*, i32, %struct.nat_entry_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
