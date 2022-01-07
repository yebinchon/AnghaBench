; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resv_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_reservation = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_alloc_reservation*)* @ocfs2_resv_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_resv_end(%struct.ocfs2_alloc_reservation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_alloc_reservation*, align 8
  store %struct.ocfs2_alloc_reservation* %0, %struct.ocfs2_alloc_reservation** %3, align 8
  %4 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %3, align 8
  %5 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %11, %14
  %16 = sub i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %17, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
