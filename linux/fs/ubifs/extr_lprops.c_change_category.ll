; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_change_category.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_change_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.ubifs_lpt_heap* }
%struct.ubifs_lpt_heap = type { i32 }
%struct.ubifs_lprops = type { i32, i32 }

@LPROPS_CAT_MASK = common dso_local global i32 0, align 4
@LPROPS_HEAP_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_lprops*)* @change_category to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_category(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_lpt_heap*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %4, align 8
  %8 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %9 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LPROPS_CAT_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %15 = call i32 @ubifs_categorize_lprops(%struct.ubifs_info* %13, %struct.ubifs_lprops* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LPROPS_HEAP_CNT, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19
  br label %52

27:                                               ; preds = %22
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 0
  %30 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %30, i64 %33
  store %struct.ubifs_lpt_heap* %34, %struct.ubifs_lpt_heap** %7, align 8
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %36 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %37 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %38 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %39 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @adjust_lpt_heap(%struct.ubifs_info* %35, %struct.ubifs_lpt_heap* %36, %struct.ubifs_lprops* %37, i32 %40, i32 %41)
  br label %52

43:                                               ; preds = %2
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %45 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ubifs_remove_from_cat(%struct.ubifs_info* %44, %struct.ubifs_lprops* %45, i32 %46)
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %49 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ubifs_add_to_cat(%struct.ubifs_info* %48, %struct.ubifs_lprops* %49, i32 %50)
  br label %52

52:                                               ; preds = %26, %43, %27
  ret void
}

declare dso_local i32 @ubifs_categorize_lprops(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @adjust_lpt_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, %struct.ubifs_lprops*, i32, i32) #1

declare dso_local i32 @ubifs_remove_from_cat(%struct.ubifs_info*, %struct.ubifs_lprops*, i32) #1

declare dso_local i32 @ubifs_add_to_cat(%struct.ubifs_info*, %struct.ubifs_lprops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
