; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_get_payload.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_get_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_spe_pkt = type { i32 }

@ARM_SPE_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@ARM_SPE_BAD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.arm_spe_pkt*)* @arm_spe_get_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_get_payload(i8* %0, i64 %1, %struct.arm_spe_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.arm_spe_pkt*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.arm_spe_pkt* %2, %struct.arm_spe_pkt** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @payloadlen(i8 zeroext %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add i64 1, %14
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ARM_SPE_NEED_MORE_BYTES, align 4
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i64, i64* %8, align 8
  switch i64 %22, label %50 [
    i64 1, label %23
    i64 2, label %29
    i64 4, label %36
    i64 8, label %43
  ]

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %28 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %52

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %35 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %52

36:                                               ; preds = %19
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %42 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %52

43:                                               ; preds = %19
  %44 = load i8*, i8** %5, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le64_to_cpu(i32 %46)
  %48 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %49 = getelementptr inbounds %struct.arm_spe_pkt, %struct.arm_spe_pkt* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %52

50:                                               ; preds = %19
  %51 = load i32, i32* @ARM_SPE_BAD_PACKET, align 4
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %43, %36, %29, %23
  %53 = load i64, i64* %8, align 8
  %54 = add i64 1, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %50, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @payloadlen(i8 zeroext) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
