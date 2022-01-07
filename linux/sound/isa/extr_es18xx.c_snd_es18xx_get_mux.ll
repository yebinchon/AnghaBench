; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_get_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_get_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_es18xx = type { i32 }

@snd_es18xx_get_mux.invMap4Source = internal global [8 x i8] c"\00\00\01\01\00\00\02\03", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es18xx_get_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_get_mux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_es18xx*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_es18xx* %8, %struct.snd_es18xx** %5, align 8
  %9 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %10 = call i32 @snd_es18xx_mixer_read(%struct.snd_es18xx* %9, i32 28)
  %11 = and i32 %10, 7
  store i32 %11, i32* %6, align 4
  %12 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %13 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 6249
  br i1 %15, label %46, label %16

16:                                               ; preds = %2
  %17 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %18 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 6265
  br i1 %20, label %46, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* @snd_es18xx_get_mux.invMap4Source, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %31 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 6279
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %36 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 6280
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %29
  %40 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %41 = call i32 @snd_es18xx_mixer_read(%struct.snd_es18xx* %40, i32 122)
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 4, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %39, %34, %21
  br label %46

46:                                               ; preds = %45, %16, %2
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %47, i32* %53, align 4
  ret i32 0
}

declare dso_local %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_es18xx_mixer_read(%struct.snd_es18xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
