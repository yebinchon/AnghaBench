; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.snd_ice1712 = type { i32, %struct.psc724_spec* }
%struct.psc724_spec = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.snd_kcontrol_new = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol = type { i32 }

@front_volume = common dso_local global i32* null, align 8
@WM8776_CTL_DAC_VOL = common dso_local global i64 0, align 8
@front_switch = common dso_local global i32* null, align 8
@WM8776_CTL_DAC_SW = common dso_local global i64 0, align 8
@front_zc = common dso_local global i32* null, align 8
@WM8776_CTL_DAC_ZC_SW = common dso_local global i64 0, align 8
@WM8776_CTL_AUX_SW = common dso_local global i64 0, align 8
@front_izd = common dso_local global i32* null, align 8
@WM8776_CTL_DAC_IZD_SW = common dso_local global i64 0, align 8
@front_phase = common dso_local global i32* null, align 8
@WM8776_CTL_PHASE_SW = common dso_local global i64 0, align 8
@front_deemph = common dso_local global i32* null, align 8
@WM8776_CTL_DEEMPH_SW = common dso_local global i64 0, align 8
@ain1_switch = common dso_local global i32* null, align 8
@WM8776_CTL_INPUT1_SW = common dso_local global i64 0, align 8
@ain2_switch = common dso_local global i32* null, align 8
@WM8776_CTL_INPUT2_SW = common dso_local global i64 0, align 8
@ain3_switch = common dso_local global i32* null, align 8
@WM8776_CTL_INPUT3_SW = common dso_local global i64 0, align 8
@ain4_switch = common dso_local global i32* null, align 8
@WM8776_CTL_INPUT4_SW = common dso_local global i64 0, align 8
@ain5_switch = common dso_local global i32* null, align 8
@WM8776_CTL_INPUT5_SW = common dso_local global i64 0, align 8
@rear_volume = common dso_local global i32* null, align 8
@WM8766_CTL_CH1_VOL = common dso_local global i64 0, align 8
@clfe_volume = common dso_local global i32* null, align 8
@WM8766_CTL_CH2_VOL = common dso_local global i64 0, align 8
@WM8766_CTL_CH3_VOL = common dso_local global i64 0, align 8
@rear_switch = common dso_local global i32* null, align 8
@WM8766_CTL_CH1_SW = common dso_local global i64 0, align 8
@clfe_switch = common dso_local global i32* null, align 8
@WM8766_CTL_CH2_SW = common dso_local global i64 0, align 8
@WM8766_CTL_CH3_SW = common dso_local global i64 0, align 8
@rear_phase = common dso_local global i32* null, align 8
@WM8766_CTL_PHASE1_SW = common dso_local global i64 0, align 8
@clfe_phase = common dso_local global i32* null, align 8
@WM8766_CTL_PHASE2_SW = common dso_local global i64 0, align 8
@WM8766_CTL_PHASE3_SW = common dso_local global i64 0, align 8
@rear_deemph = common dso_local global i32* null, align 8
@WM8766_CTL_DEEMPH1_SW = common dso_local global i64 0, align 8
@clfe_deemph = common dso_local global i32* null, align 8
@WM8766_CTL_DEEMPH2_SW = common dso_local global i64 0, align 8
@WM8766_CTL_DEEMPH3_SW = common dso_local global i64 0, align 8
@rear_clfe_izd = common dso_local global i32* null, align 8
@WM8766_CTL_IZD_SW = common dso_local global i64 0, align 8
@rear_clfe_zc = common dso_local global i32* null, align 8
@WM8766_CTL_ZC_SW = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@psc724_cont = common dso_local global %struct.TYPE_11__* null, align 8
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@snd_ctl_boolean_mono_info = common dso_local global i32 0, align 4
@psc724_ctl_get = common dso_local global i32 0, align 4
@psc724_ctl_put = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @psc724_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc724_add_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.snd_kcontrol_new, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.psc724_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 1
  %11 = load %struct.psc724_spec*, %struct.psc724_spec** %10, align 8
  store %struct.psc724_spec* %11, %struct.psc724_spec** %8, align 8
  %12 = load i32*, i32** @front_volume, align 8
  %13 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %14 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i64, i64* @WM8776_CTL_DAC_VOL, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32* %12, i32** %19, align 8
  %20 = load i32*, i32** @front_switch, align 8
  %21 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %22 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load i64, i64* @WM8776_CTL_DAC_SW, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32* %20, i32** %27, align 8
  %28 = load i32*, i32** @front_zc, align 8
  %29 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %30 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i64, i64* @WM8776_CTL_DAC_ZC_SW, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32* %28, i32** %35, align 8
  %36 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %37 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i64, i64* @WM8776_CTL_AUX_SW, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load i32*, i32** @front_izd, align 8
  %44 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %45 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i64, i64* @WM8776_CTL_DAC_IZD_SW, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32* %43, i32** %50, align 8
  %51 = load i32*, i32** @front_phase, align 8
  %52 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %53 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i64, i64* @WM8776_CTL_PHASE_SW, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32* %51, i32** %58, align 8
  %59 = load i32*, i32** @front_deemph, align 8
  %60 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %61 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i64, i64* @WM8776_CTL_DEEMPH_SW, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32* %59, i32** %66, align 8
  %67 = load i32*, i32** @ain1_switch, align 8
  %68 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %69 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i64, i64* @WM8776_CTL_INPUT1_SW, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32* %67, i32** %74, align 8
  %75 = load i32*, i32** @ain2_switch, align 8
  %76 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %77 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i64, i64* @WM8776_CTL_INPUT2_SW, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32* %75, i32** %82, align 8
  %83 = load i32*, i32** @ain3_switch, align 8
  %84 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %85 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i64, i64* @WM8776_CTL_INPUT3_SW, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32* %83, i32** %90, align 8
  %91 = load i32*, i32** @ain4_switch, align 8
  %92 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %93 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i64, i64* @WM8776_CTL_INPUT4_SW, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32* %91, i32** %98, align 8
  %99 = load i32*, i32** @ain5_switch, align 8
  %100 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %101 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i64, i64* @WM8776_CTL_INPUT5_SW, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32* %99, i32** %106, align 8
  %107 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %108 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %107, i32 0, i32 1
  %109 = call i32 @snd_wm8776_build_controls(%struct.TYPE_9__* %108)
  %110 = load i32*, i32** @rear_volume, align 8
  %111 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %112 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i64, i64* @WM8766_CTL_CH1_VOL, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32* %110, i32** %117, align 8
  %118 = load i32*, i32** @clfe_volume, align 8
  %119 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %120 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i64, i64* @WM8766_CTL_CH2_VOL, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32* %118, i32** %125, align 8
  %126 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %127 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load i64, i64* @WM8766_CTL_CH3_VOL, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32* null, i32** %132, align 8
  %133 = load i32*, i32** @rear_switch, align 8
  %134 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %135 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i64, i64* @WM8766_CTL_CH1_SW, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i32* %133, i32** %140, align 8
  %141 = load i32*, i32** @clfe_switch, align 8
  %142 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %143 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load i64, i64* @WM8766_CTL_CH2_SW, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32* %141, i32** %148, align 8
  %149 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %150 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i64, i64* @WM8766_CTL_CH3_SW, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32* null, i32** %155, align 8
  %156 = load i32*, i32** @rear_phase, align 8
  %157 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %158 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i64, i64* @WM8766_CTL_PHASE1_SW, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32* %156, i32** %163, align 8
  %164 = load i32*, i32** @clfe_phase, align 8
  %165 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %166 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i64, i64* @WM8766_CTL_PHASE2_SW, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32* %164, i32** %171, align 8
  %172 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %173 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load i64, i64* @WM8766_CTL_PHASE3_SW, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32* null, i32** %178, align 8
  %179 = load i32*, i32** @rear_deemph, align 8
  %180 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %181 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = load i64, i64* @WM8766_CTL_DEEMPH1_SW, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32* %179, i32** %186, align 8
  %187 = load i32*, i32** @clfe_deemph, align 8
  %188 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %189 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = load i64, i64* @WM8766_CTL_DEEMPH2_SW, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  store i32* %187, i32** %194, align 8
  %195 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %196 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load i64, i64* @WM8766_CTL_DEEMPH3_SW, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  store i32* null, i32** %201, align 8
  %202 = load i32*, i32** @rear_clfe_izd, align 8
  %203 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %204 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i64, i64* @WM8766_CTL_IZD_SW, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  store i32* %202, i32** %209, align 8
  %210 = load i32*, i32** @rear_clfe_zc, align 8
  %211 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %212 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i64, i64* @WM8766_CTL_ZC_SW, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  store i32* %210, i32** %217, align 8
  %218 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  %219 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %218, i32 0, i32 0
  %220 = call i32 @snd_wm8766_build_controls(%struct.TYPE_10__* %219)
  %221 = call i32 @memset(%struct.snd_kcontrol_new* %4, i32 0, i32 28)
  %222 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %223 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 6
  store i32 %222, i32* %223, align 4
  store i32 0, i32* %7, align 4
  br label %224

