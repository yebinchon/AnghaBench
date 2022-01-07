; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_pack_timespec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_pack_timespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i32 }

@time64_t = common dso_local global i32 0, align 4
@OCFS2_SEC_SHIFT = common dso_local global i32 0, align 4
@OCFS2_NSEC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timespec64*)* @ocfs2_pack_timespec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_pack_timespec(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  %6 = load i32, i32* @time64_t, align 4
  %7 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clamp_t(i32 %6, i32 %9, i32 0, i32 -1)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %12 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @OCFS2_SEC_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @OCFS2_NSEC_MASK, align 4
  %19 = and i32 %17, %18
  %20 = or i32 %16, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
