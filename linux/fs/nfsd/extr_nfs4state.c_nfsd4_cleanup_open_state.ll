; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cleanup_open_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cleanup_open_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_open = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.nfs4_stateowner }
%struct.nfs4_stateowner = type { i32 }

@file_slab = common dso_local global i32 0, align 4
@odstate_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_cleanup_open_state(%struct.nfsd4_compound_state* %0, %struct.nfsd4_open* %1) #0 {
  %3 = alloca %struct.nfsd4_compound_state*, align 8
  %4 = alloca %struct.nfsd4_open*, align 8
  %5 = alloca %struct.nfs4_stateowner*, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %3, align 8
  store %struct.nfsd4_open* %1, %struct.nfsd4_open** %4, align 8
  %6 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %7 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %12 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.nfs4_stateowner* %14, %struct.nfs4_stateowner** %5, align 8
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %16 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %5, align 8
  %17 = call i32 @nfsd4_cstate_assign_replay(%struct.nfsd4_compound_state* %15, %struct.nfs4_stateowner* %16)
  %18 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %5, align 8
  %19 = call i32 @nfs4_put_stateowner(%struct.nfs4_stateowner* %18)
  br label %20

20:                                               ; preds = %10, %2
  %21 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %22 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @file_slab, align 4
  %27 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %28 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @kmem_cache_free(i32 %26, i64 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %33 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %38 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @nfs4_put_stid(i32* %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @odstate_slab, align 4
  %49 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %50 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @kmem_cache_free(i32 %48, i64 %51)
  br label %53

53:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @nfsd4_cstate_assign_replay(%struct.nfsd4_compound_state*, %struct.nfs4_stateowner*) #1

declare dso_local i32 @nfs4_put_stateowner(%struct.nfs4_stateowner*) #1

declare dso_local i32 @kmem_cache_free(i32, i64) #1

declare dso_local i32 @nfs4_put_stid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
