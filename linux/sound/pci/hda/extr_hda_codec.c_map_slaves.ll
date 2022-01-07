; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_map_slaves.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_map_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.hda_nid_item* }
%struct.hda_nid_item = type { %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8**, i8*, i32 (%struct.hda_codec*, i8*, %struct.snd_kcontrol*)*, i8*)* @map_slaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_slaves(%struct.hda_codec* %0, i8** %1, i8* %2, i32 (%struct.hda_codec*, i8*, %struct.snd_kcontrol*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (%struct.hda_codec*, i8*, %struct.snd_kcontrol*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hda_nid_item*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_kcontrol*, align 8
  %17 = alloca [4 x i8], align 1
  %18 = alloca i8*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (%struct.hda_codec*, i8*, %struct.snd_kcontrol*)* %3, i32 (%struct.hda_codec*, i8*, %struct.snd_kcontrol*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.hda_nid_item*, %struct.hda_nid_item** %21, align 8
  store %struct.hda_nid_item* %22, %struct.hda_nid_item** %12, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %88, %5
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %26 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %91

30:                                               ; preds = %23
  %31 = load %struct.hda_nid_item*, %struct.hda_nid_item** %12, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %31, i64 %33
  %35 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %34, i32 0, i32 0
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %35, align 8
  store %struct.snd_kcontrol* %36, %struct.snd_kcontrol** %16, align 8
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %38 = icmp ne %struct.snd_kcontrol* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %41 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %30
  br label %88

47:                                               ; preds = %39
  %48 = load i8**, i8*** %8, align 8
  store i8** %48, i8*** %13, align 8
  br label %49

49:                                               ; preds = %84, %47
  %50 = load i8**, i8*** %13, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load i8**, i8*** %13, align 8
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %18, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %60 = load i8*, i8** %18, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @snprintf(i8* %59, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %61)
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  store i8* %63, i8** %18, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %66 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = call i32 @strcmp(i32 %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %64
  %73 = load i32 (%struct.hda_codec*, i8*, %struct.snd_kcontrol*)*, i32 (%struct.hda_codec*, i8*, %struct.snd_kcontrol*)** %10, align 8
  %74 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %77 = call i32 %73(%struct.hda_codec* %74, i8* %75, %struct.snd_kcontrol* %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %6, align 4
  br label %92

82:                                               ; preds = %72
  br label %87

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83
  %85 = load i8**, i8*** %13, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %13, align 8
  br label %49

87:                                               ; preds = %82, %49
  br label %88

88:                                               ; preds = %87, %46
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %23

91:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %80
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
