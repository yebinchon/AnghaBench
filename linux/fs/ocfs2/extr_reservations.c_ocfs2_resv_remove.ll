; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32 }
%struct.ocfs2_alloc_reservation = type { i32, i32, i32 }

@OCFS2_RESV_FLAG_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*)* @ocfs2_resv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_resv_remove(%struct.ocfs2_reservation_map* %0, %struct.ocfs2_alloc_reservation* %1) #0 {
  %3 = alloca %struct.ocfs2_reservation_map*, align 8
  %4 = alloca %struct.ocfs2_alloc_reservation*, align 8
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %3, align 8
  store %struct.ocfs2_alloc_reservation* %1, %struct.ocfs2_alloc_reservation** %4, align 8
  %5 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %6 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @OCFS2_RESV_FLAG_INUSE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %12, i32 0, i32 2
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %15, i32 0, i32 1
  %17 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %17, i32 0, i32 0
  %19 = call i32 @rb_erase(i32* %16, i32* %18)
  %20 = load i32, i32* @OCFS2_RESV_FLAG_INUSE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %23 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
