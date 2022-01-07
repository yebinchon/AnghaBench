; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4session.c_nfs4_lookup_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4session.c_nfs4_lookup_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_slot = type { i32 }
%struct.nfs4_slot_table = type { i64 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_slot* @nfs4_lookup_slot(%struct.nfs4_slot_table* %0, i64 %1) #0 {
  %3 = alloca %struct.nfs4_slot*, align 8
  %4 = alloca %struct.nfs4_slot_table*, align 8
  %5 = alloca i64, align 8
  store %struct.nfs4_slot_table* %0, %struct.nfs4_slot_table** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %6, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @GFP_NOWAIT, align 4
  %15 = call %struct.nfs4_slot* @nfs4_find_or_create_slot(%struct.nfs4_slot_table* %12, i64 %13, i32 0, i32 %14)
  store %struct.nfs4_slot* %15, %struct.nfs4_slot** %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @E2BIG, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.nfs4_slot* @ERR_PTR(i32 %18)
  store %struct.nfs4_slot* %19, %struct.nfs4_slot** %3, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.nfs4_slot*, %struct.nfs4_slot** %3, align 8
  ret %struct.nfs4_slot* %21
}

declare dso_local %struct.nfs4_slot* @nfs4_find_or_create_slot(%struct.nfs4_slot_table*, i64, i32, i32) #1

declare dso_local %struct.nfs4_slot* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
