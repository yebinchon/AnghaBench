; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_sampleclock_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_sampleclock_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { %struct.clk_cache, %struct.snd_card* }
%struct.clk_cache = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i8* }
%struct.snd_card = type { i32 }
%struct.hpi_control = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HPI_SAMPLECLOCK_SOURCE_LAST = common dso_local global i32 0, align 4
@sampleclock_sources = common dso_local global i8** null, align 8
@HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT = common dso_local global i64 0, align 8
@HPI_SAMPLECLOCK_SOURCE_LOCAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i8* null, align 8
@snd_asihpi_clksrc_info = common dso_local global i32 0, align 4
@snd_asihpi_clksrc_get = common dso_local global i32 0, align 4
@snd_asihpi_clksrc_put = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Localrate\00", align 1
@snd_asihpi_clklocal_info = common dso_local global i32 0, align 4
@snd_asihpi_clklocal_get = common dso_local global i32 0, align 4
@snd_asihpi_clklocal_put = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Rate\00", align 1
@SNDRV_CTL_ELEM_ACCESS_VOLATILE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READ = common dso_local global i32 0, align 4
@snd_asihpi_clkrate_info = common dso_local global i32 0, align 4
@snd_asihpi_clkrate_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card_asihpi*, %struct.hpi_control*)* @snd_asihpi_sampleclock_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_sampleclock_add(%struct.snd_card_asihpi* %0, %struct.hpi_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card_asihpi*, align 8
  %5 = alloca %struct.hpi_control*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_kcontrol_new, align 4
  %8 = alloca %struct.clk_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.snd_card_asihpi* %0, %struct.snd_card_asihpi** %4, align 8
  store %struct.hpi_control* %1, %struct.hpi_control** %5, align 8
  %14 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %15 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %18 = icmp ne %struct.snd_card_asihpi* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %202

26:                                               ; preds = %2
  %27 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %27, i32 0, i32 1
  %29 = load %struct.snd_card*, %struct.snd_card** %28, align 8
  store %struct.snd_card* %29, %struct.snd_card** %6, align 8
  %30 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %31 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %30, i32 0, i32 0
  store %struct.clk_cache* %31, %struct.clk_cache** %8, align 8
  %32 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %33 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %37 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %87, %26
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @HPI_SAMPLECLOCK_SOURCE_LAST, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @hpi_sample_clock_query_source(i32 %43, i32 %44, i64* %13)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %90

48:                                               ; preds = %42
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %51 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %49, i64* %56, align 8
  %57 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %58 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load i8**, i8*** @sampleclock_sources, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %69 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i8* %67, i8** %74, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %48
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @HPI_SAMPLECLOCK_SOURCE_LOCAL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %85 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %38

90:                                               ; preds = %47, %38
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %90
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %137, %93
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %140

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i64, i64* @HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT, align 8
  %101 = call i64 @hpi_sample_clock_query_source_index(i32 %98, i32 %99, i64 %100, i64* %13)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %140

104:                                              ; preds = %97
  %105 = load i64, i64* @HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT, align 8
  %106 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %107 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i64 %105, i64* %112, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %115 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %113, i32* %120, align 8
  %121 = load i8**, i8*** @sampleclock_sources, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @HPI_SAMPLECLOCK_SOURCE_LAST, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %121, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %129 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  store i8* %127, i8** %134, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %104
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %94

140:                                              ; preds = %103, %94
  br label %141

141:                                              ; preds = %140, %90
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %144 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %146 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %7, %struct.hpi_control* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %147 = load i8*, i8** @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @snd_asihpi_clksrc_info, align 4
  %151 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @snd_asihpi_clksrc_get, align 4
  %153 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* @snd_asihpi_clksrc_put, align 4
  %155 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  store i32 %154, i32* %155, align 4
  %156 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %157 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %158 = call i32 @ctl_add(%struct.snd_card* %156, %struct.snd_kcontrol_new* %7, %struct.snd_card_asihpi* %157)
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %141
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %202

163:                                              ; preds = %141
  %164 = load %struct.clk_cache*, %struct.clk_cache** %8, align 8
  %165 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %163
  %169 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %170 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %7, %struct.hpi_control* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i8*, i8** @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* @snd_asihpi_clklocal_info, align 4
  %175 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* @snd_asihpi_clklocal_get, align 4
  %177 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* @snd_asihpi_clklocal_put, align 4
  %179 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  store i32 %178, i32* %179, align 4
  %180 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %181 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %182 = call i32 @ctl_add(%struct.snd_card* %180, %struct.snd_kcontrol_new* %7, %struct.snd_card_asihpi* %181)
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %168
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %3, align 4
  br label %202

187:                                              ; preds = %168
  br label %188

188:                                              ; preds = %187, %163
  %189 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %190 = call i32 @asihpi_ctl_init(%struct.snd_kcontrol_new* %7, %struct.hpi_control* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %191 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_VOLATILE, align 4
  %192 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READ, align 4
  %193 = or i32 %191, %192
  %194 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* @snd_asihpi_clkrate_info, align 4
  %196 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* @snd_asihpi_clkrate_get, align 4
  %198 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 %197, i32* %198, align 4
  %199 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %200 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %201 = call i32 @ctl_add(%struct.snd_card* %199, %struct.snd_kcontrol_new* %7, %struct.snd_card_asihpi* %200)
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %188, %184, %160, %23
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @hpi_sample_clock_query_source(i32, i32, i64*) #1

declare dso_local i64 @hpi_sample_clock_query_source_index(i32, i32, i64, i64*) #1

declare dso_local i32 @asihpi_ctl_init(%struct.snd_kcontrol_new*, %struct.hpi_control*, i8*) #1

declare dso_local i32 @ctl_add(%struct.snd_card*, %struct.snd_kcontrol_new*, %struct.snd_card_asihpi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
