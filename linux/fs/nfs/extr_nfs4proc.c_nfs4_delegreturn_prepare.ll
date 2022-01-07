; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_delegreturn_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_delegreturn_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs4_delegreturndata = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.pnfs_layout_hdr* }
%struct.pnfs_layout_hdr = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs4_delegreturn_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_delegreturn_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs4_delegreturndata*, align 8
  %6 = alloca %struct.pnfs_layout_hdr*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.nfs4_delegreturndata*
  store %struct.nfs4_delegreturndata* %8, %struct.nfs4_delegreturndata** %5, align 8
  %9 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %16 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %19 = call i64 @nfs4_wait_on_layoutreturn(i32 %17, %struct.rpc_task* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %66

22:                                               ; preds = %14, %2
  %23 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %24 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %30 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %33, align 8
  br label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %28
  %37 = phi %struct.pnfs_layout_hdr* [ %34, %28 ], [ null, %35 ]
  store %struct.pnfs_layout_hdr* %37, %struct.pnfs_layout_hdr** %6, align 8
  %38 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %39 = icmp ne %struct.pnfs_layout_hdr* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %6, align 8
  %42 = call i32 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %46 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %47, align 8
  %48 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %49 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %40, %36
  %52 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %53 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %59 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %5, align 8
  %62 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %65 = call i32 @nfs4_setup_sequence(i32 %57, i32* %60, i32* %63, %struct.rpc_task* %64)
  br label %66

66:                                               ; preds = %51, %21
  ret void
}

declare dso_local i64 @nfs4_wait_on_layoutreturn(i32, %struct.rpc_task*) #1

declare dso_local i32 @pnfs_layout_is_valid(%struct.pnfs_layout_hdr*) #1

declare dso_local i32 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
