; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cb_recall_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cb_recall_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_callback = type { i32 }
%struct.nfs4_delegation = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_callback*)* @nfsd4_cb_recall_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_cb_recall_release(%struct.nfsd4_callback* %0) #0 {
  %2 = alloca %struct.nfsd4_callback*, align 8
  %3 = alloca %struct.nfs4_delegation*, align 8
  store %struct.nfsd4_callback* %0, %struct.nfsd4_callback** %2, align 8
  %4 = load %struct.nfsd4_callback*, %struct.nfsd4_callback** %2, align 8
  %5 = call %struct.nfs4_delegation* @cb_to_delegation(%struct.nfsd4_callback* %4)
  store %struct.nfs4_delegation* %5, %struct.nfs4_delegation** %3, align 8
  %6 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %7 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %6, i32 0, i32 0
  %8 = call i32 @nfs4_put_stid(i32* %7)
  ret void
}

declare dso_local %struct.nfs4_delegation* @cb_to_delegation(%struct.nfsd4_callback*) #1

declare dso_local i32 @nfs4_put_stid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
