; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_clear_lseg_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_clear_lseg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32 }
%struct.list_head = type { i32 }

@NFS_LSEG_ROC = common dso_local global i32 0, align 4
@NFS_LSEG_LAYOUTRETURN = common dso_local global i32 0, align 4
@NFS_LSEG_VALID = common dso_local global i32 0, align 4
@NFS_LSEG_LAYOUTCOMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_segment*, %struct.list_head*)* @pnfs_clear_lseg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_clear_lseg_state(%struct.pnfs_layout_segment* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.pnfs_layout_segment*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load i32, i32* @NFS_LSEG_ROC, align 4
  %6 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %3, align 8
  %7 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %6, i32 0, i32 0
  %8 = call i32 @clear_bit(i32 %5, i32* %7)
  %9 = load i32, i32* @NFS_LSEG_LAYOUTRETURN, align 4
  %10 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %3, align 8
  %11 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %10, i32 0, i32 0
  %12 = call i32 @clear_bit(i32 %9, i32* %11)
  %13 = load i32, i32* @NFS_LSEG_VALID, align 4
  %14 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %3, align 8
  %15 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %14, i32 0, i32 0
  %16 = call i64 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %3, align 8
  %20 = load %struct.list_head*, %struct.list_head** %4, align 8
  %21 = call i32 @pnfs_lseg_dec_and_remove_zero(%struct.pnfs_layout_segment* %19, %struct.list_head* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @NFS_LSEG_LAYOUTCOMMIT, align 4
  %24 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %3, align 8
  %25 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %24, i32 0, i32 0
  %26 = call i64 @test_and_clear_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %3, align 8
  %30 = load %struct.list_head*, %struct.list_head** %4, align 8
  %31 = call i32 @pnfs_lseg_dec_and_remove_zero(%struct.pnfs_layout_segment* %29, %struct.list_head* %30)
  br label %32

32:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pnfs_lseg_dec_and_remove_zero(%struct.pnfs_layout_segment*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
