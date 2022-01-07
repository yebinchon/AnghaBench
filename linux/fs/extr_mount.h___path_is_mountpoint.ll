; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_mount.h___path_is_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_mount.h___path_is_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, i32 }
%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MNT_SYNC_UMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*)* @__path_is_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__path_is_mountpoint(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  %3 = alloca %struct.mount*, align 8
  store %struct.path* %0, %struct.path** %2, align 8
  %4 = load %struct.path*, %struct.path** %2, align 8
  %5 = getelementptr inbounds %struct.path, %struct.path* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.path*, %struct.path** %2, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mount* @__lookup_mnt(i32 %6, i32 %9)
  store %struct.mount* %10, %struct.mount** %3, align 8
  %11 = load %struct.mount*, %struct.mount** %3, align 8
  %12 = icmp ne %struct.mount* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.mount*, %struct.mount** %3, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MNT_SYNC_UMOUNT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %13, %1
  %26 = phi i1 [ false, %1 ], [ %24, %13 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local %struct.mount* @__lookup_mnt(i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
