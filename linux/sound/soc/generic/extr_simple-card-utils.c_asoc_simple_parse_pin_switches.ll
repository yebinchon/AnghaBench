; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_pin_switches.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_pin_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, %struct.snd_kcontrol_new*, %struct.device* }
%struct.snd_kcontrol_new = type { i8*, i64, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pin-switches\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s Switch\00", align 1
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@snd_soc_dapm_info_pin_switch = common dso_local global i32 0, align 4
@snd_soc_dapm_get_pin_switch = common dso_local global i32 0, align 4
@snd_soc_dapm_put_pin_switch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_parse_pin_switches(%struct.snd_soc_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.snd_kcontrol_new*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 16, i32* %6, align 4
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %15, i32 0, i32 2
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %21

21:                                               ; preds = %20, %2
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @snprintf(i8* %22, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.device*, %struct.device** %10, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %29 = call i32 @of_property_read_bool(i32 %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %136

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kcalloc(%struct.device* %33, i32 16, i32 8, i32 %34)
  %36 = bitcast i8* %35 to i8**
  store i8** %36, i8*** %7, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %136

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %47 = load i8**, i8*** %7, align 8
  %48 = call i32 @of_property_read_string_array(i32 %45, i8* %46, i8** %47, i32 16)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %3, align 4
  br label %136

53:                                               ; preds = %42
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.device*, %struct.device** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @devm_kcalloc(%struct.device* %55, i32 %56, i32 32, i32 %57)
  %59 = bitcast i8* %58 to %struct.snd_kcontrol_new*
  store %struct.snd_kcontrol_new* %59, %struct.snd_kcontrol_new** %9, align 8
  %60 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %61 = icmp ne %struct.snd_kcontrol_new* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %136

65:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %126, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %129

70:                                               ; preds = %66
  %71 = load %struct.device*, %struct.device** %10, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = load i8**, i8*** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @devm_kasprintf(%struct.device* %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %136

84:                                               ; preds = %70
  %85 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %86 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %86, i64 %88
  %90 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %89, i32 0, i32 5
  store i32 %85, i32* %90, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %92, i64 %94
  %96 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %95, i32 0, i32 0
  store i8* %91, i8** %96, align 8
  %97 = load i32, i32* @snd_soc_dapm_info_pin_switch, align 4
  %98 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %98, i64 %100
  %102 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %101, i32 0, i32 4
  store i32 %97, i32* %102, align 8
  %103 = load i32, i32* @snd_soc_dapm_get_pin_switch, align 4
  %104 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %104, i64 %106
  %108 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %107, i32 0, i32 3
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* @snd_soc_dapm_put_pin_switch, align 4
  %110 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %110, i64 %112
  %114 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %113, i32 0, i32 2
  store i32 %109, i32* %114, align 8
  %115 = load i8**, i8*** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %121, i64 %123
  %125 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %124, i32 0, i32 1
  store i64 %120, i64* %125, align 8
  br label %126

126:                                              ; preds = %84
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %66

129:                                              ; preds = %66
  %130 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %131 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %132 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %131, i32 0, i32 1
  store %struct.snd_kcontrol_new* %130, %struct.snd_kcontrol_new** %132, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %135 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %129, %81, %62, %51, %39, %31
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_array(i32, i8*, i8**, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
