; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff400_allocate_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff400_allocate_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CIP_SFC_COUNT = common dso_local global i32 0, align 4
@amdtp_rate_table = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@FF400_STF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, i32)* @ff400_allocate_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff400_allocate_resources(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @CIP_SFC_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32*, i32** @amdtp_rate_table, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %10

27:                                               ; preds = %22, %10
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CIP_SFC_COUNT, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %99

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cpu_to_le32(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %41 = load i32, i32* @FF400_STF, align 4
  %42 = call i32 @snd_fw_transaction(i32 %39, i32 %40, i32 %41, i32* %6, i32 4, i32 0)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %99

47:                                               ; preds = %34
  %48 = call i32 @msleep(i32 100)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @snd_ff_stream_get_multiplier_mode(i32 %49, i32* %7)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %99

55:                                               ; preds = %47
  %56 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 255, i32* %58, align 4
  %59 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %60 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %59, i32 0, i32 0
  %61 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %61, i32 0, i32 4
  %63 = call i32 @amdtp_stream_get_max_payload(i32* %62)
  %64 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_4__* @fw_parent_device(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @fw_iso_resources_allocate(%struct.TYPE_5__* %60, i32 %63, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %55
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %99

75:                                               ; preds = %55
  %76 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %77 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 255, i32* %78, align 4
  %79 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %80 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %79, i32 0, i32 3
  %81 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %81, i32 0, i32 2
  %83 = call i32 @amdtp_stream_get_max_payload(i32* %82)
  %84 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %85 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_4__* @fw_parent_device(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @fw_iso_resources_allocate(%struct.TYPE_5__* %80, i32 %83, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %75
  %94 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %95 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %94, i32 0, i32 0
  %96 = call i32 @fw_iso_resources_free(%struct.TYPE_5__* %95)
  br label %97

97:                                               ; preds = %93, %75
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %73, %53, %45, %31
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_ff_stream_get_multiplier_mode(i32, i32*) #1

declare dso_local i32 @fw_iso_resources_allocate(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(i32*) #1

declare dso_local %struct.TYPE_4__* @fw_parent_device(i32) #1

declare dso_local i32 @fw_iso_resources_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
