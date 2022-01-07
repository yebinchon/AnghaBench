; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_resv_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_resv_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32 }
%struct.ocfs2_alloc_reservation = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@resv_lock = common dso_local global i32 0, align 4
@OCFS2_RESV_FLAG_TMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_resmap_resv_bits(%struct.ocfs2_reservation_map* %0, %struct.ocfs2_alloc_reservation* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_reservation_map*, align 8
  %7 = alloca %struct.ocfs2_alloc_reservation*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %6, align 8
  store %struct.ocfs2_alloc_reservation* %1, %struct.ocfs2_alloc_reservation** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %12 = icmp eq %struct.ocfs2_alloc_reservation* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %6, align 8
  %15 = call i64 @ocfs2_resmap_disabled(%struct.ocfs2_reservation_map* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %4
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %13
  %21 = call i32 @spin_lock(i32* @resv_lock)
  %22 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %23 = call i64 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %6, align 8
  %27 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %28 = call i32 @ocfs2_resv_window_bits(%struct.ocfs2_reservation_map* %26, %struct.ocfs2_alloc_reservation* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %30 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OCFS2_RESV_FLAG_TMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %25
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %6, align 8
  %45 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ocfs2_resv_find_window(%struct.ocfs2_reservation_map* %44, %struct.ocfs2_alloc_reservation* %45, i32 %46)
  %48 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %49 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %52 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @trace_ocfs2_resmap_resv_bits(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %43, %20
  %56 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %57 = call i64 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation* %56)
  %58 = call i32 @BUG_ON(i64 %57)
  %59 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %7, align 8
  %64 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = call i32 @spin_unlock(i32* @resv_lock)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %55, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @ocfs2_resmap_disabled(%struct.ocfs2_reservation_map*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @ocfs2_resv_window_bits(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @ocfs2_resv_find_window(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*, i32) #1

declare dso_local i32 @trace_ocfs2_resmap_resv_bits(i32, i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
