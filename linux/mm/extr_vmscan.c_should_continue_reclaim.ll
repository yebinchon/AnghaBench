; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_should_continue_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_should_continue_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pglist_data = type { %struct.zone* }
%struct.zone = type { i32 }
%struct.scan_control = type { i32, i32 }

@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@NR_INACTIVE_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pglist_data*, i64, %struct.scan_control*)* @should_continue_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_continue_reclaim(%struct.pglist_data* %0, i64 %1, %struct.scan_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pglist_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scan_control*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zone*, align 8
  store %struct.pglist_data* %0, %struct.pglist_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.scan_control* %2, %struct.scan_control** %7, align 8
  %12 = load %struct.scan_control*, %struct.scan_control** %7, align 8
  %13 = call i32 @in_reclaim_compaction(%struct.scan_control* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %74

20:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %50, %20
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.scan_control*, %struct.scan_control** %7, align 8
  %24 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load %struct.pglist_data*, %struct.pglist_data** %5, align 8
  %29 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %28, i32 0, i32 0
  %30 = load %struct.zone*, %struct.zone** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.zone, %struct.zone* %30, i64 %32
  store %struct.zone* %33, %struct.zone** %11, align 8
  %34 = load %struct.zone*, %struct.zone** %11, align 8
  %35 = call i32 @managed_zone(%struct.zone* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %50

38:                                               ; preds = %27
  %39 = load %struct.zone*, %struct.zone** %11, align 8
  %40 = load %struct.scan_control*, %struct.scan_control** %7, align 8
  %41 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scan_control*, %struct.scan_control** %7, align 8
  %44 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @compaction_suitable(%struct.zone* %39, i32 %42, i32 0, i32 %45)
  switch i32 %46, label %48 [
    i32 128, label %47
    i32 129, label %47
  ]

47:                                               ; preds = %38, %38
  store i32 0, i32* %4, align 4
  br label %74

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.scan_control*, %struct.scan_control** %7, align 8
  %55 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @compact_gap(i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load %struct.pglist_data*, %struct.pglist_data** %5, align 8
  %59 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %60 = call i64 @node_page_state(%struct.pglist_data* %58, i32 %59)
  store i64 %60, i64* %9, align 8
  %61 = call i64 (...) @get_nr_swap_pages()
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.pglist_data*, %struct.pglist_data** %5, align 8
  %65 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %66 = call i64 @node_page_state(%struct.pglist_data* %64, i32 %65)
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ugt i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %47, %19, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @in_reclaim_compaction(%struct.scan_control*) #1

declare dso_local i32 @managed_zone(%struct.zone*) #1

declare dso_local i32 @compaction_suitable(%struct.zone*, i32, i32, i32) #1

declare dso_local i64 @compact_gap(i32) #1

declare dso_local i64 @node_page_state(%struct.pglist_data*, i32) #1

declare dso_local i64 @get_nr_swap_pages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
