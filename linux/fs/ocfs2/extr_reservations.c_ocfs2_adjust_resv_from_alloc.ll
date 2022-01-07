; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_adjust_resv_from_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_adjust_resv_from_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32 }
%struct.ocfs2_alloc_reservation = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*, i32, i32)* @ocfs2_adjust_resv_from_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_adjust_resv_from_alloc(%struct.ocfs2_reservation_map* %0, %struct.ocfs2_alloc_reservation* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_reservation_map*, align 8
  %6 = alloca %struct.ocfs2_alloc_reservation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %5, align 8
  store %struct.ocfs2_alloc_reservation* %1, %struct.ocfs2_alloc_reservation** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %12 = call i32 @ocfs2_resv_end(%struct.ocfs2_alloc_reservation* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %15 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %19, %20
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ true, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %5, align 8
  %31 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %32 = call i32 @__ocfs2_resv_discard(%struct.ocfs2_reservation_map* %30, %struct.ocfs2_alloc_reservation* %31)
  br label %53

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  %43 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %44 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %45, %48
  %50 = add i32 %49, 1
  %51 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %52 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32 @ocfs2_resv_end(%struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__ocfs2_resv_discard(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
