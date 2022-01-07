; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_fast_find_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_fast_find_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32 }
%struct.ubifs_info = type { %struct.ubifs_lpt_heap*, i32 }
%struct.ubifs_lpt_heap = type { i64, %struct.ubifs_lprops** }

@LPROPS_FREE = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_lprops* @ubifs_fast_find_free(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_lprops*, align 8
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca %struct.ubifs_lpt_heap*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 1
  %9 = call i32 @mutex_is_locked(i32* %8)
  %10 = call i32 @ubifs_assert(%struct.ubifs_info* %6, i32 %9)
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 0
  %13 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %12, align 8
  %14 = load i32, i32* @LPROPS_FREE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %13, i64 %16
  store %struct.ubifs_lpt_heap* %17, %struct.ubifs_lpt_heap** %5, align 8
  %18 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %5, align 8
  %19 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.ubifs_lprops* null, %struct.ubifs_lprops** %2, align 8
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %5, align 8
  %25 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %24, i32 0, i32 1
  %26 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %25, align 8
  %27 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %26, i64 0
  %28 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %27, align 8
  store %struct.ubifs_lprops* %28, %struct.ubifs_lprops** %4, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %31 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LPROPS_TAKEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ubifs_assert(%struct.ubifs_info* %29, i32 %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %41 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LPROPS_INDEX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @ubifs_assert(%struct.ubifs_info* %39, i32 %47)
  %49 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  store %struct.ubifs_lprops* %49, %struct.ubifs_lprops** %2, align 8
  br label %50

50:                                               ; preds = %23, %22
  %51 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %2, align 8
  ret %struct.ubifs_lprops* %51
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
