; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_codec_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_codec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32 }

@HDA_MAX_CODECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Codec #%d probe error; disabling it...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_bus*)* @skl_codec_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_codec_create(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  %5 = load i32, i32* @HDA_MAX_CODECS, align 4
  store i32 %5, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %12 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %10
  %19 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @probe_codec(%struct.hdac_bus* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %25 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %33 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %37 = call i32 @snd_hdac_bus_stop_chip(%struct.hdac_bus* %36)
  %38 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %39 = call i32 @skl_init_chip(%struct.hdac_bus* %38, i32 1)
  br label %40

40:                                               ; preds = %23, %18
  br label %41

41:                                               ; preds = %40, %10
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i64 @probe_codec(%struct.hdac_bus*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @snd_hdac_bus_stop_chip(%struct.hdac_bus*) #1

declare dso_local i32 @skl_init_chip(%struct.hdac_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
