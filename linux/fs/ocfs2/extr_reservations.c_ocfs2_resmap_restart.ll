; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_restart.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32, i8* }

@resv_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_resmap_restart(%struct.ocfs2_reservation_map* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ocfs2_reservation_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %8 = call i64 @ocfs2_resmap_disabled(%struct.ocfs2_reservation_map* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %22

11:                                               ; preds = %3
  %12 = call i32 @spin_lock(i32* @resv_lock)
  %13 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %14 = call i32 @ocfs2_resmap_clear_all_resv(%struct.ocfs2_reservation_map* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = call i32 @spin_unlock(i32* @resv_lock)
  br label %22

22:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @ocfs2_resmap_disabled(%struct.ocfs2_reservation_map*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_resmap_clear_all_resv(%struct.ocfs2_reservation_map*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
