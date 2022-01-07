; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_coeff_ram_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_coeff_ram_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.tscs454 = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.TYPE_15__ = type { %struct.mutex }
%struct.TYPE_12__ = type { i32, %struct.mutex, i32* }
%struct.TYPE_10__ = type { i32, %struct.mutex, i32* }
%struct.TYPE_9__ = type { i32, %struct.mutex, i32* }
%struct.coeff_ram_ctl = type { i64, %struct.soc_bytes_ext }
%struct.soc_bytes_ext = type { i64 }

@COEFF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@R_DACCRS = common dso_local global i32 0, align 4
@R_DACCRADD = common dso_local global i32 0, align 4
@R_DACCRWDL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@R_SPKCRS = common dso_local global i32 0, align 4
@R_SPKCRADD = common dso_local global i32 0, align 4
@R_SPKCRWDL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"Sub\00", align 1
@R_SUBCRS = common dso_local global i32 0, align 4
@R_SUBCRADD = common dso_local global i32 0, align 4
@R_SUBCRWDL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@R_PLLSTAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to read PLL status (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to flush coeff ram cache (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @coeff_ram_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coeff_ram_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.tscs454*, align 8
  %8 = alloca %struct.coeff_ram_ctl*, align 8
  %9 = alloca %struct.soc_bytes_ext*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mutex*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %6, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %22 = call %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.tscs454* %22, %struct.tscs454** %7, align 8
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.coeff_ram_ctl*
  store %struct.coeff_ram_ctl* %26, %struct.coeff_ram_ctl** %8, align 8
  %27 = load %struct.coeff_ram_ctl*, %struct.coeff_ram_ctl** %8, align 8
  %28 = getelementptr inbounds %struct.coeff_ram_ctl, %struct.coeff_ram_ctl* %27, i32 0, i32 1
  store %struct.soc_bytes_ext* %28, %struct.soc_bytes_ext** %9, align 8
  %29 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %9, align 8
  %30 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @COEFF_SIZE, align 8
  %33 = udiv i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @strstr(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %2
  %42 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %43 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %11, align 8
  %46 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %47 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store %struct.mutex* %48, %struct.mutex** %12, align 8
  %49 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %50 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32* %51, i32** %13, align 8
  %52 = load i32, i32* @R_DACCRS, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @R_DACCRADD, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* @R_DACCRWDL, align 4
  store i32 %54, i32* %16, align 4
  br label %102

55:                                               ; preds = %2
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %57 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strstr(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %64 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %11, align 8
  %67 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %68 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store %struct.mutex* %69, %struct.mutex** %12, align 8
  %70 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %71 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32* %72, i32** %13, align 8
  %73 = load i32, i32* @R_SPKCRS, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* @R_SPKCRADD, align 4
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* @R_SPKCRWDL, align 4
  store i32 %75, i32* %16, align 4
  br label %101

76:                                               ; preds = %55
  %77 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %78 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @strstr(i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %85 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %11, align 8
  %88 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %89 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store %struct.mutex* %90, %struct.mutex** %12, align 8
  %91 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %92 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32* %93, i32** %13, align 8
  %94 = load i32, i32* @R_SUBCRS, align 4
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* @R_SUBCRADD, align 4
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* @R_SUBCRWDL, align 4
  store i32 %96, i32* %16, align 4
  br label %100

97:                                               ; preds = %76
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %178

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100, %62
  br label %102

102:                                              ; preds = %101, %41
  %103 = load %struct.mutex*, %struct.mutex** %12, align 8
  %104 = call i32 @mutex_lock(%struct.mutex* %103)
  %105 = load i32*, i32** %13, align 8
  store i32 0, i32* %105, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.coeff_ram_ctl*, %struct.coeff_ram_ctl** %8, align 8
  %108 = getelementptr inbounds %struct.coeff_ram_ctl, %struct.coeff_ram_ctl* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @COEFF_SIZE, align 8
  %111 = mul i64 %109, %110
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %114 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %9, align 8
  %119 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @memcpy(i32* %112, i32 %117, i64 %120)
  %122 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %123 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = call i32 @mutex_lock(%struct.mutex* %124)
  %126 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %127 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = call i32 @mutex_lock(%struct.mutex* %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %131 = load i32, i32* @R_PLLSTAT, align 4
  %132 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %130, i32 %131, i32* %17)
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %102
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %137 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  br label %166

141:                                              ; preds = %102
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %141
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load %struct.coeff_ram_ctl*, %struct.coeff_ram_ctl** %8, align 8
  %151 = getelementptr inbounds %struct.coeff_ram_ctl, %struct.coeff_ram_ctl* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @write_coeff_ram(%struct.snd_soc_component* %145, i32* %146, i32 %147, i32 %148, i32 %149, i64 %152, i32 %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %144
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %159 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  br label %166

163:                                              ; preds = %144
  %164 = load i32*, i32** %13, align 8
  store i32 1, i32* %164, align 4
  br label %165

165:                                              ; preds = %163, %141
  store i32 0, i32* %18, align 4
  br label %166

166:                                              ; preds = %165, %157, %135
  %167 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %168 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(%struct.mutex* %169)
  %171 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %172 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = call i32 @mutex_unlock(%struct.mutex* %173)
  %175 = load %struct.mutex*, %struct.mutex** %12, align 8
  %176 = call i32 @mutex_unlock(%struct.mutex* %175)
  %177 = load i32, i32* %18, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %166, %97
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @write_coeff_ram(%struct.snd_soc_component*, i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
