; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_qsound_space_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_qsound_space_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_sb_csp = type { i8, i8, i32, i32 }

@SNDRV_SB_CSP_QSOUND_MAX_RIGHT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sb_qsound_space_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb_qsound_space_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_sb_csp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_sb_csp* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_sb_csp* %11, %struct.snd_sb_csp** %5, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %8, align 1
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @SNDRV_SB_CSP_QSOUND_MAX_RIGHT, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i8, i8* @SNDRV_SB_CSP_QSOUND_MAX_RIGHT, align 1
  store i8 %25, i8* %8, align 1
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @SNDRV_SB_CSP_QSOUND_MAX_RIGHT, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i8, i8* @SNDRV_SB_CSP_QSOUND_MAX_RIGHT, align 1
  store i8 %40, i8* %9, align 1
  br label %41

41:                                               ; preds = %39, %26
  %42 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %43 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %42, i32 0, i32 3
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %47 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 4
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %41
  %54 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %55 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br label %61

61:                                               ; preds = %53, %41
  %62 = phi i1 [ true, %41 ], [ %60, %53 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i8, i8* %8, align 1
  %65 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %66 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %65, i32 0, i32 0
  store i8 %64, i8* %66, align 4
  %67 = load i8, i8* %9, align 1
  %68 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %69 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %68, i32 0, i32 1
  store i8 %67, i8* %69, align 1
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %72 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %74 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %73, i32 0, i32 3
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.snd_sb_csp* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
