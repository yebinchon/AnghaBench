; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_copy_impl_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_copy_impl_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nfsd4_exchange_id = type { %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfserr_jukebox = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_client*, %struct.nfsd4_exchange_id*)* @copy_impl_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_impl_id(%struct.nfs4_client* %0, %struct.nfsd4_exchange_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = alloca %struct.nfsd4_exchange_id*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %4, align 8
  store %struct.nfsd4_exchange_id* %1, %struct.nfsd4_exchange_id** %5, align 8
  %6 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %5, align 8
  %7 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  %13 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %14 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %13, i32 0, i32 2
  %15 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %5, align 8
  %16 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %15, i32 0, i32 2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @xdr_netobj_dup(%struct.TYPE_7__* %14, %struct.TYPE_8__* %16, i32 %17)
  %19 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %20 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* @nfserr_jukebox, align 4
  store i32 %25, i32* %3, align 4
  br label %55

26:                                               ; preds = %12
  %27 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %28 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %27, i32 0, i32 1
  %29 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %29, i32 0, i32 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @xdr_netobj_dup(%struct.TYPE_7__* %28, %struct.TYPE_8__* %30, i32 %31)
  %33 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %34 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @nfserr_jukebox, align 4
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %26
  %41 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %46 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.nfsd4_exchange_id*, %struct.nfsd4_exchange_id** %5, align 8
  %49 = getelementptr inbounds %struct.nfsd4_exchange_id, %struct.nfsd4_exchange_id* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %53 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %40, %38, %24, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @xdr_netobj_dup(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
