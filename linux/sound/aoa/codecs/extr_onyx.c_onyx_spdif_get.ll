; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_spdif_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_spdif_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.onyx = type { i32 }

@ONYX_REG_DIG_INFO1 = common dso_local global i32 0, align 4
@ONYX_REG_DIG_INFO2 = common dso_local global i32 0, align 4
@ONYX_REG_DIG_INFO3 = common dso_local global i32 0, align 4
@ONYX_REG_DIG_INFO4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @onyx_spdif_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_spdif_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.onyx*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.onyx* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.onyx* %8, %struct.onyx** %5, align 8
  %9 = load %struct.onyx*, %struct.onyx** %5, align 8
  %10 = getelementptr inbounds %struct.onyx, %struct.onyx* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.onyx*, %struct.onyx** %5, align 8
  %13 = load i32, i32* @ONYX_REG_DIG_INFO1, align 4
  %14 = call i32 @onyx_read_register(%struct.onyx* %12, i32 %13, i32* %6)
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 62
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %16, i32* %22, align 4
  %23 = load %struct.onyx*, %struct.onyx** %5, align 8
  %24 = load i32, i32* @ONYX_REG_DIG_INFO2, align 4
  %25 = call i32 @onyx_read_register(%struct.onyx* %23, i32 %24, i32* %6)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %26, i32* %32, align 4
  %33 = load %struct.onyx*, %struct.onyx** %5, align 8
  %34 = load i32, i32* @ONYX_REG_DIG_INFO3, align 4
  %35 = call i32 @onyx_read_register(%struct.onyx* %33, i32 %34, i32* %6)
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 63
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %37, i32* %43, align 4
  %44 = load %struct.onyx*, %struct.onyx** %5, align 8
  %45 = load i32, i32* @ONYX_REG_DIG_INFO4, align 4
  %46 = call i32 @onyx_read_register(%struct.onyx* %44, i32 %45, i32* %6)
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 15
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 %48, i32* %54, align 4
  %55 = load %struct.onyx*, %struct.onyx** %5, align 8
  %56 = getelementptr inbounds %struct.onyx, %struct.onyx* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  ret i32 0
}

declare dso_local %struct.onyx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @onyx_read_register(%struct.onyx*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
