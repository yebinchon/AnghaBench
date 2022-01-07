; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_get_md.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_get_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.evlist = type { %struct.mmap*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmap* (%struct.evlist*, i32)* @get_md to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmap* @get_md(%struct.evlist* %0, i32 %1) #0 {
  %3 = alloca %struct.mmap*, align 8
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmap*, align 8
  store %struct.evlist* %0, %struct.evlist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.evlist*, %struct.evlist** %4, align 8
  %11 = getelementptr inbounds %struct.evlist, %struct.evlist* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load %struct.evlist*, %struct.evlist** %4, align 8
  %17 = getelementptr inbounds %struct.evlist, %struct.evlist* %16, i32 0, i32 0
  %18 = load %struct.mmap*, %struct.mmap** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mmap, %struct.mmap* %18, i64 %20
  store %struct.mmap* %21, %struct.mmap** %7, align 8
  %22 = load %struct.mmap*, %struct.mmap** %7, align 8
  %23 = getelementptr inbounds %struct.mmap, %struct.mmap* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load %struct.mmap*, %struct.mmap** %7, align 8
  store %struct.mmap* %29, %struct.mmap** %3, align 8
  br label %35

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %8

34:                                               ; preds = %8
  store %struct.mmap* null, %struct.mmap** %3, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.mmap*, %struct.mmap** %3, align 8
  ret %struct.mmap* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
