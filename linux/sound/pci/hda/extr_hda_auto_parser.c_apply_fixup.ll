; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_apply_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_apply_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i8*, %struct.TYPE_4__, %struct.hda_fixup* }
%struct.TYPE_4__ = type { i32 }
%struct.hda_fixup = type { i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (%struct.hda_codec.0*, %struct.hda_fixup.1*, i32)*, i32 }
%struct.hda_codec.0 = type opaque
%struct.hda_fixup.1 = type opaque

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: Apply pincfg for %s\0A\00", align 1
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Apply fix-verbs for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: Apply fix-func for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: Apply pinctl for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: Invalid fixup type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32, i32)* @apply_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_fixup(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hda_fixup*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %166, %4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %170

17:                                               ; preds = %14
  %18 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 2
  %20 = load %struct.hda_fixup*, %struct.hda_fixup** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %20, i64 %22
  store %struct.hda_fixup* %23, %struct.hda_fixup** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = icmp sgt i32 %25, 10
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %170

28:                                               ; preds = %17
  %29 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %30 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %35 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %36 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  call void @apply_fixup(%struct.hda_codec* %34, i32 %37, i32 %38, i32 %40)
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %43 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %145 [
    i32 129, label %45
    i32 128, label %70
    i32 131, label %95
    i32 130, label %120
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %51 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49, %45
  br label %155

56:                                               ; preds = %49
  %57 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %58 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %59 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @codec_dbg(%struct.hda_codec* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %62)
  %64 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %65 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %66 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @snd_hda_apply_pincfgs(%struct.hda_codec* %64, i32 %68)
  br label %155

70:                                               ; preds = %41
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %76 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74, %70
  br label %155

81:                                               ; preds = %74
  %82 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %83 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %84 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @codec_dbg(%struct.hda_codec* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %86, i8* %87)
  %89 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %90 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %91 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %89, i32 %93)
  br label %155

95:                                               ; preds = %41
  %96 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %97 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32 (%struct.hda_codec.0*, %struct.hda_fixup.1*, i32)*, i32 (%struct.hda_codec.0*, %struct.hda_fixup.1*, i32)** %98, align 8
  %100 = icmp ne i32 (%struct.hda_codec.0*, %struct.hda_fixup.1*, i32)* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %155

102:                                              ; preds = %95
  %103 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %104 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %105 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @codec_dbg(%struct.hda_codec* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %107, i8* %108)
  %110 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %111 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32 (%struct.hda_codec.0*, %struct.hda_fixup.1*, i32)*, i32 (%struct.hda_codec.0*, %struct.hda_fixup.1*, i32)** %112, align 8
  %114 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %115 = bitcast %struct.hda_codec* %114 to %struct.hda_codec.0*
  %116 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %117 = bitcast %struct.hda_fixup* %116 to %struct.hda_fixup.1*
  %118 = load i32, i32* %7, align 4
  %119 = call i32 %113(%struct.hda_codec.0* %115, %struct.hda_fixup.1* %117, i32 %118)
  br label %155

120:                                              ; preds = %41
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %126 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %124, %120
  br label %155

131:                                              ; preds = %124
  %132 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %133 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %134 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @codec_dbg(%struct.hda_codec* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %136, i8* %137)
  %139 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %140 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %141 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @set_pin_targets(%struct.hda_codec* %139, i32 %143)
  br label %155

145:                                              ; preds = %41
  %146 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %147 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %148 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %152 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @codec_err(%struct.hda_codec* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %145, %131, %130, %102, %101, %81, %80, %56, %55
  %156 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %157 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %162 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160, %155
  br label %170

166:                                              ; preds = %160
  %167 = load %struct.hda_fixup*, %struct.hda_fixup** %10, align 8
  %168 = getelementptr inbounds %struct.hda_fixup, %struct.hda_fixup* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %6, align 4
  br label %14

170:                                              ; preds = %165, %27, %14
  ret void
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i8*) #1

declare dso_local i32 @snd_hda_apply_pincfgs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @set_pin_targets(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
