; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_begin_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_begin_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@DG00X_ADDR_BASE = common dso_local global i64 0, align 8
@DG00X_OFFSET_ISOC_CHANNELS = common dso_local global i64 0, align 8
@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@DG00X_OFFSET_STREAMING_STATE = common dso_local global i64 0, align 8
@DG00X_OFFSET_STREAMING_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dg00x*)* @begin_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @begin_session(%struct.snd_dg00x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dg00x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %3, align 8
  %7 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %8 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 16
  %12 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %13 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %11, %15
  %17 = call i32 @cpu_to_be32(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %19 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %22 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %23 = load i64, i64* @DG00X_OFFSET_ISOC_CHANNELS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @snd_fw_transaction(i32 %20, i32 %21, i64 %24, i32* %4, i32 4, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %75

30:                                               ; preds = %1
  %31 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %32 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %35 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %36 = load i64, i64* @DG00X_OFFSET_STREAMING_STATE, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @snd_fw_transaction(i32 %33, i32 %34, i64 %37, i32* %4, i32 4, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %75

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 2, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %69, %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @cpu_to_be32(i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %59 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %62 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %63 = load i64, i64* @DG00X_OFFSET_STREAMING_SET, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @snd_fw_transaction(i32 %60, i32 %61, i64 %64, i32* %4, i32 4, i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %73

69:                                               ; preds = %55
  %70 = call i32 @msleep(i32 20)
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  br label %52

73:                                               ; preds = %68, %52
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %41, %28
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
