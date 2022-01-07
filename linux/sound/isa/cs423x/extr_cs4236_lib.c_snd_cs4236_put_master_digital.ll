; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_put_master_digital.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_put_master_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_wss = type { i32*, i32 }

@CS4236_LEFT_MASTER = common dso_local global i32 0, align 4
@CS4236_RIGHT_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cs4236_put_master_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4236_put_master_digital(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_wss*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_wss* %11, %struct.snd_wss** %5, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 127
  %20 = call zeroext i16 @snd_cs4236_mixer_master_digital_invert_volume(i32 %19)
  store i16 %20, i16* %8, align 2
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 127
  %29 = call zeroext i16 @snd_cs4236_mixer_master_digital_invert_volume(i32 %28)
  store i16 %29, i16* %9, align 2
  %30 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %31 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %30, i32 0, i32 1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %35 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @CS4236_LEFT_MASTER, align 4
  %38 = call i64 @CS4236_REG(i32 %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -128
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %41, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %8, align 2
  %46 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %47 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @CS4236_RIGHT_MASTER, align 4
  %50 = call i64 @CS4236_REG(i32 %49)
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -128
  %54 = load i16, i16* %9, align 2
  %55 = zext i16 %54 to i32
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %9, align 2
  %58 = load i16, i16* %8, align 2
  %59 = zext i16 %58 to i32
  %60 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %61 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @CS4236_LEFT_MASTER, align 4
  %64 = call i64 @CS4236_REG(i32 %63)
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %59, %66
  br i1 %67, label %79, label %68

68:                                               ; preds = %2
  %69 = load i16, i16* %9, align 2
  %70 = zext i16 %69 to i32
  %71 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %72 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @CS4236_RIGHT_MASTER, align 4
  %75 = call i64 @CS4236_REG(i32 %74)
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %70, %77
  br label %79

79:                                               ; preds = %68, %2
  %80 = phi i1 [ true, %2 ], [ %78, %68 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %83 = load i32, i32* @CS4236_LEFT_MASTER, align 4
  %84 = load i16, i16* %8, align 2
  %85 = call i32 @snd_cs4236_ext_out(%struct.snd_wss* %82, i32 %83, i16 zeroext %84)
  %86 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %87 = load i32, i32* @CS4236_RIGHT_MASTER, align 4
  %88 = load i16, i16* %9, align 2
  %89 = call i32 @snd_cs4236_ext_out(%struct.snd_wss* %86, i32 %87, i16 zeroext %88)
  %90 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %91 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %90, i32 0, i32 1
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i16 @snd_cs4236_mixer_master_digital_invert_volume(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @CS4236_REG(i32) #1

declare dso_local i32 @snd_cs4236_ext_out(%struct.snd_wss*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
