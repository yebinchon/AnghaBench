; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, %struct.snd_kcontrol_volatile* }
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_kcontrol_volatile = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_ctl_elem_value*)* @snd_ctl_elem_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_elem_read(%struct.snd_card* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca %struct.snd_kcontrol_volatile*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %9, i32* %11)
  store %struct.snd_kcontrol* %12, %struct.snd_kcontrol** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %14 = icmp eq %struct.snd_kcontrol* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %19, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 1
  %25 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %25, i64 %27
  store %struct.snd_kcontrol_volatile* %28, %struct.snd_kcontrol_volatile** %7, align 8
  %29 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %7, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 0
  %38 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %37, align 8
  %39 = icmp eq i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %18
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %35
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @snd_ctl_build_ioff(i32* %45, %struct.snd_kcontrol* %46, i32 %47)
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %49, i32 0, i32 0
  %51 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %50, align 8
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %54 = bitcast %struct.snd_ctl_elem_value* %53 to %struct.snd_ctl_elem_value.0*
  %55 = call i32 %51(%struct.snd_kcontrol* %52, %struct.snd_ctl_elem_value.0* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %43, %40, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, i32*) #1

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @snd_ctl_build_ioff(i32*, %struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
