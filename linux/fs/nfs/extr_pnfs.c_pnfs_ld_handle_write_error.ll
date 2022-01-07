; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_ld_handle_write_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_ld_handle_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"pnfs write error = %d\0A\00", align 1
@PNFS_LAYOUTRET_ON_ERROR = common dso_local global i32 0, align 4
@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*)* @pnfs_ld_handle_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_ld_handle_write_error(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  %3 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_6__* @NFS_SERVER(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PNFS_LAYOUTRET_ON_ERROR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pnfs_return_layout(i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %25 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %26 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %25, i32 0, i32 1
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %31 = call i32 @pnfs_write_done_resend_to_mds(%struct.nfs_pgio_header* %30)
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %33 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @NFS_SERVER(i32) #1

declare dso_local i32 @pnfs_return_layout(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pnfs_write_done_resend_to_mds(%struct.nfs_pgio_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
