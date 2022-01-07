; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_denum_create_texts.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_denum_create_texts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_enum = type { i32, i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_tplg_enum_control = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_enum*, %struct.snd_soc_tplg_enum_control*)* @soc_tplg_denum_create_texts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_denum_create_texts(%struct.soc_enum* %0, %struct.snd_soc_tplg_enum_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_enum*, align 8
  %5 = alloca %struct.snd_soc_tplg_enum_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.soc_enum* %0, %struct.soc_enum** %4, align 8
  store %struct.snd_soc_tplg_enum_control* %1, %struct.snd_soc_tplg_enum_control** %5, align 8
  %8 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @le32_to_cpu(i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kcalloc(i32 %11, i32 8, i32 %12)
  %14 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %15 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32* %13, i32** %17, align 8
  %18 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %19 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %106

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %81, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %28
  %35 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %36 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %43 = call i64 @strnlen(i32 %41, i64 %42)
  %44 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %99

49:                                               ; preds = %34
  %50 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @kstrdup(i32 %56, i32 %57)
  %59 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %60 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %58, i32* %66, align 4
  %67 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %68 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %49
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %99

80:                                               ; preds = %49
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %28

84:                                               ; preds = %28
  %85 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %86 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %90 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %92 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8**
  %97 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %98 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %97, i32 0, i32 1
  store i8** %96, i8*** %98, align 8
  store i32 0, i32* %3, align 4
  br label %106

99:                                               ; preds = %77, %46
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %102 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %104 = call i32 @soc_tplg_denum_remove_texts(%struct.soc_enum* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %99, %84, %24
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @soc_tplg_denum_remove_texts(%struct.soc_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
