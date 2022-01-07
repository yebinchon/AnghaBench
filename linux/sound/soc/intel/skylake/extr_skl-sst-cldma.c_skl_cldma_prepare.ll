; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_13__, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i64, i64, i32, i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 (%struct.sst_dsp.0*, %struct.TYPE_14__*, i32, i32)*, i32 (%struct.sst_dsp.1*, %struct.TYPE_14__*, i32**, i32, i32)*, i32, i32, i32, i32, i32, i32 }
%struct.sst_dsp.0 = type opaque
%struct.sst_dsp.1 = type opaque
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i32 (i32, %struct.TYPE_14__*, i32)*, i32 (i32, %struct.TYPE_14__*)* }

@SKL_MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@skl_cldma_setup_spb = common dso_local global i32 0, align 4
@skl_cldma_cleanup_spb = common dso_local global i32 0, align 4
@skl_cldma_stream_run = common dso_local global i32 0, align 4
@skl_cldma_cleanup = common dso_local global i32 0, align 4
@skl_cldma_copy_to_buf = common dso_local global i32 0, align 4
@skl_cldma_stop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Alloc buffer for base fw failed: %x\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Alloc buffer for blde failed: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_cldma_prepare(%struct.sst_dsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  %6 = load i32, i32* @SKL_MAX_BUFFER_SIZE, align 4
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %8 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  store i32 %6, i32* %9, align 4
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %11 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i32 (%struct.sst_dsp.1*, %struct.TYPE_14__*, i32**, i32, i32)* bitcast (i32 (%struct.sst_dsp*, %struct.TYPE_14__*, i32**, i32, i32)* @skl_cldma_setup_bdle to i32 (%struct.sst_dsp.1*, %struct.TYPE_14__*, i32**, i32, i32)*), i32 (%struct.sst_dsp.1*, %struct.TYPE_14__*, i32**, i32, i32)** %13, align 8
  %14 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %15 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 (%struct.sst_dsp.0*, %struct.TYPE_14__*, i32, i32)* bitcast (i32 (%struct.sst_dsp*, %struct.TYPE_14__*, i32, i32)* @skl_cldma_setup_controller to i32 (%struct.sst_dsp.0*, %struct.TYPE_14__*, i32, i32)*), i32 (%struct.sst_dsp.0*, %struct.TYPE_14__*, i32, i32)** %17, align 8
  %18 = load i32, i32* @skl_cldma_setup_spb, align 4
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %20 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 7
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @skl_cldma_cleanup_spb, align 4
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %25 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 6
  store i32 %23, i32* %27, align 8
  %28 = load i32, i32* @skl_cldma_stream_run, align 4
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %30 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 5
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @skl_cldma_cleanup, align 4
  %34 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %35 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* @skl_cldma_copy_to_buf, align 4
  %39 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %40 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @skl_cldma_stop, align 4
  %44 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %45 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 8
  %48 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %49 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32 (i32, %struct.TYPE_14__*, i32)*, i32 (i32, %struct.TYPE_14__*, i32)** %50, align 8
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %53 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %56 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 7
  %58 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %59 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 %51(i32 %54, %struct.TYPE_14__* %57, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %1
  %66 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %67 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %157

72:                                               ; preds = %1
  %73 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %74 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32 (i32, %struct.TYPE_14__*, i32)*, i32 (i32, %struct.TYPE_14__*, i32)** %75, align 8
  %77 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %78 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %81 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 5
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = call i32 %76(i32 %79, %struct.TYPE_14__* %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %72
  %88 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %89 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %94 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %95, align 8
  %97 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %98 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %101 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 7
  %103 = call i32 %96(i32 %99, %struct.TYPE_14__* %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %157

105:                                              ; preds = %72
  %106 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %107 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** %5, align 8
  %112 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %113 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32 (%struct.sst_dsp.1*, %struct.TYPE_14__*, i32**, i32, i32)*, i32 (%struct.sst_dsp.1*, %struct.TYPE_14__*, i32**, i32, i32)** %115, align 8
  %117 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %118 = bitcast %struct.sst_dsp* %117 to %struct.sst_dsp.1*
  %119 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %120 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 7
  %122 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %123 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 %116(%struct.sst_dsp.1* %118, %struct.TYPE_14__* %121, i32** %5, i32 %125, i32 1)
  %127 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %128 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32 (%struct.sst_dsp.0*, %struct.TYPE_14__*, i32, i32)*, i32 (%struct.sst_dsp.0*, %struct.TYPE_14__*, i32, i32)** %130, align 8
  %132 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %133 = bitcast %struct.sst_dsp* %132 to %struct.sst_dsp.0*
  %134 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %135 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 5
  %137 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %138 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %142 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %131(%struct.sst_dsp.0* %133, %struct.TYPE_14__* %136, i32 %140, i32 %144)
  %146 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %147 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %150 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  %152 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %153 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = call i32 @init_waitqueue_head(i32* %154)
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %105, %87, %65
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @skl_cldma_setup_bdle(%struct.sst_dsp*, %struct.TYPE_14__*, i32**, i32, i32) #1

declare dso_local i32 @skl_cldma_setup_controller(%struct.sst_dsp*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
