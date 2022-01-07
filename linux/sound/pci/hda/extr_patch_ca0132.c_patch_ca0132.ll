; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_patch_ca0132.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_patch_ca0132.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.TYPE_2__*, i32, %struct.ca0132_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.ca0132_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i8**, i32, %struct.hda_codec* }
%struct.snd_pci_quirk = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"patch_ca0132\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ca0132_quirks = common dso_local global i32 0, align 4
@QUIRK_NONE = common dso_local global i8* null, align 8
@dbpro_patch_ops = common dso_local global i32 0, align 4
@ca0132_patch_ops = common dso_local global i32 0, align 4
@DSP_DOWNLOAD_INIT = common dso_local global i32 0, align 4
@desktop_mixer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Sound Blaster Z\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Sound Blaster ZxR\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Recon3D\00", align 1
@r3di_mixer = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Recon3Di\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Sound BlasterX AE-5\00", align 1
@ca0132_mixer = common dso_local global i8* null, align 8
@ca0132_base_init_verbs = common dso_local global i32 0, align 4
@ca0132_base_exit_verbs = common dso_local global i32 0, align 4
@ca0132_unsol_hp_delayed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_ca0132 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ca0132(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ca0132_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pci_quirk*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = call i32 @codec_dbg(%struct.hda_codec* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ca0132_spec* @kzalloc(i32 72, i32 %9)
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %4, align 8
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %12 = icmp ne %struct.ca0132_spec* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %177

16:                                               ; preds = %1
  %17 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 4
  store %struct.ca0132_spec* %17, %struct.ca0132_spec** %19, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %22 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %21, i32 0, i32 12
  store %struct.hda_codec* %20, %struct.hda_codec** %22, align 8
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ca0132_quirks, align 4
  %29 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32 %27, i32 %28)
  store %struct.snd_pci_quirk* %29, %struct.snd_pci_quirk** %6, align 8
  %30 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %31 = icmp ne %struct.snd_pci_quirk* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %34 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %37 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  br label %42

38:                                               ; preds = %16
  %39 = load i8*, i8** @QUIRK_NONE, align 8
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %44 = call i32 @ca0132_quirk(%struct.ca0132_spec* %43)
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = call i32 @sbz_detect_quirk(%struct.hda_codec* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %51 = call i32 @ca0132_quirk(%struct.ca0132_spec* %50)
  %52 = icmp eq i32 %51, 128
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @dbpro_patch_ops, align 4
  %55 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %56 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  br label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @ca0132_patch_ops, align 4
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %65 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* @DSP_DOWNLOAD_INIT, align 4
  %67 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %68 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %70 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %72 = call i32 @ca0132_quirk(%struct.ca0132_spec* %71)
  switch i32 %72, label %114 [
    i32 130, label %73
    i32 129, label %81
    i32 128, label %89
    i32 132, label %90
    i32 131, label %98
    i32 133, label %106
  ]

73:                                               ; preds = %61
  %74 = load i8*, i8** @desktop_mixer, align 8
  %75 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %76 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %75, i32 0, i32 10
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  store i8* %74, i8** %78, align 8
  %79 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %80 = call i32 @snd_hda_codec_set_name(%struct.hda_codec* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %120

81:                                               ; preds = %61
  %82 = load i8*, i8** @desktop_mixer, align 8
  %83 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %84 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %83, i32 0, i32 10
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  store i8* %82, i8** %86, align 8
  %87 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %88 = call i32 @snd_hda_codec_set_name(%struct.hda_codec* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %120

89:                                               ; preds = %61
  br label %120

90:                                               ; preds = %61
  %91 = load i8*, i8** @desktop_mixer, align 8
  %92 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %93 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %92, i32 0, i32 10
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  store i8* %91, i8** %95, align 8
  %96 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %97 = call i32 @snd_hda_codec_set_name(%struct.hda_codec* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %120

98:                                               ; preds = %61
  %99 = load i8*, i8** @r3di_mixer, align 8
  %100 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %101 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %100, i32 0, i32 10
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %99, i8** %103, align 8
  %104 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %105 = call i32 @snd_hda_codec_set_name(%struct.hda_codec* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %120

106:                                              ; preds = %61
  %107 = load i8*, i8** @desktop_mixer, align 8
  %108 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %109 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %108, i32 0, i32 10
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  store i8* %107, i8** %111, align 8
  %112 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %113 = call i32 @snd_hda_codec_set_name(%struct.hda_codec* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %120

114:                                              ; preds = %61
  %115 = load i8*, i8** @ca0132_mixer, align 8
  %116 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %117 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %116, i32 0, i32 10
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  store i8* %115, i8** %119, align 8
  br label %120

120:                                              ; preds = %114, %106, %98, %90, %89, %81, %73
  %121 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %122 = call i32 @ca0132_quirk(%struct.ca0132_spec* %121)
  switch i32 %122, label %137 [
    i32 130, label %123
    i32 132, label %123
    i32 133, label %123
    i32 129, label %123
    i32 131, label %130
  ]

123:                                              ; preds = %120, %120, %120, %120
  %124 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %125 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %127 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %129 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %128, i32 0, i32 3
  store i32 1, i32* %129, align 4
  br label %144

130:                                              ; preds = %120
  %131 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %132 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  %133 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %134 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  %135 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %136 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %135, i32 0, i32 3
  store i32 0, i32* %136, align 4
  br label %144

137:                                              ; preds = %120
  %138 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %139 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %138, i32 0, i32 1
  store i32 0, i32* %139, align 4
  %140 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %141 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %140, i32 0, i32 2
  store i32 0, i32* %141, align 8
  %142 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %143 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %142, i32 0, i32 3
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %137, %130, %123
  %145 = load i32, i32* @ca0132_base_init_verbs, align 4
  %146 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %147 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @ca0132_base_exit_verbs, align 4
  %149 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %150 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %152 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %151, i32 0, i32 5
  %153 = load i32, i32* @ca0132_unsol_hp_delayed, align 4
  %154 = call i32 @INIT_DELAYED_WORK(i32* %152, i32 %153)
  %155 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %156 = call i32 @ca0132_init_chip(%struct.hda_codec* %155)
  %157 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %158 = call i32 @ca0132_config(%struct.hda_codec* %157)
  %159 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %160 = call i32 @ca0132_prepare_verbs(%struct.hda_codec* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %144
  br label %173

164:                                              ; preds = %144
  %165 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %166 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %167 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %166, i32 0, i32 4
  %168 = call i32 @snd_hda_parse_pin_def_config(%struct.hda_codec* %165, i32* %167, i32* null)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %173

172:                                              ; preds = %164
  store i32 0, i32* %2, align 4
  br label %177

173:                                              ; preds = %171, %163
  %174 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %175 = call i32 @ca0132_free(%struct.hda_codec* %174)
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %173, %172, %13
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local %struct.ca0132_spec* @kzalloc(i32, i32) #1

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32, i32) #1

declare dso_local i32 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @sbz_detect_quirk(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_set_name(%struct.hda_codec*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ca0132_init_chip(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_config(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_prepare_verbs(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_parse_pin_def_config(%struct.hda_codec*, i32*, i32*) #1

declare dso_local i32 @ca0132_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
