; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4.h_ext4_encode_extra_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4.h_ext4_encode_extra_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i32 }

@EXT4_EPOCH_MASK = common dso_local global i32 0, align 4
@EXT4_EPOCH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timespec64*)* @ext4_encode_extra_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_encode_extra_time(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  %4 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %5 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  %11 = ashr i32 %10, 32
  %12 = load i32, i32* @EXT4_EPOCH_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %16 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EXT4_EPOCH_BITS, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %14, %19
  %21 = call i32 @cpu_to_le32(i32 %20)
  ret i32 %21
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