224:                                              ; preds = %265, %1
  %225 = load i32, i32* %7, align 4
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** @psc724_cont, align 8
  %227 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %226)
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %268

229:                                              ; preds = %224
  %230 = load i32, i32* %7, align 4
  %231 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 0
  store i32 %230, i32* %231, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** @psc724_cont, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 5
  store i32 %237, i32* %238, align 4
  %239 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %240 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 4
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* @snd_ctl_boolean_mono_info, align 4
  %242 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 3
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* @psc724_ctl_get, align 4
  %244 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 2
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* @psc724_ctl_put, align 4
  %246 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 1
  store i32 %245, i32* %246, align 4
  %247 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %248 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %4, %struct.snd_ice1712* %247)
  store %struct.snd_kcontrol* %248, %struct.snd_kcontrol** %5, align 8
  %249 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %250 = icmp ne %struct.snd_kcontrol* %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %229
  %252 = load i32, i32* @ENOMEM, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %2, align 4
  br label %269

254:                                              ; preds = %229
  %255 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %256 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %259 = call i32 @snd_ctl_add(i32 %257, %struct.snd_kcontrol* %258)
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* %6, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %254
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %2, align 4
  br label %269

264:                                              ; preds = %254
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %7, align 4
  br label %224

268:                                              ; preds = %224
  store i32 0, i32* %2, align 4
  br label %269

269:                                              ; preds = %268, %262, %251
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @snd_wm8776_build_controls(%struct.TYPE_9__*) #1

declare dso_local i32 @snd_wm8766_build_controls(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ice1712*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
