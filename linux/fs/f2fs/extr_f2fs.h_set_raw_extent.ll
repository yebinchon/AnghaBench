; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_set_raw_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_set_raw_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_info = type { i32, i32, i32 }
%struct.f2fs_extent = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_info*, %struct.f2fs_extent*)* @set_raw_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_raw_extent(%struct.extent_info* %0, %struct.f2fs_extent* %1) #0 {
  %3 = alloca %struct.extent_info*, align 8
  %4 = alloca %struct.f2fs_extent*, align 8
  store %struct.extent_info* %0, %struct.extent_info** %3, align 8
  store %struct.f2fs_extent* %1, %struct.f2fs_extent** %4, align 8
  %5 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %6 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @cpu_to_le32(i32 %7)
  %9 = load %struct.f2fs_extent*, %struct.f2fs_extent** %4, align 8
  %10 = getelementptr inbounds %struct.f2fs_extent, %struct.f2fs_extent* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %12 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le32(i32 %13)
  %15 = load %struct.f2fs_extent*, %struct.f2fs_extent** %4, align 8
  %16 = getelementptr inbounds %struct.f2fs_extent, %struct.f2fs_extent* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %18 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.f2fs_extent*, %struct.f2fs_extent** %4, align 8
  %22 = getelementptr inbounds %struct.f2fs_extent, %struct.f2fs_extent* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
