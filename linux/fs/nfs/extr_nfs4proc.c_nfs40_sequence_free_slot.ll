; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs40_sequence_free_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs40_sequence_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_sequence_res = type { %struct.nfs4_slot* }
%struct.nfs4_slot = type { %struct.nfs4_slot_table* }
%struct.nfs4_slot_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_sequence_res*)* @nfs40_sequence_free_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs40_sequence_free_slot(%struct.nfs4_sequence_res* %0) #0 {
  %2 = alloca %struct.nfs4_sequence_res*, align 8
  %3 = alloca %struct.nfs4_slot*, align 8
  %4 = alloca %struct.nfs4_slot_table*, align 8
  store %struct.nfs4_sequence_res* %0, %struct.nfs4_sequence_res** %2, align 8
  %5 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_sequence_res, %struct.nfs4_sequence_res* %5, i32 0, i32 0
  %7 = load %struct.nfs4_slot*, %struct.nfs4_slot** %6, align 8
  store %struct.nfs4_slot* %7, %struct.nfs4_slot** %3, align 8
  %8 = load %struct.nfs4_slot*, %struct.nfs4_slot** %3, align 8
  %9 = getelementptr inbounds %struct.nfs4_slot, %struct.nfs4_slot* %8, i32 0, i32 0
  %10 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %9, align 8
  store %struct.nfs4_slot_table* %10, %struct.nfs4_slot_table** %4, align 8
  %11 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %15 = load %struct.nfs4_slot*, %struct.nfs4_slot** %3, align 8
  %16 = call i32 @nfs41_wake_and_assign_slot(%struct.nfs4_slot_table* %14, %struct.nfs4_slot* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %20 = load %struct.nfs4_slot*, %struct.nfs4_slot** %3, align 8
  %21 = call i32 @nfs4_free_slot(%struct.nfs4_slot_table* %19, %struct.nfs4_slot* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %24 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %2, align 8
  %27 = getelementptr inbounds %struct.nfs4_sequence_res, %struct.nfs4_sequence_res* %26, i32 0, i32 0
  store %struct.nfs4_slot* null, %struct.nfs4_slot** %27, align 8
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs41_wake_and_assign_slot(%struct.nfs4_slot_table*, %struct.nfs4_slot*) #1

declare dso_local i32 @nfs4_free_slot(%struct.nfs4_slot_table*, %struct.nfs4_slot*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
