; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_efx_voices_mask_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_efx_voices_mask_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_emu10k1 = type { i32*, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_emu10k1_pcm_efx_voices_mask_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_pcm_efx_voices_mask_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_emu10k1* %14, %struct.snd_emu10k1** %6, align 8
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 64, i32 32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 7, i32 6
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %28, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %57, %2
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = srem i32 %45, 32
  %47 = shl i32 1, %46
  %48 = load i32, i32* %12, align 4
  %49 = sdiv i32 %48, 32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %44, %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %29

60:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %75

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %61

75:                                               ; preds = %70, %61
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %122

82:                                               ; preds = %75
  %83 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %83, i32 0, i32 1
  %85 = call i32 @spin_lock_irq(i32* %84)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %89 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %87, %92
  br i1 %93, label %103, label %94

94:                                               ; preds = %82
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %98 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %96, %101
  br label %103

103:                                              ; preds = %94, %82
  %104 = phi i1 [ true, %82 ], [ %102, %94 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %109 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %107, i32* %111, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %115 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 %113, i32* %117, align 4
  %118 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %119 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock_irq(i32* %119)
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %103, %79
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
