; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_fsmap_to_internal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_fsmap_to_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_fsmap = type { i32, i32, i32, i32, i32 }
%struct.fsmap = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_fsmap_to_internal(%struct.super_block* %0, %struct.ext4_fsmap* %1, %struct.fsmap* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext4_fsmap*, align 8
  %6 = alloca %struct.fsmap*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ext4_fsmap* %1, %struct.ext4_fsmap** %5, align 8
  store %struct.fsmap* %2, %struct.fsmap** %6, align 8
  %7 = load %struct.fsmap*, %struct.fsmap** %6, align 8
  %8 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %11 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.fsmap*, %struct.fsmap** %6, align 8
  %13 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %16 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.fsmap*, %struct.fsmap** %6, align 8
  %18 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %19, %22
  %24 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %25 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.fsmap*, %struct.fsmap** %6, align 8
  %27 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %30 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fsmap*, %struct.fsmap** %6, align 8
  %32 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %33, %36
  %38 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %39 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
