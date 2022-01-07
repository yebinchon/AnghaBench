; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_pgio_rpc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_pgio_rpc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { %struct.TYPE_5__, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NFS_CONTEXT_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* @nfs4_proc_pgio_rpc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_pgio_rpc_prepare(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %6 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %7 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.TYPE_8__* @NFS_SERVER(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %19 = call i64 @nfs4_setup_sequence(i32 %11, i32* %14, i32* %17, %struct.rpc_task* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nfs4_set_rw_stateid(i32* %25, %struct.TYPE_7__* %29, i32 %33, i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %22
  %45 = load i32, i32* @NFS_CONTEXT_BAD, align 4
  %46 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %47 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 @test_bit(i32 %45, i32* %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %41, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

declare dso_local %struct.TYPE_8__* @NFS_SERVER(i32) #1

declare dso_local i32 @nfs4_set_rw_stateid(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
