; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_get_usb_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_get_usb_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ufs_sb_private_info*, i32)* @get_usb_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_usb_offset(%struct.ufs_sb_private_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_sb_private_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %3, align 8
  %8 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = lshr i32 %6, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %3, align 8
  %18 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
