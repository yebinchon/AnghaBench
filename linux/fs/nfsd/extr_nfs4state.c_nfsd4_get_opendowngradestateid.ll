; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_get_opendowngradestateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_get_opendowngradestateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_get_opendowngradestateid(%struct.nfsd4_compound_state* %0, %union.nfsd4_op_u* %1) #0 {
  %3 = alloca %struct.nfsd4_compound_state*, align 8
  %4 = alloca %union.nfsd4_op_u*, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %3, align 8
  store %union.nfsd4_op_u* %1, %union.nfsd4_op_u** %4, align 8
  %5 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %6 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %4, align 8
  %7 = bitcast %union.nfsd4_op_u* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @get_stateid(%struct.nfsd4_compound_state* %5, i32* %8)
  ret void
}

declare dso_local i32 @get_stateid(%struct.nfsd4_compound_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
