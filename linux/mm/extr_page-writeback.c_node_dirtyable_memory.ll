; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_node_dirtyable_memory.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_node_dirtyable_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pglist_data = type { i32, %struct.zone* }
%struct.zone = type { i32 }

@MAX_NR_ZONES = common dso_local global i32 0, align 4
@NR_FREE_PAGES = common dso_local global i32 0, align 4
@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@NR_ACTIVE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pglist_data*)* @node_dirtyable_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @node_dirtyable_memory(%struct.pglist_data* %0) #0 {
  %2 = alloca %struct.pglist_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone*, align 8
  store %struct.pglist_data* %0, %struct.pglist_data** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_NR_ZONES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.pglist_data*, %struct.pglist_data** %2, align 8
  %12 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %11, i32 0, i32 1
  %13 = load %struct.zone*, %struct.zone** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.zone, %struct.zone* %13, i64 %15
  store %struct.zone* %16, %struct.zone** %5, align 8
  %17 = load %struct.zone*, %struct.zone** %5, align 8
  %18 = call i32 @populated_zone(%struct.zone* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %27

21:                                               ; preds = %10
  %22 = load %struct.zone*, %struct.zone** %5, align 8
  %23 = load i32, i32* @NR_FREE_PAGES, align 4
  %24 = call i64 @zone_page_state(%struct.zone* %22, i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %21, %20
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.pglist_data*, %struct.pglist_data** %2, align 8
  %33 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @min(i64 %31, i32 %34)
  %36 = load i64, i64* %3, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %3, align 8
  %38 = load %struct.pglist_data*, %struct.pglist_data** %2, align 8
  %39 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %40 = call i64 @node_page_state(%struct.pglist_data* %38, i32 %39)
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %3, align 8
  %43 = load %struct.pglist_data*, %struct.pglist_data** %2, align 8
  %44 = load i32, i32* @NR_ACTIVE_FILE, align 4
  %45 = call i64 @node_page_state(%struct.pglist_data* %43, i32 %44)
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i32 @populated_zone(%struct.zone*) #1

declare dso_local i64 @zone_page_state(%struct.zone*, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @node_page_state(%struct.pglist_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
