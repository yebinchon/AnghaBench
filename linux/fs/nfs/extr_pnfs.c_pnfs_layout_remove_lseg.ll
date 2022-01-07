; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_layout_remove_lseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_layout_remove_lseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32, i32, i32, i32 }
%struct.pnfs_layout_segment = type { i32, i32 }

@NFS_LSEG_VALID = common dso_local global i32 0, align 4
@NFS_LSEG_LAYOUTRETURN = common dso_local global i32 0, align 4
@NFS_LAYOUT_RETURN_REQUESTED = common dso_local global i32 0, align 4
@NFS_LAYOUT_RETURN = common dso_local global i32 0, align 4
@NFS_LAYOUT_INVALID_STID = common dso_local global i32 0, align 4
@NFS_LAYOUT_BULK_RECALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_hdr*, %struct.pnfs_layout_segment*)* @pnfs_layout_remove_lseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_layout_remove_lseg(%struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_segment* %1) #0 {
  %3 = alloca %struct.pnfs_layout_hdr*, align 8
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %3, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %4, align 8
  %5 = load i32, i32* @NFS_LSEG_VALID, align 4
  %6 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %7 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %6, i32 0, i32 0
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = call i32 @WARN_ON(i64 %8)
  %10 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %11 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %10, i32 0, i32 1
  %12 = call i32 @list_del_init(i32* %11)
  %13 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %13, i32 0, i32 3
  %15 = call i32 @refcount_dec(i32* %14)
  %16 = load i32, i32* @NFS_LSEG_LAYOUTRETURN, align 4
  %17 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %18 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %24 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %23, i32 0, i32 2
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load i32, i32* @NFS_LAYOUT_RETURN_REQUESTED, align 4
  %29 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %30 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @NFS_LAYOUT_RETURN, align 4
  %35 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %36 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %33
  %40 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %41 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %40, i32 0, i32 1
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @NFS_LAYOUT_INVALID_STID, align 4
  %46 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %47 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @NFS_LAYOUT_BULK_RECALL, align 4
  %51 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %3, align 8
  %52 = getelementptr inbounds %struct.pnfs_layout_hdr, %struct.pnfs_layout_hdr* %51, i32 0, i32 0
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %21, %49, %33, %27, %22
  ret void
}

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
