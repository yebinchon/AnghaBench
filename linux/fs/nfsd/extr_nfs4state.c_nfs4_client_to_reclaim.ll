; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_client_to_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_client_to_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client_reclaim = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfsd_net = type { i32, i32* }
%struct.xdr_netobj = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"NFSD nfs4_client_to_reclaim NAME: %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_client_reclaim* @nfs4_client_to_reclaim(i64 %0, i64 %1, %struct.nfsd_net* %2) #0 {
  %4 = alloca %struct.xdr_netobj, align 4
  %5 = alloca %struct.xdr_netobj, align 4
  %6 = alloca %struct.nfsd_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_client_reclaim*, align 8
  %9 = bitcast %struct.xdr_netobj* %4 to i64*
  store i64 %0, i64* %9, align 4
  %10 = bitcast %struct.xdr_netobj* %5 to i64*
  store i64 %1, i64* %10, align 4
  store %struct.nfsd_net* %2, %struct.nfsd_net** %6, align 8
  %11 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14)
  %16 = call %struct.nfs4_client_reclaim* (...) @alloc_reclaim()
  store %struct.nfs4_client_reclaim* %16, %struct.nfs4_client_reclaim** %8, align 8
  %17 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  %18 = icmp ne %struct.nfs4_client_reclaim* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %3
  %20 = bitcast %struct.xdr_netobj* %4 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i32 @clientstr_hashval(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  %24 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  %27 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %26, i32 0, i32 3
  %28 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %29 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @list_add(i32* %27, i32* %33)
  %35 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  %38 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  %43 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  %48 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  %53 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  %56 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %58 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %19, %3
  %62 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %8, align 8
  ret %struct.nfs4_client_reclaim* %62
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local %struct.nfs4_client_reclaim* @alloc_reclaim(...) #1

declare dso_local i32 @clientstr_hashval(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
