; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_window_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_window_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { %struct.ocfs2_super* }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_alloc_reservation = type { i32 }

@OCFS2_RESV_FLAG_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*)* @ocfs2_resv_window_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_resv_window_bits(%struct.ocfs2_reservation_map* %0, %struct.ocfs2_alloc_reservation* %1) #0 {
  %3 = alloca %struct.ocfs2_reservation_map*, align 8
  %4 = alloca %struct.ocfs2_alloc_reservation*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %3, align 8
  store %struct.ocfs2_alloc_reservation* %1, %struct.ocfs2_alloc_reservation** %4, align 8
  %7 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %7, i32 0, i32 0
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  store %struct.ocfs2_super* %9, %struct.ocfs2_super** %5, align 8
  %10 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OCFS2_RESV_FLAG_DIR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 4, %19
  store i32 %20, i32* %6, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 4, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
