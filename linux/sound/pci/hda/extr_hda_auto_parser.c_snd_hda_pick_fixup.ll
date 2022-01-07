; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_pick_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_pick_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i8*, %struct.hda_fixup*, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hda_model_fixup = type { i8*, i32 }
%struct.snd_pci_quirk = type { i32, i8*, i32, i32, i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ID_NOT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nofixup\00", align 1
@HDA_FIXUP_ID_NO_FIXUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: picked no fixup (nofixup specified)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: picked fixup %s (model specified)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_pick_fixup(%struct.hda_codec* %0, %struct.hda_model_fixup* %1, %struct.snd_pci_quirk* %2, %struct.hda_fixup* %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_model_fixup*, align 8
  %7 = alloca %struct.snd_pci_quirk*, align 8
  %8 = alloca %struct.hda_fixup*, align 8
  %9 = alloca %struct.snd_pci_quirk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.hda_model_fixup* %1, %struct.hda_model_fixup** %6, align 8
  store %struct.snd_pci_quirk* %2, %struct.snd_pci_quirk** %7, align 8
  store %struct.hda_fixup* %3, %struct.hda_fixup** %8, align 8
  %14 = load i32, i32* @HDA_FIXUP_ID_NOT_SET, align 4
  store i32 %14, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HDA_FIXUP_ID_NOT_SET, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %179

21:                                               ; preds = %4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @strcmp(i64 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %26
  %33 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 2
  store %struct.hda_fixup* null, %struct.hda_fixup** %34, align 8
  %35 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %36 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %35, i32 0, i32 1
  store i8* null, i8** %36, align 8
  %37 = load i32, i32* @HDA_FIXUP_ID_NO_FIXUP, align 4
  %38 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %39 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %41 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %42 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %179

46:                                               ; preds = %26, %21
  %47 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %46
  %52 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %53 = icmp ne %struct.hda_model_fixup* %52, null
  br i1 %53, label %54, label %96

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %92, %54
  %56 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %57 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %95

60:                                               ; preds = %55
  %61 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %62 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %65 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i64 %63, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %60
  %70 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %71 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %74 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %76 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %79 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.hda_fixup*, %struct.hda_fixup** %8, align 8
  %81 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %82 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %81, i32 0, i32 2
  store %struct.hda_fixup* %80, %struct.hda_fixup** %82, align 8
  %83 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %84 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %85 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %89 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %87, i8* %90)
  br label %179

92:                                               ; preds = %60
  %93 = load %struct.hda_model_fixup*, %struct.hda_model_fixup** %6, align 8
  %94 = getelementptr inbounds %struct.hda_model_fixup, %struct.hda_model_fixup* %93, i32 1
  store %struct.hda_model_fixup* %94, %struct.hda_model_fixup** %6, align 8
  br label %55

95:                                               ; preds = %55
  br label %96

96:                                               ; preds = %95, %51, %46
  %97 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  %98 = icmp ne %struct.snd_pci_quirk* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %101 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %100, i32 0, i32 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  %106 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32 %104, %struct.snd_pci_quirk* %105)
  store %struct.snd_pci_quirk* %106, %struct.snd_pci_quirk** %9, align 8
  %107 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %108 = icmp ne %struct.snd_pci_quirk* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %111 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %109, %99
  br label %114

114:                                              ; preds = %113, %96
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %166

117:                                              ; preds = %114
  %118 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  %119 = icmp ne %struct.snd_pci_quirk* %118, null
  br i1 %119, label %120, label %166

120:                                              ; preds = %117
  %121 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  store %struct.snd_pci_quirk* %121, %struct.snd_pci_quirk** %9, align 8
  br label %122

122:                                              ; preds = %162, %120
  %123 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %124 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %129 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi i1 [ true, %122 ], [ %131, %127 ]
  br i1 %133, label %134, label %165

134:                                              ; preds = %132
  %135 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %136 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %139 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 16
  %142 = or i32 %137, %141
  store i32 %142, i32* %12, align 4
  %143 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %144 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 -65536, %145
  store i32 %146, i32* %13, align 4
  %147 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %148 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %13, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %134
  %158 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %159 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %10, align 4
  br label %165

161:                                              ; preds = %134
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %9, align 8
  %164 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %163, i32 1
  store %struct.snd_pci_quirk* %164, %struct.snd_pci_quirk** %9, align 8
  br label %122

165:                                              ; preds = %157, %132
  br label %166

166:                                              ; preds = %165, %117, %114
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %169 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %10, align 4
  %171 = icmp sge i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load %struct.hda_fixup*, %struct.hda_fixup** %8, align 8
  %174 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %175 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %174, i32 0, i32 2
  store %struct.hda_fixup* %173, %struct.hda_fixup** %175, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %178 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %20, %32, %69, %172, %166
  ret void
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, ...) #1

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32, %struct.snd_pci_quirk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
