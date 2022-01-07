; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_page_action.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_page_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_state = type { i32 (%struct.page*, i64)*, i64 }
%struct.page = type opaque
%struct.page.0 = type { i32 }

@MF_DELAYED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Memory failure: %#lx: %s still referenced by %d users\0A\00", align 1
@action_page_types = common dso_local global i32* null, align 8
@MF_FAILED = common dso_local global i32 0, align 4
@MF_RECOVERED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page_state*, %struct.page.0*, i64)* @page_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_action(%struct.page_state* %0, %struct.page.0* %1, i64 %2) #0 {
  %4 = alloca %struct.page_state*, align 8
  %5 = alloca %struct.page.0*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page_state* %0, %struct.page_state** %4, align 8
  store %struct.page.0* %1, %struct.page.0** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.page_state*, %struct.page_state** %4, align 8
  %10 = getelementptr inbounds %struct.page_state, %struct.page_state* %9, i32 0, i32 0
  %11 = load i32 (%struct.page*, i64)*, i32 (%struct.page*, i64)** %10, align 8
  %12 = load %struct.page.0*, %struct.page.0** %5, align 8
  %13 = bitcast %struct.page.0* %12 to %struct.page*
  %14 = load i64, i64* %6, align 8
  %15 = call i32 %11(%struct.page* %13, i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.page.0*, %struct.page.0** %5, align 8
  %17 = call i32 @page_count(%struct.page.0* %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load %struct.page_state*, %struct.page_state** %4, align 8
  %20 = getelementptr inbounds %struct.page_state, %struct.page_state* %19, i32 0, i32 0
  %21 = load i32 (%struct.page*, i64)*, i32 (%struct.page*, i64)** %20, align 8
  %22 = icmp eq i32 (%struct.page*, i64)* %21, bitcast (i32 (%struct.page.0*, i64)* @me_swapcache_dirty to i32 (%struct.page*, i64)*)
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MF_DELAYED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %23, %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = load i32*, i32** @action_page_types, align 8
  %36 = load %struct.page_state*, %struct.page_state** %4, align 8
  %37 = getelementptr inbounds %struct.page_state, %struct.page_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %40, i32 %41)
  %43 = load i32, i32* @MF_FAILED, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %33, %30
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.page_state*, %struct.page_state** %4, align 8
  %47 = getelementptr inbounds %struct.page_state, %struct.page_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @action_result(i64 %45, i64 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MF_RECOVERED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MF_DELAYED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %44
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ]
  ret i32 %63
}

declare dso_local i32 @page_count(%struct.page.0*) #1

declare dso_local i32 @me_swapcache_dirty(%struct.page.0*, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i32) #1

declare dso_local i32 @action_result(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
