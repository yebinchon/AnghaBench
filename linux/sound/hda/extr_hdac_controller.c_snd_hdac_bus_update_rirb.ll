; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_update_rirb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_update_rirb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i64*, i32* }

@RIRBWP = common dso_local global i32 0, align 4
@AZX_MAX_RIRB_ENTRIES = common dso_local global i32 0, align 4
@HDA_MAX_CODECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"spurious response %#x:%#x, rp = %d, wp = %d\00", align 1
@AZX_RIRB_EX_UNSOL_EV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"spurious response %#x:%#x, last cmd=%#08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_bus_update_rirb(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %9 = load i32, i32* @RIRBWP, align 4
  %10 = call i32 @snd_hdac_chip_readw(%struct.hdac_bus* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %143

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %17 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %143

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %25 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  br label %27

27:                                               ; preds = %142, %22
  %28 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %29 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %143

34:                                               ; preds = %27
  %35 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %36 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @AZX_MAX_RIRB_ENTRIES, align 4
  %41 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %42 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = urem i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %47 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %3, align 4
  %51 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %52 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %62 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 15
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @HDA_MAX_CODECS, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %34
  %76 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %77 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %82 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %84, i32 %85)
  %87 = call i32 (...) @snd_BUG()
  br label %142

88:                                               ; preds = %34
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @AZX_RIRB_EX_UNSOL_EV, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @snd_hdac_bus_queue_event(%struct.hdac_bus* %94, i32 %95, i32 %96)
  br label %141

98:                                               ; preds = %88
  %99 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %100 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %98
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %111 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %109, i32* %116, align 4
  %117 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %118 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, -1
  store i64 %125, i64* %123, align 8
  br label %140

126:                                              ; preds = %98
  %127 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %128 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %133 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_err_ratelimited(i32 %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131, i32 %138)
  br label %140

140:                                              ; preds = %126, %108
  br label %141

141:                                              ; preds = %140, %93
  br label %142

142:                                              ; preds = %141, %75
  br label %27

143:                                              ; preds = %13, %21, %27
  ret void
}

declare dso_local i32 @snd_hdac_chip_readw(%struct.hdac_bus*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_hdac_bus_queue_event(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
