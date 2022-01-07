; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-jack.c_snd_soc_jack_add_pins.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-jack.c_snd_soc_jack_add_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_jack = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_jack_pin = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ASoC: No name for pin %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ASoC: No mask for pin %d (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_jack_add_pins(%struct.snd_soc_jack* %0, i32 %1, %struct.snd_soc_jack_pin* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_jack_pin*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_jack* %0, %struct.snd_soc_jack** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_jack_pin* %2, %struct.snd_soc_jack_pin** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %86, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %89

13:                                               ; preds = %9
  %14 = load %struct.snd_soc_jack_pin*, %struct.snd_soc_jack_pin** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %14, i64 %16
  %18 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %13
  %22 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %92

31:                                               ; preds = %13
  %32 = load %struct.snd_soc_jack_pin*, %struct.snd_soc_jack_pin** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %32, i64 %34
  %36 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %31
  %40 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.snd_soc_jack_pin*, %struct.snd_soc_jack_pin** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %46, i64 %48
  %50 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %92

55:                                               ; preds = %31
  %56 = load %struct.snd_soc_jack_pin*, %struct.snd_soc_jack_pin** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %56, i64 %58
  %60 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %59, i32 0, i32 2
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.snd_soc_jack_pin*, %struct.snd_soc_jack_pin** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %62, i64 %64
  %66 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %65, i32 0, i32 2
  %67 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %68 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %67, i32 0, i32 1
  %69 = call i32 @list_add(i32* %66, i32* %68)
  %70 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %71 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.snd_soc_jack_pin*, %struct.snd_soc_jack_pin** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %73, i64 %75
  %77 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.snd_soc_jack_pin*, %struct.snd_soc_jack_pin** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %79, i64 %81
  %83 = getelementptr inbounds %struct.snd_soc_jack_pin, %struct.snd_soc_jack_pin* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @snd_jack_add_new_kctl(i32 %72, i32 %78, i32 %84)
  br label %86

86:                                               ; preds = %55
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %9

89:                                               ; preds = %9
  %90 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %91 = call i32 @snd_soc_jack_report(%struct.snd_soc_jack* %90, i32 0, i32 0)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %39, %21
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @snd_jack_add_new_kctl(i32, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(%struct.snd_soc_jack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
