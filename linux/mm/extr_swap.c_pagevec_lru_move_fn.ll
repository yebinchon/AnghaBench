; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_pagevec_lru_move_fn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_pagevec_lru_move_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { %struct.page**, i32 }
%struct.page = type opaque
%struct.lruvec = type opaque
%struct.pglist_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pagevec*, void (%struct.page*, %struct.lruvec*, i8*)*, i8*)* @pagevec_lru_move_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pagevec_lru_move_fn(%struct.pagevec* %0, void (%struct.page*, %struct.lruvec*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.pagevec*, align 8
  %5 = alloca void (%struct.page*, %struct.lruvec*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pglist_data*, align 8
  %9 = alloca %struct.lruvec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.pglist_data*, align 8
  store %struct.pagevec* %0, %struct.pagevec** %4, align 8
  store void (%struct.page*, %struct.lruvec*, i8*)* %1, void (%struct.page*, %struct.lruvec*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.pglist_data* null, %struct.pglist_data** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %53, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %16 = call i32 @pagevec_count(%struct.pagevec* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %13
  %19 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %20 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %19, i32 0, i32 0
  %21 = load %struct.page**, %struct.page*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.page*, %struct.page** %21, i64 %23
  %25 = load %struct.page*, %struct.page** %24, align 8
  store %struct.page* %25, %struct.page** %11, align 8
  %26 = load %struct.page*, %struct.page** %11, align 8
  %27 = call %struct.pglist_data* @page_pgdat(%struct.page* %26)
  store %struct.pglist_data* %27, %struct.pglist_data** %12, align 8
  %28 = load %struct.pglist_data*, %struct.pglist_data** %12, align 8
  %29 = load %struct.pglist_data*, %struct.pglist_data** %8, align 8
  %30 = icmp ne %struct.pglist_data* %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %18
  %32 = load %struct.pglist_data*, %struct.pglist_data** %8, align 8
  %33 = icmp ne %struct.pglist_data* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.pglist_data*, %struct.pglist_data** %8, align 8
  %36 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %35, i32 0, i32 0
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.pglist_data*, %struct.pglist_data** %12, align 8
  store %struct.pglist_data* %40, %struct.pglist_data** %8, align 8
  %41 = load %struct.pglist_data*, %struct.pglist_data** %8, align 8
  %42 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %39, %18
  %46 = load %struct.page*, %struct.page** %11, align 8
  %47 = load %struct.pglist_data*, %struct.pglist_data** %8, align 8
  %48 = call %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %46, %struct.pglist_data* %47)
  store %struct.lruvec* %48, %struct.lruvec** %9, align 8
  %49 = load void (%struct.page*, %struct.lruvec*, i8*)*, void (%struct.page*, %struct.lruvec*, i8*)** %5, align 8
  %50 = load %struct.page*, %struct.page** %11, align 8
  %51 = load %struct.lruvec*, %struct.lruvec** %9, align 8
  %52 = load i8*, i8** %6, align 8
  call void %49(%struct.page* %50, %struct.lruvec* %51, i8* %52)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %13

56:                                               ; preds = %13
  %57 = load %struct.pglist_data*, %struct.pglist_data** %8, align 8
  %58 = icmp ne %struct.pglist_data* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.pglist_data*, %struct.pglist_data** %8, align 8
  %61 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %60, i32 0, i32 0
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %66 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %65, i32 0, i32 0
  %67 = load %struct.page**, %struct.page*** %66, align 8
  %68 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %69 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @release_pages(%struct.page** %67, i32 %70)
  %72 = load %struct.pagevec*, %struct.pagevec** %4, align 8
  %73 = call i32 @pagevec_reinit(%struct.pagevec* %72)
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local %struct.pglist_data* @page_pgdat(%struct.page*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page*, %struct.pglist_data*) #1

declare dso_local i32 @release_pages(%struct.page**, i32) #1

declare dso_local i32 @pagevec_reinit(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
