; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_init_deleg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_init_deleg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegation = type { i32, %struct.TYPE_4__, i32, i32, %struct.nfs4_clnt_odstate*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.nfs4_file*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_client = type { i32 }
%struct.nfs4_file = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfs4_clnt_odstate = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"NFSD alloc_init_deleg\0A\00", align 1
@num_delegations = common dso_local global i32 0, align 4
@max_delegations = common dso_local global i64 0, align 8
@deleg_slab = common dso_local global i32 0, align 4
@nfs4_free_deleg = common dso_local global i32 0, align 4
@NFS4_OPEN_DELEGATE_READ = common dso_local global i32 0, align 4
@nfsd4_cb_recall_ops = common dso_local global i32 0, align 4
@NFSPROC4_CLNT_CB_RECALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_delegation* (%struct.nfs4_client*, %struct.nfs4_file*, %struct.svc_fh*, %struct.nfs4_clnt_odstate*)* @alloc_init_deleg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_delegation* @alloc_init_deleg(%struct.nfs4_client* %0, %struct.nfs4_file* %1, %struct.svc_fh* %2, %struct.nfs4_clnt_odstate* %3) #0 {
  %5 = alloca %struct.nfs4_delegation*, align 8
  %6 = alloca %struct.nfs4_client*, align 8
  %7 = alloca %struct.nfs4_file*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca %struct.nfs4_clnt_odstate*, align 8
  %10 = alloca %struct.nfs4_delegation*, align 8
  %11 = alloca i64, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %6, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %7, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %8, align 8
  store %struct.nfs4_clnt_odstate* %3, %struct.nfs4_clnt_odstate** %9, align 8
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 @atomic_long_inc_return(i32* @num_delegations)
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @max_delegations, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %4
  br label %75

21:                                               ; preds = %16
  %22 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %23 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %22, i32 0, i32 0
  %24 = call i64 @delegation_blocked(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %75

27:                                               ; preds = %21
  %28 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %29 = load i32, i32* @deleg_slab, align 4
  %30 = load i32, i32* @nfs4_free_deleg, align 4
  %31 = call i32 @nfs4_alloc_stid(%struct.nfs4_client* %28, i32 %29, i32 %30)
  %32 = call %struct.nfs4_delegation* @delegstateid(i32 %31)
  store %struct.nfs4_delegation* %32, %struct.nfs4_delegation** %10, align 8
  %33 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %34 = icmp eq %struct.nfs4_delegation* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %75

36:                                               ; preds = %27
  %37 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %38 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %42 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %41, i32 0, i32 7
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %45 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %44, i32 0, i32 6
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %48 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %47, i32 0, i32 5
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %9, align 8
  %51 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %52 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %51, i32 0, i32 4
  store %struct.nfs4_clnt_odstate* %50, %struct.nfs4_clnt_odstate** %52, align 8
  %53 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %9, align 8
  %54 = call i32 @get_clnt_odstate(%struct.nfs4_clnt_odstate* %53)
  %55 = load i32, i32* @NFS4_OPEN_DELEGATE_READ, align 4
  %56 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %57 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %59 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %61 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %60, i32 0, i32 2
  %62 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %63 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NFSPROC4_CLNT_CB_RECALL, align 4
  %67 = call i32 @nfsd4_init_cb(i32* %61, i32 %65, i32* @nfsd4_cb_recall_ops, i32 %66)
  %68 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %69 = call i32 @get_nfs4_file(%struct.nfs4_file* %68)
  %70 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %71 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %72 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.nfs4_file* %70, %struct.nfs4_file** %73, align 8
  %74 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  store %struct.nfs4_delegation* %74, %struct.nfs4_delegation** %5, align 8
  br label %77

75:                                               ; preds = %35, %26, %20
  %76 = call i32 @atomic_long_dec(i32* @num_delegations)
  store %struct.nfs4_delegation* null, %struct.nfs4_delegation** %5, align 8
  br label %77

77:                                               ; preds = %75, %36
  %78 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %5, align 8
  ret %struct.nfs4_delegation* %78
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @atomic_long_inc_return(i32*) #1

declare dso_local i64 @delegation_blocked(i32*) #1

declare dso_local %struct.nfs4_delegation* @delegstateid(i32) #1

declare dso_local i32 @nfs4_alloc_stid(%struct.nfs4_client*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_clnt_odstate(%struct.nfs4_clnt_odstate*) #1

declare dso_local i32 @nfsd4_init_cb(i32*, i32, i32*, i32) #1

declare dso_local i32 @get_nfs4_file(%struct.nfs4_file*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
