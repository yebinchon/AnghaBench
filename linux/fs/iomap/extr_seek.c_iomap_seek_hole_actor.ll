; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_seek.c_iomap_seek_hole_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_seek.c_iomap_seek_hole_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32 }

@SEEK_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i8*, %struct.iomap*)* @iomap_seek_hole_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_seek_hole_actor(%struct.inode* %0, i32 %1, i32 %2, i8* %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iomap*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %12 = load %struct.iomap*, %struct.iomap** %11, align 8
  %13 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %30 [
    i32 128, label %15
    i32 129, label %26
  ]

15:                                               ; preds = %5
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SEEK_HOLE, align 4
  %20 = call i32 @page_cache_seek_hole_data(%struct.inode* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %6, align 4
  br label %32

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %5, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %26, %23
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @page_cache_seek_hole_data(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
