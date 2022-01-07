; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_connect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isight = type { %struct.TYPE_5__, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SPEED_SHIFT = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@REG_ISO_TX_CONFIG = common dso_local global i64 0, align 8
@FW_FIXED_GENERATION = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isight*)* @isight_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isight_connect(%struct.isight* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isight*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isight* %0, %struct.isight** %3, align 8
  br label %7

7:                                                ; preds = %51, %1
  %8 = load %struct.isight*, %struct.isight** %3, align 8
  %9 = getelementptr inbounds %struct.isight, %struct.isight* %8, i32 0, i32 0
  %10 = load %struct.isight*, %struct.isight** %3, align 8
  %11 = getelementptr inbounds %struct.isight, %struct.isight* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @fw_iso_resources_allocate(%struct.TYPE_5__* %9, i32 4, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %5, align 4
  br label %65

20:                                               ; preds = %7
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.isight*, %struct.isight** %3, align 8
  %23 = getelementptr inbounds %struct.isight, %struct.isight* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SPEED_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %21, %28
  %30 = call i32 @cpu_to_be32(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.isight*, %struct.isight** %3, align 8
  %32 = getelementptr inbounds %struct.isight, %struct.isight* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %35 = load %struct.isight*, %struct.isight** %3, align 8
  %36 = getelementptr inbounds %struct.isight, %struct.isight* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_ISO_TX_CONFIG, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @FW_FIXED_GENERATION, align 4
  %41 = load %struct.isight*, %struct.isight** %3, align 8
  %42 = getelementptr inbounds %struct.isight, %struct.isight* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %40, %44
  %46 = call i32 @snd_fw_transaction(i32 %33, i32 %34, i64 %39, i32* %6, i32 4, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %20
  %52 = load %struct.isight*, %struct.isight** %3, align 8
  %53 = getelementptr inbounds %struct.isight, %struct.isight* %52, i32 0, i32 0
  %54 = call i32 @fw_iso_resources_free(%struct.TYPE_5__* %53)
  br label %7

55:                                               ; preds = %20
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %67

61:                                               ; preds = %58
  %62 = load %struct.isight*, %struct.isight** %3, align 8
  %63 = getelementptr inbounds %struct.isight, %struct.isight* %62, i32 0, i32 0
  %64 = call i32 @fw_iso_resources_free(%struct.TYPE_5__* %63)
  br label %65

65:                                               ; preds = %61, %18
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @fw_iso_resources_allocate(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @fw_iso_resources_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
