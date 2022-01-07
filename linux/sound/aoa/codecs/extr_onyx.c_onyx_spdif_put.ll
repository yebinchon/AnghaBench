; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_spdif_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_spdif_put.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @onyx_spdif_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_spdif_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %16 = and i32 %15, -63
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 62
  %25 = or i32 %16, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.onyx*, %struct.onyx** %5, align 8
  %27 = load i32, i32* @ONYX_REG_DIG_INFO1, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @onyx_write_register(%struct.onyx* %26, i32 %27, i32 %28)
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.onyx*, %struct.onyx** %5, align 8
  %38 = load i32, i32* @ONYX_REG_DIG_INFO2, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @onyx_write_register(%struct.onyx* %37, i32 %38, i32 %39)
  %41 = load %struct.onyx*, %struct.onyx** %5, align 8
  %42 = load i32, i32* @ONYX_REG_DIG_INFO3, align 4
  %43 = call i32 @onyx_read_register(%struct.onyx* %41, i32 %42, i32* %6)
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, -64
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 63
  %54 = or i32 %45, %53
  store i32 %54, i32* %6, align 4
  %55 = load %struct.onyx*, %struct.onyx** %5, align 8
  %56 = load i32, i32* @ONYX_REG_DIG_INFO3, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @onyx_write_register(%struct.onyx* %55, i32 %56, i32 %57)
  %59 = load %struct.onyx*, %struct.onyx** %5, align 8
  %60 = load i32, i32* @ONYX_REG_DIG_INFO4, align 4
  %61 = call i32 @onyx_read_register(%struct.onyx* %59, i32 %60, i32* %6)
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, -16
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  %72 = or i32 %63, %71
  store i32 %72, i32* %6, align 4
  %73 = load %struct.onyx*, %struct.onyx** %5, align 8
  %74 = load i32, i32* @ONYX_REG_DIG_INFO4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @onyx_write_register(%struct.onyx* %73, i32 %74, i32 %75)
  %77 = load %struct.onyx*, %struct.onyx** %5, align 8
  %78 = getelementptr inbounds %struct.onyx, %struct.onyx* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  ret i32 1
}

declare dso_local %struct.onyx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @onyx_read_register(%struct.onyx*, i32, i32*) #1

declare dso_local i32 @onyx_write_register(%struct.onyx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
