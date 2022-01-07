; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_free_dnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_free_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"hpfs_free_dnode: dnode %08x not aligned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_free_dnode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.quad_buffer_head, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @hpfs_error(%struct.super_block* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %74

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.super_block*, %struct.super_block** %3, align 8
  %36 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  %40 = icmp sge i32 %30, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %29, %22
  %42 = load %struct.super_block*, %struct.super_block** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @hpfs_free_sectors(%struct.super_block* %42, i32 %43, i32 4)
  br label %74

45:                                               ; preds = %29
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.super_block*, %struct.super_block** %3, align 8
  %48 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %46, %50
  %52 = sdiv i32 %51, 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = call i32* @hpfs_map_dnode_bitmap(%struct.super_block* %53, %struct.quad_buffer_head* %5)
  store i32* %54, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  br label %74

57:                                               ; preds = %45
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 31
  %60 = shl i32 1, %59
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = lshr i32 %63, 5
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %61
  store i32 %68, i32* %66, align 4
  %69 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %5)
  %70 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %5)
  %71 = load %struct.super_block*, %struct.super_block** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @hpfs_claim_dirband_free(%struct.super_block* %71, i32 %72)
  br label %74

74:                                               ; preds = %17, %56, %57, %41
  ret void
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

declare dso_local i32* @hpfs_map_dnode_bitmap(%struct.super_block*, %struct.quad_buffer_head*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_claim_dirband_free(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
