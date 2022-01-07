; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___is_extent_mergeable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___is_extent_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_info = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_info*, %struct.extent_info*)* @__is_extent_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__is_extent_mergeable(%struct.extent_info* %0, %struct.extent_info* %1) #0 {
  %3 = alloca %struct.extent_info*, align 8
  %4 = alloca %struct.extent_info*, align 8
  store %struct.extent_info* %0, %struct.extent_info** %3, align 8
  store %struct.extent_info* %1, %struct.extent_info** %4, align 8
  %5 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %6 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %9 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = load %struct.extent_info*, %struct.extent_info** %4, align 8
  %13 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %18 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %21 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.extent_info*, %struct.extent_info** %4, align 8
  %25 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br label %28

28:                                               ; preds = %16, %2
  %29 = phi i1 [ false, %2 ], [ %27, %16 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
