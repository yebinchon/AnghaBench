; ModuleID = '/home/carl/AnghaBench/linux/fs/romfs/extr_mmap-nommu.c_romfs_mmap_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/fs/romfs/extr_mmap-nommu.c_romfs_mmap_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.mtd_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mtd_info* }

@NOMMU_MAP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @romfs_mmap_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @romfs_mmap_capabilities(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = call %struct.TYPE_4__* @file_inode(%struct.file* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  store %struct.mtd_info* %10, %struct.mtd_info** %4, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = icmp ne %struct.mtd_info* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @NOMMU_MAP_COPY, align 4
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = call i32 @mtd_mmap_capabilities(%struct.mtd_info* %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #1

declare dso_local i32 @mtd_mmap_capabilities(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
