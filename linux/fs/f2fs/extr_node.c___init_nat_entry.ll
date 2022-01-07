; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___init_nat_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___init_nat_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_nm_info = type { i32, i32, i32, i32 }
%struct.nat_entry = type { i32, i32 }
%struct.f2fs_nat_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nat_entry* (%struct.f2fs_nm_info*, %struct.nat_entry*, %struct.f2fs_nat_entry*, i32)* @__init_nat_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nat_entry* @__init_nat_entry(%struct.f2fs_nm_info* %0, %struct.nat_entry* %1, %struct.f2fs_nat_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.nat_entry*, align 8
  %6 = alloca %struct.f2fs_nm_info*, align 8
  %7 = alloca %struct.nat_entry*, align 8
  %8 = alloca %struct.f2fs_nat_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.f2fs_nm_info* %0, %struct.f2fs_nm_info** %6, align 8
  store %struct.nat_entry* %1, %struct.nat_entry** %7, align 8
  store %struct.f2fs_nat_entry* %2, %struct.f2fs_nat_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %14 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %13, i32 0, i32 3
  %15 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %16 = call i32 @nat_get_nid(%struct.nat_entry* %15)
  %17 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %18 = call i32 @f2fs_radix_tree_insert(i32* %14, i32 %16, %struct.nat_entry* %17)
  br label %29

19:                                               ; preds = %4
  %20 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %21 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %20, i32 0, i32 3
  %22 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %23 = call i32 @nat_get_nid(%struct.nat_entry* %22)
  %24 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %25 = call i64 @radix_tree_insert(i32* %21, i32 %23, %struct.nat_entry* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store %struct.nat_entry* null, %struct.nat_entry** %5, align 8
  br label %54

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %8, align 8
  %31 = icmp ne %struct.f2fs_nat_entry* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %34 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %33, i32 0, i32 1
  %35 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %8, align 8
  %36 = call i32 @node_info_from_raw_nat(i32* %34, %struct.f2fs_nat_entry* %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %39 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %42 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %41, i32 0, i32 0
  %43 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %44 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %43, i32 0, i32 2
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %47 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %6, align 8
  %50 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  store %struct.nat_entry* %53, %struct.nat_entry** %5, align 8
  br label %54

54:                                               ; preds = %37, %27
  %55 = load %struct.nat_entry*, %struct.nat_entry** %5, align 8
  ret %struct.nat_entry* %55
}

declare dso_local i32 @f2fs_radix_tree_insert(i32*, i32, %struct.nat_entry*) #1

declare dso_local i32 @nat_get_nid(%struct.nat_entry*) #1

declare dso_local i64 @radix_tree_insert(i32*, i32, %struct.nat_entry*) #1

declare dso_local i32 @node_info_from_raw_nat(i32*, %struct.f2fs_nat_entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
