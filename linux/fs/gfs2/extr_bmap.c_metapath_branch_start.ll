; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_metapath_branch_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_metapath_branch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.metapath*)* @metapath_branch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metapath_branch_start(%struct.metapath* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.metapath*, align 8
  store %struct.metapath* %0, %struct.metapath** %3, align 8
  %4 = load %struct.metapath*, %struct.metapath** %3, align 8
  %5 = getelementptr inbounds %struct.metapath, %struct.metapath* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
