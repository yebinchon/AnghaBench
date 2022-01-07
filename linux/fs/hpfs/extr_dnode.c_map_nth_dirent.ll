; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_map_nth_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_map_nth_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i64 }
%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"map_nth_dirent: n too high; dnode = %08x, requested %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpfs_dirent* (%struct.super_block*, i32, i32, %struct.quad_buffer_head*, %struct.dnode**)* @map_nth_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpfs_dirent* @map_nth_dirent(%struct.super_block* %0, i32 %1, i32 %2, %struct.quad_buffer_head* %3, %struct.dnode** %4) #0 {
  %6 = alloca %struct.hpfs_dirent*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head*, align 8
  %11 = alloca %struct.dnode**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca %struct.hpfs_dirent*, align 8
  %15 = alloca %struct.dnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.quad_buffer_head* %3, %struct.quad_buffer_head** %10, align 8
  store %struct.dnode** %4, %struct.dnode*** %11, align 8
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %19 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %16, i32 %17, %struct.quad_buffer_head* %18)
  store %struct.dnode* %19, %struct.dnode** %15, align 8
  %20 = load %struct.dnode*, %struct.dnode** %15, align 8
  %21 = icmp ne %struct.dnode* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %6, align 8
  br label %63

23:                                               ; preds = %5
  %24 = load %struct.dnode**, %struct.dnode*** %11, align 8
  %25 = icmp ne %struct.dnode** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.dnode*, %struct.dnode** %15, align 8
  %28 = load %struct.dnode**, %struct.dnode*** %11, align 8
  store %struct.dnode* %27, %struct.dnode** %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.dnode*, %struct.dnode** %15, align 8
  %31 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %30)
  store %struct.hpfs_dirent* %31, %struct.hpfs_dirent** %13, align 8
  %32 = load %struct.dnode*, %struct.dnode** %15, align 8
  %33 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %32)
  store %struct.hpfs_dirent* %33, %struct.hpfs_dirent** %14, align 8
  store i32 1, i32* %12, align 4
  br label %34

34:                                               ; preds = %51, %29
  %35 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %36 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %37 = icmp ult %struct.hpfs_dirent* %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  store %struct.hpfs_dirent* %43, %struct.hpfs_dirent** %6, align 8
  br label %63

44:                                               ; preds = %38
  %45 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %46 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %56

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %55 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %54)
  store %struct.hpfs_dirent* %55, %struct.hpfs_dirent** %13, align 8
  br label %34

56:                                               ; preds = %49, %34
  %57 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %58 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %57)
  %59 = load %struct.super_block*, %struct.super_block** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @hpfs_error(%struct.super_block* %59, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %6, align 8
  br label %63

63:                                               ; preds = %56, %42, %22
  %64 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  ret %struct.hpfs_dirent* %64
}

declare dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block*, i32, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
