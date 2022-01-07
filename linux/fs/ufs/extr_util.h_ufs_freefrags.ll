; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_ufs_freefrags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_ufs_freefrags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ufs_sb_private_info*)* @ufs_freefrags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ufs_freefrags(%struct.ufs_sb_private_info* %0) #0 {
  %2 = alloca %struct.ufs_sb_private_info*, align 8
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %2, align 8
  %3 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %2, align 8
  %4 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @ufs_blkstofrags(i32 %6)
  %8 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %2, align 8
  %9 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %7, %11
  ret i64 %12
}

declare dso_local i64 @ufs_blkstofrags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
