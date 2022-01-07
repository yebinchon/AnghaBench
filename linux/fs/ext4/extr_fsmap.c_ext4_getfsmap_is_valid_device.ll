; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_is_valid_device.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_is_valid_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ext4_fsmap = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_fsmap*)* @ext4_getfsmap_is_valid_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_getfsmap_is_valid_device(%struct.super_block* %0, %struct.ext4_fsmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext4_fsmap*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ext4_fsmap* %1, %struct.ext4_fsmap** %5, align 8
  %6 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %7 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %12 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UINT_MAX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %18 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @new_encode_dev(i32 %24)
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16, %10, %2
  store i32 1, i32* %3, align 4
  br label %48

28:                                               ; preds = %16
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = call %struct.TYPE_6__* @EXT4_SB(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %5, align 8
  %36 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = call %struct.TYPE_6__* @EXT4_SB(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @new_encode_dev(i32 %43)
  %45 = icmp eq i64 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %48

47:                                               ; preds = %34, %28
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %27
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @new_encode_dev(i32) #1

declare dso_local %struct.TYPE_6__* @EXT4_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
