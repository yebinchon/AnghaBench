; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cstate_clear_replay.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_cstate_clear_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { %struct.nfs4_stateowner* }
%struct.nfs4_stateowner = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_cstate_clear_replay(%struct.nfsd4_compound_state* %0) #0 {
  %2 = alloca %struct.nfsd4_compound_state*, align 8
  %3 = alloca %struct.nfs4_stateowner*, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %2, align 8
  %4 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %4, i32 0, i32 0
  %6 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %5, align 8
  store %struct.nfs4_stateowner* %6, %struct.nfs4_stateowner** %3, align 8
  %7 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %3, align 8
  %8 = icmp ne %struct.nfs4_stateowner* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %2, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %10, i32 0, i32 0
  store %struct.nfs4_stateowner* null, %struct.nfs4_stateowner** %11, align 8
  %12 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %3, align 8
  %17 = call i32 @nfs4_put_stateowner(%struct.nfs4_stateowner* %16)
  br label %18

18:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfs4_put_stateowner(%struct.nfs4_stateowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
