; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_create_analog_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_create_analog_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.lola = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@lola_analog_mixer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, i32, i8*)* @create_analog_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_analog_mixer(%struct.lola* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lola* %0, %struct.lola** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.lola*, %struct.lola** %5, align 8
  %9 = getelementptr inbounds %struct.lola, %struct.lola* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

18:                                               ; preds = %3
  %19 = load %struct.lola*, %struct.lola** %5, align 8
  %20 = getelementptr inbounds %struct.lola, %struct.lola* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.lola*, %struct.lola** %5, align 8
  %28 = getelementptr inbounds %struct.lola, %struct.lola* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %26, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %46

37:                                               ; preds = %18
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lola_analog_mixer, i32 0, i32 0), align 8
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lola_analog_mixer, i32 0, i32 1), align 8
  %40 = load %struct.lola*, %struct.lola** %5, align 8
  %41 = getelementptr inbounds %struct.lola, %struct.lola* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.lola*, %struct.lola** %5, align 8
  %44 = call i32 @snd_ctl_new1(%struct.TYPE_5__* @lola_analog_mixer, %struct.lola* %43)
  %45 = call i32 @snd_ctl_add(i32 %42, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %36, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.TYPE_5__*, %struct.lola*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
