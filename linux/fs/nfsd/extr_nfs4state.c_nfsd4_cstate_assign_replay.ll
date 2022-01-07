; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cstate_assign_replay.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cstate_assign_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { i32 }
%struct.nfs4_stateowner = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_compound_state*, %struct.nfs4_stateowner*)* @nfsd4_cstate_assign_replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_cstate_assign_replay(%struct.nfsd4_compound_state* %0, %struct.nfs4_stateowner* %1) #0 {
  %3 = alloca %struct.nfsd4_compound_state*, align 8
  %4 = alloca %struct.nfs4_stateowner*, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %3, align 8
  store %struct.nfs4_stateowner* %1, %struct.nfs4_stateowner** %4, align 8
  %5 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %6 = call i32 @nfsd4_has_session(%struct.nfsd4_compound_state* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %14 = call i32 @nfs4_get_stateowner(%struct.nfs4_stateowner* %13)
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfs4_get_stateowner(%struct.nfs4_stateowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
