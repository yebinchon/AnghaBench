; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_process_page_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_process_page_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { %struct.TYPE_2__, i32, %struct.inode* }
%struct.TYPE_2__ = type { i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage_da_data*, %struct.buffer_head*, %struct.buffer_head*, i64)* @mpage_process_page_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpage_process_page_bufs(%struct.mpage_da_data* %0, %struct.buffer_head* %1, %struct.buffer_head* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpage_da_data*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %14 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %13, i32 0, i32 2
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = call i32 @i_size_read(%struct.inode* %16)
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i32 @i_blocksize(%struct.inode* %18)
  %20 = add nsw i32 %17, %19
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %21, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %12, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i64 @ext4_verity_in_progress(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %30, %4
  br label %33

33:                                               ; preds = %61, %32
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = call i32 @buffer_locked(%struct.buffer_head* %34)
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = call i32 @mpage_add_bh_to_extent(%struct.mpage_da_data* %41, i64 %42, %struct.buffer_head* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %48 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %91

53:                                               ; preds = %46
  %54 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %55 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %91

59:                                               ; preds = %53
  br label %69

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %9, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 1
  %66 = load %struct.buffer_head*, %struct.buffer_head** %65, align 8
  store %struct.buffer_head* %66, %struct.buffer_head** %8, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = icmp ne %struct.buffer_head* %66, %67
  br i1 %68, label %33, label %69

69:                                               ; preds = %61, %59
  %70 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %71 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mpage_submit_page(%struct.mpage_da_data* %76, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %91

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %69
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp slt i64 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %83, %58, %52
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i64 @ext4_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @mpage_add_bh_to_extent(%struct.mpage_da_data*, i64, %struct.buffer_head*) #1

declare dso_local i32 @mpage_submit_page(%struct.mpage_da_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
