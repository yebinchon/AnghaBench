; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4.h_ext4_decode_extra_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4.h_ext4_decode_extra_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i32 }

@EXT4_EPOCH_MASK = common dso_local global i32 0, align 4
@EXT4_NSEC_MASK = common dso_local global i32 0, align 4
@EXT4_EPOCH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec64*, i32)* @ext4_decode_extra_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_decode_extra_time(%struct.timespec64* %0, i32 %1) #0 {
  %3 = alloca %struct.timespec64*, align 8
  %4 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @EXT4_EPOCH_MASK, align 4
  %7 = call i32 @cpu_to_le32(i32 %6)
  %8 = and i32 %5, %7
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = load i32, i32* @EXT4_EPOCH_MASK, align 4
  %15 = and i32 %13, %14
  %16 = shl i32 %15, 32
  %17 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %11, %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = load i32, i32* @EXT4_NSEC_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @EXT4_EPOCH_BITS, align 4
  %27 = ashr i32 %25, %26
  %28 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %29 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
