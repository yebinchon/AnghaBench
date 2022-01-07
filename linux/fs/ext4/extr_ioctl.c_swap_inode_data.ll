; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_swap_inode_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_swap_inode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.ext4_inode_info = type { i64, i32, i32 }

@EXT4_FL_SHOULD_SWAP = common dso_local global i64 0, align 8
@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.inode*)* @swap_inode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_inode_data(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_inode_info*, align 8
  %7 = alloca %struct.ext4_inode_info*, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %9)
  store %struct.ext4_inode_info* %10, %struct.ext4_inode_info** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %11)
  store %struct.ext4_inode_info* %12, %struct.ext4_inode_info** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @swap(i32 %15, i32 %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @swap(i32 %22, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @swap(i32 %29, i32 %32)
  %34 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %35 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %38 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memswap(i32 %36, i32 %39, i32 4)
  %41 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %42 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EXT4_FL_SHOULD_SWAP, align 8
  %45 = and i64 %43, %44
  store i64 %45, i64* %8, align 8
  %46 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %47 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EXT4_FL_SHOULD_SWAP, align 8
  %50 = and i64 %48, %49
  %51 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %52 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EXT4_FL_SHOULD_SWAP, align 8
  %55 = xor i64 %54, -1
  %56 = and i64 %53, %55
  %57 = or i64 %50, %56
  %58 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %59 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %62 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @EXT4_FL_SHOULD_SWAP, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  %67 = or i64 %60, %66
  %68 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %69 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %71 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %74 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @swap(i32 %72, i32 %75)
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %79 = call i32 @ext4_es_remove_extent(%struct.inode* %77, i32 0, i32 %78)
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %82 = call i32 @ext4_es_remove_extent(%struct.inode* %80, i32 0, i32 %81)
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = call i32 @i_size_read(%struct.inode* %83)
  store i32 %84, i32* %5, align 4
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = call i32 @i_size_read(%struct.inode* %86)
  %88 = call i32 @i_size_write(%struct.inode* %85, i32 %87)
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @i_size_write(%struct.inode* %89, i32 %90)
  ret void
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @memswap(i32, i32, i32) #1

declare dso_local i32 @ext4_es_remove_extent(%struct.inode*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
