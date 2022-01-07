; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_fix_up_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_fix_up_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dnode = type { i64, i32, i32 }
%struct.hpfs_dirent = type { i64 }
%struct.quad_buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.dnode*)* @fix_up_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_up_ptrs(%struct.super_block* %0, %struct.dnode* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.dnode*, align 8
  %5 = alloca %struct.hpfs_dirent*, align 8
  %6 = alloca %struct.hpfs_dirent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.quad_buffer_head, align 4
  %9 = alloca %struct.dnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.dnode* %1, %struct.dnode** %4, align 8
  %10 = load %struct.dnode*, %struct.dnode** %4, align 8
  %11 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %10)
  store %struct.hpfs_dirent* %11, %struct.hpfs_dirent** %6, align 8
  %12 = load %struct.dnode*, %struct.dnode** %4, align 8
  %13 = getelementptr inbounds %struct.dnode, %struct.dnode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.dnode*, %struct.dnode** %4, align 8
  %17 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %16)
  store %struct.hpfs_dirent* %17, %struct.hpfs_dirent** %5, align 8
  br label %18

18:                                               ; preds = %57, %2
  %19 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %20 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %21 = icmp ult %struct.hpfs_dirent* %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %24 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %30 = call i32 @de_down_pointer(%struct.hpfs_dirent* %29)
  %31 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %28, i32 %30, %struct.quad_buffer_head* %8)
  store %struct.dnode* %31, %struct.dnode** %9, align 8
  %32 = icmp ne %struct.dnode* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.dnode*, %struct.dnode** %9, align 8
  %35 = getelementptr inbounds %struct.dnode, %struct.dnode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @le32_to_cpu(i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.dnode*, %struct.dnode** %9, align 8
  %42 = getelementptr inbounds %struct.dnode, %struct.dnode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40, %33
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @cpu_to_le32(i64 %46)
  %48 = load %struct.dnode*, %struct.dnode** %9, align 8
  %49 = getelementptr inbounds %struct.dnode, %struct.dnode* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dnode*, %struct.dnode** %9, align 8
  %51 = getelementptr inbounds %struct.dnode, %struct.dnode* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %8)
  br label %53

53:                                               ; preds = %45, %40
  %54 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  br label %55

55:                                               ; preds = %53, %27
  br label %56

56:                                               ; preds = %55, %22
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %59 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %58)
  store %struct.hpfs_dirent* %59, %struct.hpfs_dirent** %5, align 8
  br label %18

60:                                               ; preds = %18
  ret void
}

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block*, i32, %struct.quad_buffer_head*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
