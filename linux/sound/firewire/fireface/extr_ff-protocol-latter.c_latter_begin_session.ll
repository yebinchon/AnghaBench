; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-latter.c_latter_begin_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-latter.c_latter_begin_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@LATTER_ISOC_CHANNELS = common dso_local global i32 0, align 4
@LATTER_ISOC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, i32)* @latter_begin_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latter_begin_session(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp uge i32 %15, 32000
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ule i32 %18, 48000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 146, i32* %7, align 4
  br label %40

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp uge i32 %22, 64000
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp ule i32 %25, 96000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 142, i32* %7, align 4
  br label %39

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp uge i32 %29, 128000
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ule i32 %32, 192000
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 140, i32* %7, align 4
  br label %38

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %100

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %27
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_5__* @fw_parent_device(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %41, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %40
  %52 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %52, i32 0, i32 2
  %54 = call i32 @fw_iso_resources_update(%struct.TYPE_6__* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %100

59:                                               ; preds = %51
  %60 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %60, i32 0, i32 1
  %62 = call i32 @fw_iso_resources_update(%struct.TYPE_6__* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %100

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %40
  %69 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %70 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %75 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %73, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @cpu_to_le32(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %85 = load i32, i32* @LATTER_ISOC_CHANNELS, align 4
  %86 = call i32 @snd_fw_transaction(i32 %83, i32 %84, i32 %85, i32* %9, i32 4, i32 0)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %68
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  br label %100

91:                                               ; preds = %68
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @cpu_to_le32(i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %95 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %98 = load i32, i32* @LATTER_ISOC_START, align 4
  %99 = call i32 @snd_fw_transaction(i32 %96, i32 %97, i32 %98, i32* %9, i32 4, i32 0)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %91, %89, %65, %57, %35
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_5__* @fw_parent_device(i32) #1

declare dso_local i32 @fw_iso_resources_update(%struct.TYPE_6__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
