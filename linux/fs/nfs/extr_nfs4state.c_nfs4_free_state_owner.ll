; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_free_state_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_free_state_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state_owner*)* @nfs4_free_state_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_free_state_owner(%struct.nfs4_state_owner* %0) #0 {
  %2 = alloca %struct.nfs4_state_owner*, align 8
  store %struct.nfs4_state_owner* %0, %struct.nfs4_state_owner** %2, align 8
  %3 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %4 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %3, i32 0, i32 0
  %5 = call i32 @nfs4_destroy_seqid_counter(%struct.TYPE_4__* %4)
  %6 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %7 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @put_cred(i32 %8)
  %10 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %15 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ida_simple_remove(i32* %13, i32 %17)
  %19 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %20 = call i32 @kfree(%struct.nfs4_state_owner* %19)
  ret void
}

declare dso_local i32 @nfs4_destroy_seqid_counter(%struct.TYPE_4__*) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nfs4_state_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
