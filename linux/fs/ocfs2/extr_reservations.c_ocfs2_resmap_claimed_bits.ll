; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_claimed_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_claimed_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32 }
%struct.ocfs2_alloc_reservation = type { i32, i32, i32, i32 }

@resv_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_resmap_claimed_bits(%struct.ocfs2_reservation_map* %0, %struct.ocfs2_alloc_reservation* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_reservation_map*, align 8
  %6 = alloca %struct.ocfs2_alloc_reservation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %5, align 8
  store %struct.ocfs2_alloc_reservation* %1, %struct.ocfs2_alloc_reservation** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %10, %11
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %5, align 8
  %15 = icmp eq %struct.ocfs2_reservation_map* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %5, align 8
  %18 = call i64 @ocfs2_resmap_disabled(%struct.ocfs2_reservation_map* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %4
  br label %108

21:                                               ; preds = %16
  %22 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %23 = icmp eq %struct.ocfs2_alloc_reservation* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %108

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = call i32 @spin_lock(i32* @resv_lock)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %41 = call i32 @ocfs2_resv_end(%struct.ocfs2_alloc_reservation* %40)
  %42 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %46 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %49 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @trace_ocfs2_resmap_claimed_bits_begin(i32 %34, i32 %35, i32 %36, i32 %39, i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %54 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %61 = call i32 @ocfs2_resv_end(%struct.ocfs2_alloc_reservation* %60)
  %62 = icmp ugt i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %67 = call i32 @ocfs2_resv_end(%struct.ocfs2_alloc_reservation* %66)
  %68 = icmp ugt i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %5, align 8
  %72 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ocfs2_adjust_resv_from_alloc(%struct.ocfs2_reservation_map* %71, %struct.ocfs2_alloc_reservation* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %78 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %81 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %83 = call i32 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %25
  %86 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %5, align 8
  %87 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %88 = call i32 @ocfs2_resv_mark_lru(%struct.ocfs2_reservation_map* %86, %struct.ocfs2_alloc_reservation* %87)
  br label %89

89:                                               ; preds = %85, %25
  %90 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %91 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %94 = call i32 @ocfs2_resv_end(%struct.ocfs2_alloc_reservation* %93)
  %95 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %96 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %99 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %6, align 8
  %102 = getelementptr inbounds %struct.ocfs2_alloc_reservation, %struct.ocfs2_alloc_reservation* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @trace_ocfs2_resmap_claimed_bits_end(i32 %92, i32 %94, i32 %97, i32 %100, i32 %103)
  %105 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %5, align 8
  %106 = call i32 @ocfs2_check_resmap(%struct.ocfs2_reservation_map* %105)
  %107 = call i32 @spin_unlock(i32* @resv_lock)
  br label %108

108:                                              ; preds = %89, %24, %20
  ret void
}

declare dso_local i64 @ocfs2_resmap_disabled(%struct.ocfs2_reservation_map*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_ocfs2_resmap_claimed_bits_begin(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_resv_end(%struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @ocfs2_adjust_resv_from_alloc(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*, i32, i32) #1

declare dso_local i32 @ocfs2_resv_empty(%struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @ocfs2_resv_mark_lru(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @trace_ocfs2_resmap_claimed_bits_end(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_check_resmap(%struct.ocfs2_reservation_map*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
