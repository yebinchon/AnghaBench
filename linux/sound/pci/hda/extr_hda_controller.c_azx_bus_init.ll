; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64*, i32, %struct.TYPE_3__*, i32, i32, %struct.hda_bus }
%struct.TYPE_3__ = type { i32 }
%struct.hda_bus = type { i8*, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@bus_core_ops = common dso_local global i32 0, align 4
@azx_get_pos_lpib = common dso_local global i64 0, align 8
@AZX_DCAPS_CORBRP_SELF_CLEAR = common dso_local global i32 0, align 4
@AZX_DCAPS_4K_BDLE_BOUNDARY = common dso_local global i32 0, align 4
@AZX_DCAPS_SYNC_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Enable sync_write for stable communication\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @azx_bus_init(%struct.azx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hda_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.azx*, %struct.azx** %4, align 8
  %9 = getelementptr inbounds %struct.azx, %struct.azx* %8, i32 0, i32 5
  store %struct.hda_bus* %9, %struct.hda_bus** %6, align 8
  %10 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %11 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %10, i32 0, i32 3
  %12 = load %struct.azx*, %struct.azx** %4, align 8
  %13 = getelementptr inbounds %struct.azx, %struct.azx* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_hdac_bus_init(%struct.TYPE_4__* %11, i32 %16, i32* @bus_core_ops)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load %struct.azx*, %struct.azx** %4, align 8
  %24 = getelementptr inbounds %struct.azx, %struct.azx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %27 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %26, i32 0, i32 6
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %29 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %28, i32 0, i32 5
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.azx*, %struct.azx** %4, align 8
  %32 = getelementptr inbounds %struct.azx, %struct.azx* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %35 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %38 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %40 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 8
  %41 = load %struct.azx*, %struct.azx** %4, align 8
  %42 = call i32 @azx_snoop(%struct.azx* %41)
  %43 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %44 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 4
  %46 = load %struct.azx*, %struct.azx** %4, align 8
  %47 = getelementptr inbounds %struct.azx, %struct.azx* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @azx_get_pos_lpib, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %22
  %54 = load %struct.azx*, %struct.azx** %4, align 8
  %55 = getelementptr inbounds %struct.azx, %struct.azx* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @azx_get_pos_lpib, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53, %22
  %62 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %63 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.azx*, %struct.azx** %4, align 8
  %67 = getelementptr inbounds %struct.azx, %struct.azx* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %70 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 8
  %72 = load %struct.azx*, %struct.azx** %4, align 8
  %73 = getelementptr inbounds %struct.azx, %struct.azx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @AZX_DCAPS_CORBRP_SELF_CLEAR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %80 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %65
  %83 = load %struct.azx*, %struct.azx** %4, align 8
  %84 = getelementptr inbounds %struct.azx, %struct.azx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AZX_DCAPS_4K_BDLE_BOUNDARY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %91 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %82
  %94 = load %struct.azx*, %struct.azx** %4, align 8
  %95 = getelementptr inbounds %struct.azx, %struct.azx* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @AZX_DCAPS_SYNC_WRITE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.azx*, %struct.azx** %4, align 8
  %102 = getelementptr inbounds %struct.azx, %struct.azx* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_dbg(i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %108 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  %110 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %111 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %110, i32 0, i32 2
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %100, %93
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @snd_hdac_bus_init(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @azx_snoop(%struct.azx*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
