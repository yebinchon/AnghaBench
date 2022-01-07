; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4235_put_output_accu.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4235_put_output_accu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_wss = type { i32*, i32 }

@CS4235_LEFT_MASTER = common dso_local global i64 0, align 8
@CS4235_RIGHT_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cs4235_put_output_accu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4235_put_output_accu(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %19 = call zeroext i16 @snd_cs4235_mixer_output_accu_set_volume(i32 %18)
  store i16 %19, i16* %8, align 2
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call zeroext i16 @snd_cs4235_mixer_output_accu_set_volume(i32 %26)
  store i16 %27, i16* %9, align 2
  %28 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %29 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %33 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @CS4235_LEFT_MASTER, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -97
  %39 = load i16, i16* %8, align 2
  %40 = zext i16 %39 to i32
  %41 = or i32 %38, %40
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %8, align 2
  %43 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %44 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @CS4235_RIGHT_MASTER, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, -97
  %50 = load i16, i16* %9, align 2
  %51 = zext i16 %50 to i32
  %52 = or i32 %49, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %9, align 2
  %54 = load i16, i16* %8, align 2
  %55 = zext i16 %54 to i32
  %56 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %57 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @CS4235_LEFT_MASTER, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %55, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %2
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %67 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @CS4235_RIGHT_MASTER, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %65, %71
  br label %73

73:                                               ; preds = %63, %2
  %74 = phi i1 [ true, %2 ], [ %72, %63 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %77 = load i64, i64* @CS4235_LEFT_MASTER, align 8
  %78 = load i16, i16* %8, align 2
  %79 = call i32 @snd_wss_out(%struct.snd_wss* %76, i64 %77, i16 zeroext %78)
  %80 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %81 = load i64, i64* @CS4235_RIGHT_MASTER, align 8
  %82 = load i16, i16* %9, align 2
  %83 = call i32 @snd_wss_out(%struct.snd_wss* %80, i64 %81, i16 zeroext %82)
  %84 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %85 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %84, i32 0, i32 1
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i16 @snd_cs4235_mixer_output_accu_set_volume(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i64, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
