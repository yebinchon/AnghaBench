; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_get_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_get_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_spe_pkt = type { i32 }

@ARM_SPE_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@ARM_SPE_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.arm_spe_pkt*)* @arm_spe_get_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_get_alignment(i8* %0, i64 %1, %struct.arm_spe_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.arm_spe_pkt*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.arm_spe_pkt* %2, %struct.arm_spe_pkt** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 15
  %14 = add nsw i32 %13, 1
  %15 = shl i32 1, %14
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ARM_SPE_NEED_MORE_BYTES, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load i32, i32* @ARM_SPE_PAD, align 4
  %24 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %25 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = and i64 %29, %32
  %34 = sub i64 %27, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
