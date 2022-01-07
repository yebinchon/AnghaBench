; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_write_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { {}*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* @nfs4_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_write_done(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @nfs4_sequence_done(%struct.rpc_task* %6, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %17 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %17, i32 0, i32 1
  %19 = call i64 @nfs4_write_stateid_changed(%struct.rpc_task* %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %15
  %25 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)**
  %28 = load i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)*, i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)** %27, align 8
  %29 = icmp ne i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)**
  %34 = load i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)*, i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)** %33, align 8
  %35 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %37 = call i32 %34(%struct.rpc_task* %35, %struct.nfs_pgio_header* %36)
  br label %42

38:                                               ; preds = %24
  %39 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %40 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %41 = call i32 @nfs4_write_done_cb(%struct.rpc_task* %39, %struct.nfs_pgio_header* %40)
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i32 [ %37, %30 ], [ %41, %38 ]
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %21, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

declare dso_local i64 @nfs4_write_stateid_changed(%struct.rpc_task*, i32*) #1

declare dso_local i32 @nfs4_write_done_cb(%struct.rpc_task*, %struct.nfs_pgio_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
