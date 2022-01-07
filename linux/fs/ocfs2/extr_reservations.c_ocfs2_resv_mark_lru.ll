; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_mark_lru.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_mark_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32 }
%struct.ocfs2_alloc_reservation = type { i32 }

@resv_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*)* @ocfs2_resv_mark_lru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_resv_mark_lru(%struct.ocfs2_reservation_map* %0, %struct.ocfs2_alloc_reservation* %1) #0 {
  %3 = alloca %struct.ocfs2_reservation_map*, align 8
  %4 = alloca %struct.ocfs2_alloc_reservation*, align 8
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %3, align 8
  store %struct.ocfs2_alloc_reservation* %1, %struct.ocfs2_alloc_reservation** %4, align 8
  %5 = call i32 @assert_spin_locked(i32* @resv_lock)
  %6 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %7 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %6, i32 0, i32 0
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %11, i32 0, i32 0
  %13 = call i32 @list_del_init(i32* %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %15, i32 0, i32 0
  %17 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
