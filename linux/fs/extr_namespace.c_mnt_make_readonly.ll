; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mnt_make_readonly.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mnt_make_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MNT_WRITE_HOLD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MNT_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @mnt_make_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnt_make_readonly(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @lock_mount_hash()
  %5 = load i32, i32* @MNT_WRITE_HOLD, align 4
  %6 = load %struct.mount*, %struct.mount** %2, align 8
  %7 = getelementptr inbounds %struct.mount, %struct.mount* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %5
  store i32 %10, i32* %8, align 4
  %11 = call i32 (...) @smp_mb()
  %12 = load %struct.mount*, %struct.mount** %2, align 8
  %13 = call i64 @mnt_get_writers(%struct.mount* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @MNT_READONLY, align 4
  %20 = load %struct.mount*, %struct.mount** %2, align 8
  %21 = getelementptr inbounds %struct.mount, %struct.mount* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = call i32 (...) @smp_wmb()
  %27 = load i32, i32* @MNT_WRITE_HOLD, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.mount*, %struct.mount** %2, align 8
  %30 = getelementptr inbounds %struct.mount, %struct.mount* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = call i32 (...) @unlock_mount_hash()
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @mnt_get_writers(%struct.mount*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @unlock_mount_hash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
