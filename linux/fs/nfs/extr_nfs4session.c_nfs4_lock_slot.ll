; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4session.c_nfs4_lock_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4session.c_nfs4_lock_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_slot_table = type { i64, i32, i32 }
%struct.nfs4_slot = type { i64, i32 }

@NFS4_NO_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_slot_table*, %struct.nfs4_slot*)* @nfs4_lock_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_lock_slot(%struct.nfs4_slot_table* %0, %struct.nfs4_slot* %1) #0 {
  %3 = alloca %struct.nfs4_slot_table*, align 8
  %4 = alloca %struct.nfs4_slot*, align 8
  %5 = alloca i64, align 8
  store %struct.nfs4_slot_table* %0, %struct.nfs4_slot_table** %3, align 8
  store %struct.nfs4_slot* %1, %struct.nfs4_slot** %4, align 8
  %6 = load %struct.nfs4_slot*, %struct.nfs4_slot** %4, align 8
  %7 = getelementptr inbounds %struct.nfs4_slot, %struct.nfs4_slot* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %3, align 8
  %11 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__set_bit(i64 %9, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %3, align 8
  %21 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NFS4_NO_SLOT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %2
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %3, align 8
  %28 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.nfs4_slot_table*, %struct.nfs4_slot_table** %3, align 8
  %31 = getelementptr inbounds %struct.nfs4_slot_table, %struct.nfs4_slot_table* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nfs4_slot*, %struct.nfs4_slot** %4, align 8
  %34 = getelementptr inbounds %struct.nfs4_slot, %struct.nfs4_slot* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  ret void
}

declare dso_local i32 @__set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
