; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_put_clnt_odstate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_put_clnt_odstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_clnt_odstate = type { i32, i32, i32, %struct.nfs4_file* }
%struct.nfs4_file = type { i32 }

@odstate_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_clnt_odstate*)* @put_clnt_odstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_clnt_odstate(%struct.nfs4_clnt_odstate* %0) #0 {
  %2 = alloca %struct.nfs4_clnt_odstate*, align 8
  %3 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_clnt_odstate* %0, %struct.nfs4_clnt_odstate** %2, align 8
  %4 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %2, align 8
  %5 = icmp ne %struct.nfs4_clnt_odstate* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_clnt_odstate, %struct.nfs4_clnt_odstate* %8, i32 0, i32 3
  %10 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  store %struct.nfs4_file* %10, %struct.nfs4_file** %3, align 8
  %11 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_clnt_odstate, %struct.nfs4_clnt_odstate* %11, i32 0, i32 2
  %13 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %14 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %13, i32 0, i32 0
  %15 = call i64 @refcount_dec_and_lock(i32* %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %7
  %18 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %2, align 8
  %19 = getelementptr inbounds %struct.nfs4_clnt_odstate, %struct.nfs4_clnt_odstate* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %22 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %2, align 8
  %25 = getelementptr inbounds %struct.nfs4_clnt_odstate, %struct.nfs4_clnt_odstate* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %28 = call i32 @nfsd4_return_all_file_layouts(i32 %26, %struct.nfs4_file* %27)
  %29 = load i32, i32* @odstate_slab, align 4
  %30 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %2, align 8
  %31 = call i32 @kmem_cache_free(i32 %29, %struct.nfs4_clnt_odstate* %30)
  br label %32

32:                                               ; preds = %6, %17, %7
  ret void
}

declare dso_local i64 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd4_return_all_file_layouts(i32, %struct.nfs4_file*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_clnt_odstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
