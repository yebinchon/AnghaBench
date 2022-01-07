; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_capvol_in_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_capvol_in_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64 }
%struct.nid_path = type { i32, i32*, i8**, i32* }

@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@NID_PATH_VOL_CTL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.nid_path*)* @parse_capvol_in_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_capvol_in_path(%struct.hda_codec* %0, %struct.nid_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.nid_path* %1, %struct.nid_path** %5, align 8
  %11 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %12 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %11, i32 0, i32 2
  %13 = load i8**, i8*** %12, align 8
  %14 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  store i8* null, i8** %15, align 8
  %16 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %17 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %16, i32 0, i32 2
  %18 = load i8**, i8*** %17, align 8
  %19 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  store i8* null, i8** %20, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %161, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %164

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %27 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %165

33:                                               ; preds = %24
  %34 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %35 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %41 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %48 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %103, label %54

54:                                               ; preds = %33
  %55 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @HDA_OUTPUT, align 4
  %58 = call i64 @nid_has_volume(%struct.hda_codec* %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @HDA_OUTPUT, align 4
  %63 = call i8* @HDA_COMPOSE_AMP_VAL(i32 %61, i32 3, i32 0, i32 %62)
  %64 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %65 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %64, i32 0, i32 2
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* %63, i8** %68, align 8
  br label %102

69:                                               ; preds = %54
  %70 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @HDA_INPUT, align 4
  %73 = call i64 @nid_has_volume(%struct.hda_codec* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %69
  %76 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %77 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %75
  %86 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %87 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %85, %75
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @HDA_INPUT, align 4
  %95 = call i8* @HDA_COMPOSE_AMP_VAL(i32 %92, i32 3, i32 %93, i32 %94)
  %96 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %97 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %96, i32 0, i32 2
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  store i8* %95, i8** %100, align 8
  br label %101

101:                                              ; preds = %91, %69
  br label %102

102:                                              ; preds = %101, %60
  br label %103

103:                                              ; preds = %102, %33
  %104 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %105 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %104, i32 0, i32 2
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %160, label %111

111:                                              ; preds = %103
  %112 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @HDA_OUTPUT, align 4
  %115 = call i64 @nid_has_mute(%struct.hda_codec* %112, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @HDA_OUTPUT, align 4
  %120 = call i8* @HDA_COMPOSE_AMP_VAL(i32 %118, i32 3, i32 0, i32 %119)
  %121 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %122 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  store i8* %120, i8** %125, align 8
  br label %159

126:                                              ; preds = %111
  %127 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @HDA_INPUT, align 4
  %130 = call i64 @nid_has_mute(%struct.hda_codec* %127, i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %126
  %133 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %134 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %132
  %143 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %144 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 0, i32* %10, align 4
  br label %148

148:                                              ; preds = %147, %142, %132
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @HDA_INPUT, align 4
  %152 = call i8* @HDA_COMPOSE_AMP_VAL(i32 %149, i32 3, i32 %150, i32 %151)
  %153 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %154 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %153, i32 0, i32 2
  %155 = load i8**, i8*** %154, align 8
  %156 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  store i8* %152, i8** %157, align 8
  br label %158

158:                                              ; preds = %148, %126
  br label %159

159:                                              ; preds = %158, %117
  br label %160

160:                                              ; preds = %159, %103
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %21

164:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %30
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i64 @nid_has_volume(%struct.hda_codec*, i32, i32) #1

declare dso_local i8* @HDA_COMPOSE_AMP_VAL(i32, i32, i32, i32) #1

declare dso_local i64 @nid_has_mute(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
