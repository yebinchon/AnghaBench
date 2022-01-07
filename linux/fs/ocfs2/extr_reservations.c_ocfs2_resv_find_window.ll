; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_find_window.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_find_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32 }
%struct.ocfs2_alloc_reservation = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*, i32)* @ocfs2_resv_find_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_resv_find_window(%struct.ocfs2_reservation_map* %0, %struct.ocfs2_alloc_reservation* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_reservation_map*, align 8
  %5 = alloca %struct.ocfs2_alloc_reservation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %4, align 8
  store %struct.ocfs2_alloc_reservation* %1, %struct.ocfs2_alloc_reservation** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %9 = call i32 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %28 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %18
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %35 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @__ocfs2_resv_find_window(%struct.ocfs2_reservation_map* %34, %struct.ocfs2_alloc_reservation* %35, i32 %36, i32 %37)
  %39 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %40 = call i32 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %47 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @__ocfs2_resv_find_window(%struct.ocfs2_reservation_map* %46, %struct.ocfs2_alloc_reservation* %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %45, %42, %33
  %51 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %52 = call i32 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %4, align 8
  %56 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ocfs2_cannibalize_resv(%struct.ocfs2_reservation_map* %55, %struct.ocfs2_alloc_reservation* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %5, align 8
  %61 = call i32 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation* %60)
  %62 = call i32 @BUG_ON(i32 %61)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @__ocfs2_resv_find_window(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*, i32, i32) #1

declare dso_local i32 @ocfs2_cannibalize_resv(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
