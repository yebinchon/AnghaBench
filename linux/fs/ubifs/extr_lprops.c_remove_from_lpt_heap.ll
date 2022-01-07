; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_remove_from_lpt_heap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_remove_from_lpt_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.ubifs_lpt_heap* }
%struct.ubifs_lpt_heap = type { i32, %struct.ubifs_lprops** }
%struct.ubifs_lprops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_lprops*, i32)* @remove_from_lpt_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_lpt_heap(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_lpt_heap*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %10 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %14, i64 %17
  store %struct.ubifs_lpt_heap* %18, %struct.ubifs_lpt_heap** %7, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %25 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i1 [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ubifs_assert(%struct.ubifs_info* %19, i32 %30)
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %34 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %33, i32 0, i32 1
  %35 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %35, i64 %37
  %39 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %38, align 8
  %40 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %41 = icmp eq %struct.ubifs_lprops* %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ubifs_assert(%struct.ubifs_info* %32, i32 %42)
  %44 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %45 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %50 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %28
  %54 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %55 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %54, i32 0, i32 1
  %56 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %55, align 8
  %57 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %58 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %56, i64 %60
  %62 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %61, align 8
  %63 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %64 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %63, i32 0, i32 1
  %65 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %65, i64 %67
  store %struct.ubifs_lprops* %62, %struct.ubifs_lprops** %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %71 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %70, i32 0, i32 1
  %72 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %72, i64 %74
  %76 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %75, align 8
  %77 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %76, i32 0, i32 0
  store i32 %69, i32* %77, align 4
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %79 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %80 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %81 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %80, i32 0, i32 1
  %82 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %82, i64 %84
  %86 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @adjust_lpt_heap(%struct.ubifs_info* %78, %struct.ubifs_lpt_heap* %79, %struct.ubifs_lprops* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %53, %28
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %92 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %7, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @dbg_check_heap(%struct.ubifs_info* %91, %struct.ubifs_lpt_heap* %92, i32 %93, i32 -1)
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @adjust_lpt_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, %struct.ubifs_lprops*, i32, i32) #1

declare dso_local i32 @dbg_check_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
