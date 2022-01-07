; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c___ocfs2_resv_discard.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c___ocfs2_resv_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32 }
%struct.ocfs2_alloc_reservation = type { i64, i64 }

@resv_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*)* @__ocfs2_resv_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ocfs2_resv_discard(%struct.ocfs2_reservation_map* %0, %struct.ocfs2_alloc_reservation* %1) #0 {
  %3 = alloca %struct.ocfs2_reservation_map*, align 8
  %4 = alloca %struct.ocfs2_alloc_reservation*, align 8
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %3, align 8
  store %struct.ocfs2_alloc_reservation* %1, %struct.ocfs2_alloc_reservation** %4, align 8
  %5 = call i32 @assert_spin_locked(i32* @resv_lock)
  %6 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %7 = call i32 @__ocfs2_resv_trunc(%struct.ocfs2_alloc_reservation* %6)
  %8 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %3, align 8
  %13 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %14 = call i32 @ocfs2_resv_remove(%struct.ocfs2_reservation_map* %12, %struct.ocfs2_alloc_reservation* %13)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @__ocfs2_resv_trunc(%struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @ocfs2_resv_remove(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
