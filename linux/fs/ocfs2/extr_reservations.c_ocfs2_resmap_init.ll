; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_reservation_map = type { i32, i32, %struct.ocfs2_super* }

@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_resmap_init(%struct.ocfs2_super* %0, %struct.ocfs2_reservation_map* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_reservation_map*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_reservation_map* %1, %struct.ocfs2_reservation_map** %4, align 8
  %5 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %6 = call i32 @memset(%struct.ocfs2_reservation_map* %5, i32 0, i32 16)
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %8, i32 0, i32 2
  store %struct.ocfs2_super* %7, %struct.ocfs2_super** %9, align 8
  %10 = load i32, i32* @RB_ROOT, align 4
  %11 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %13, i32 0, i32 0
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ocfs2_reservation_map*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
