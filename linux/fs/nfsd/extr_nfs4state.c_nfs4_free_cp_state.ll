; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_free_cp_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_free_cp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_copy = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfsd_net = type { i32, i32 }

@nfsd_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_free_cp_state(%struct.nfsd4_copy* %0) #0 {
  %2 = alloca %struct.nfsd4_copy*, align 8
  %3 = alloca %struct.nfsd_net*, align 8
  store %struct.nfsd4_copy* %0, %struct.nfsd4_copy** %2, align 8
  %4 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @nfsd_net_id, align 4
  %10 = call %struct.nfsd_net* @net_generic(i32 %8, i32 %9)
  store %struct.nfsd_net* %10, %struct.nfsd_net** %3, align 8
  %11 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %12 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %15 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %14, i32 0, i32 1
  %16 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %17 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @idr_remove(i32* %15, i32 %20)
  %22 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %23 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
