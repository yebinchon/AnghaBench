; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_sf_nextentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_sf_nextentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_sf_hdr = type { i32 }
%struct.xfs_dir2_sf_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_dir2_sf_entry* (%struct.xfs_dir2_sf_hdr*, %struct.xfs_dir2_sf_entry*)* @xfs_dir3_sf_nextentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_dir2_sf_entry* @xfs_dir3_sf_nextentry(%struct.xfs_dir2_sf_hdr* %0, %struct.xfs_dir2_sf_entry* %1) #0 {
  %3 = alloca %struct.xfs_dir2_sf_hdr*, align 8
  %4 = alloca %struct.xfs_dir2_sf_entry*, align 8
  store %struct.xfs_dir2_sf_hdr* %0, %struct.xfs_dir2_sf_hdr** %3, align 8
  store %struct.xfs_dir2_sf_entry* %1, %struct.xfs_dir2_sf_entry** %4, align 8
  %5 = load %struct.xfs_dir2_sf_entry*, %struct.xfs_dir2_sf_entry** %4, align 8
  %6 = bitcast %struct.xfs_dir2_sf_entry* %5 to i8*
  %7 = load %struct.xfs_dir2_sf_hdr*, %struct.xfs_dir2_sf_hdr** %3, align 8
  %8 = load %struct.xfs_dir2_sf_entry*, %struct.xfs_dir2_sf_entry** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_dir2_sf_entry, %struct.xfs_dir2_sf_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @xfs_dir3_sf_entsize(%struct.xfs_dir2_sf_hdr* %7, i32 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %6, i64 %12
  %14 = bitcast i8* %13 to %struct.xfs_dir2_sf_entry*
  ret %struct.xfs_dir2_sf_entry* %14
}

declare dso_local i32 @xfs_dir3_sf_entsize(%struct.xfs_dir2_sf_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
