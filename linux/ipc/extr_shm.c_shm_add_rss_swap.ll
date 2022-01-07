; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_shm.c_shm_add_rss_swap.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_shm.c_shm_add_rss_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { i32 }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i64 }
%struct.hstate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmid_kernel*, i64*, i64*)* @shm_add_rss_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shm_add_rss_swap(%struct.shmid_kernel* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.shmid_kernel*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.hstate*, align 8
  store %struct.shmid_kernel* %0, %struct.shmid_kernel** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %11 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.inode* @file_inode(i32 %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %15 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @is_file_hugepages(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %8, align 8
  %23 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %24 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.hstate* @hstate_file(i32 %25)
  store %struct.hstate* %26, %struct.hstate** %9, align 8
  %27 = load %struct.hstate*, %struct.hstate** %9, align 8
  %28 = call i64 @pages_per_huge_page(%struct.hstate* %27)
  %29 = load %struct.address_space*, %struct.address_space** %8, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %28, %31
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  br label %45

36:                                               ; preds = %3
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load %struct.address_space*, %struct.address_space** %38, align 8
  %40 = getelementptr inbounds %struct.address_space, %struct.address_space* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %41
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %36, %19
  ret void
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i64 @is_file_hugepages(i32) #1

declare dso_local %struct.hstate* @hstate_file(i32) #1

declare dso_local i64 @pages_per_huge_page(%struct.hstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
