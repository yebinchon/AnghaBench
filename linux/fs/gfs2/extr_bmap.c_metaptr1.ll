; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_metaptr1.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_metaptr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { %struct.buffer_head** }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.metapath*)* @metaptr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @metaptr1(i32 %0, %struct.metapath* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.metapath*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.metapath* %1, %struct.metapath** %5, align 8
  %7 = load %struct.metapath*, %struct.metapath** %5, align 8
  %8 = getelementptr inbounds %struct.metapath, %struct.metapath* %7, i32 0, i32 0
  %9 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %9, i64 %11
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %13, %struct.buffer_head** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 4
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %3, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 4
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %3, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
