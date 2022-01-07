; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_read_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_read_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i32, i32, i32 }

@NFS_IOHDR_RESEND_PNFS = common dso_local global i32 0, align 4
@NFS_IOHDR_RESEND_MDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ff_layout_read_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_read_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_pgio_header*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nfs_pgio_header*
  store %struct.nfs_pgio_header* %5, %struct.nfs_pgio_header** %3, align 8
  %6 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %6, i32 0, i32 2
  %8 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %9 = call i32 @ff_layout_read_record_layoutstats_done(i32* %7, %struct.nfs_pgio_header* %8)
  %10 = load i32, i32* @NFS_IOHDR_RESEND_PNFS, align 4
  %11 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ff_layout_send_layouterror(i32 %18)
  %20 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %21 = call i32 @pnfs_read_resend_pnfs(%struct.nfs_pgio_header* %20)
  br label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @NFS_IOHDR_RESEND_MDS, align 4
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %30 = call i32 @ff_layout_reset_read(%struct.nfs_pgio_header* %29)
  br label %31

31:                                               ; preds = %28, %22
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @pnfs_generic_rw_release(i8* %33)
  ret void
}

declare dso_local i32 @ff_layout_read_record_layoutstats_done(i32*, %struct.nfs_pgio_header*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ff_layout_send_layouterror(i32) #1

declare dso_local i32 @pnfs_read_resend_pnfs(%struct.nfs_pgio_header*) #1

declare dso_local i32 @ff_layout_reset_read(%struct.nfs_pgio_header*) #1

declare dso_local i32 @pnfs_generic_rw_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
