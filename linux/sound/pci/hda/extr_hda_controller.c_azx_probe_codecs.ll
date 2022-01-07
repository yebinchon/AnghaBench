; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_probe_codecs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_probe_codecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.hda_codec = type { i32, i32 }

@AZX_DEFAULT_CODECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Codec #%d probe error; disabling it...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no codecs initialized\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @azx_probe_codecs(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_codec*, align 8
  store %struct.azx* %0, %struct.azx** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.azx*, %struct.azx** %4, align 8
  %12 = call %struct.hdac_bus* @azx_bus(%struct.azx* %11)
  store %struct.hdac_bus* %12, %struct.hdac_bus** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @AZX_DEFAULT_CODECS, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %24 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = load %struct.azx*, %struct.azx** %4, align 8
  %30 = getelementptr inbounds %struct.azx, %struct.azx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %22
  %35 = load %struct.azx*, %struct.azx** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @probe_codec(%struct.azx* %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.azx*, %struct.azx** %4, align 8
  %41 = getelementptr inbounds %struct.azx, %struct.azx* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %51 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.azx*, %struct.azx** %4, align 8
  %55 = call i32 @azx_stop_chip(%struct.azx* %54)
  %56 = load %struct.azx*, %struct.azx** %4, align 8
  %57 = call i32 @azx_init_chip(%struct.azx* %56, i32 1)
  br label %58

58:                                               ; preds = %39, %34
  br label %59

59:                                               ; preds = %58, %22
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %18

63:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %105, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %108

68:                                               ; preds = %64
  %69 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %70 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = load %struct.azx*, %struct.azx** %4, align 8
  %76 = getelementptr inbounds %struct.azx, %struct.azx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %68
  %81 = load %struct.azx*, %struct.azx** %4, align 8
  %82 = getelementptr inbounds %struct.azx, %struct.azx* %81, i32 0, i32 4
  %83 = load %struct.azx*, %struct.azx** %4, align 8
  %84 = getelementptr inbounds %struct.azx, %struct.azx* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @snd_hda_codec_new(i32* %82, %struct.TYPE_2__* %85, i32 %86, %struct.hda_codec** %10)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %105

91:                                               ; preds = %80
  %92 = load %struct.azx*, %struct.azx** %4, align 8
  %93 = getelementptr inbounds %struct.azx, %struct.azx* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %96 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.azx*, %struct.azx** %4, align 8
  %98 = getelementptr inbounds %struct.azx, %struct.azx* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.hda_codec*, %struct.hda_codec** %10, align 8
  %101 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %91, %68
  br label %105

105:                                              ; preds = %104, %90
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %64

108:                                              ; preds = %64
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load %struct.azx*, %struct.azx** %4, align 8
  %113 = getelementptr inbounds %struct.azx, %struct.azx* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @ENXIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %121

120:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %111
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i64 @probe_codec(%struct.azx*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @azx_stop_chip(%struct.azx*) #1

declare dso_local i32 @azx_init_chip(%struct.azx*, i32) #1

declare dso_local i32 @snd_hda_codec_new(i32*, %struct.TYPE_2__*, i32, %struct.hda_codec**) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
