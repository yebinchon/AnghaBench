; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_sf_get_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_sf_get_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_sf_hdr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_dir2_sf_hdr*, i32*)* @xfs_dir2_sf_get_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_sf_get_ino(%struct.xfs_dir2_sf_hdr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_dir2_sf_hdr*, align 8
  %5 = alloca i32*, align 8
  store %struct.xfs_dir2_sf_hdr* %0, %struct.xfs_dir2_sf_hdr** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.xfs_dir2_sf_hdr*, %struct.xfs_dir2_sf_hdr** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, %struct.xfs_dir2_sf_hdr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @get_unaligned_be64(i32* %11)
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @get_unaligned_be32(i32* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @get_unaligned_be64(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
