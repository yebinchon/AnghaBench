; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_init_cp_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_init_cp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { i32, i32, i32, i32 }
%struct.nfsd4_copy = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_init_cp_state(%struct.nfsd_net* %0, %struct.nfsd4_copy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd_net*, align 8
  %5 = alloca %struct.nfsd4_copy*, align 8
  %6 = alloca i32, align 4
  store %struct.nfsd_net* %0, %struct.nfsd_net** %4, align 8
  store %struct.nfsd4_copy* %1, %struct.nfsd4_copy** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @idr_preload(i32 %7)
  %9 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %10 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %13 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %12, i32 0, i32 3
  %14 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %5, align 8
  %15 = load i32, i32* @GFP_NOWAIT, align 4
  %16 = call i32 @idr_alloc_cyclic(i32* %13, %struct.nfsd4_copy* %14, i32 0, i32 0, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %18 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %17, i32 0, i32 2
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = call i32 (...) @idr_preload_end()
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %5, align 8
  %27 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %31 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %32, i32* %37, align 4
  %38 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %39 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %24, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.nfsd4_copy*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
