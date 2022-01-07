; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_get_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_spe_pkt = type { i8, i32, i32 }

@ARM_SPE_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@ARM_SPE_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8, %struct.arm_spe_pkt*)* @arm_spe_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_get_counter(i8* %0, i64 %1, i8 zeroext %2, %struct.arm_spe_pkt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.arm_spe_pkt*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8 %2, i8* %8, align 1
  store %struct.arm_spe_pkt* %3, %struct.arm_spe_pkt** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @ARM_SPE_NEED_MORE_BYTES, align 4
  store i32 %13, i32* %5, align 4
  br label %57

14:                                               ; preds = %4
  %15 = load i32, i32* @ARM_SPE_COUNTER, align 4
  %16 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %9, align 8
  %17 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i8, i8* %8, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 3
  %26 = shl i32 %25, 3
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 7
  %32 = or i32 %26, %31
  %33 = trunc i32 %32 to i8
  %34 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %9, align 8
  %35 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %34, i32 0, i32 0
  store i8 %33, i8* %35, align 4
  br label %45

36:                                               ; preds = %14
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 7
  %42 = trunc i32 %41 to i8
  %43 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %9, align 8
  %44 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %43, i32 0, i32 0
  store i8 %42, i8* %44, align 4
  br label %45

45:                                               ; preds = %36, %20
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %9, align 8
  %52 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i8, i8* %8, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 1, %54
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %45, %12
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
