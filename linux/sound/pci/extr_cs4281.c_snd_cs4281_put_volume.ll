; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_put_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_put_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cs4281 = type { i32 }

@CS_VOL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cs4281_put_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4281_put_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cs4281*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.cs4281* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.cs4281* %12, %struct.cs4281** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 16
  %17 = and i32 %16, 65535
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 65535
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @CS_VOL_MASK, align 4
  %23 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %23, i32 %24)
  %26 = load i32, i32* @CS_VOL_MASK, align 4
  %27 = and i32 %25, %26
  %28 = sub nsw i32 %22, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @CS_VOL_MASK, align 4
  %30 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %30, i32 %31)
  %33 = load i32, i32* @CS_VOL_MASK, align 4
  %34 = and i32 %32, %33
  %35 = sub nsw i32 %29, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %2
  %46 = load i32, i32* @CS_VOL_MASK, align 4
  %47 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CS_VOL_MASK, align 4
  %55 = and i32 %53, %54
  %56 = sub nsw i32 %46, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %57, i32 %58, i32 %59)
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %45, %2
  %62 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %63 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %61
  %72 = load i32, i32* @CS_VOL_MASK, align 4
  %73 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %74 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CS_VOL_MASK, align 4
  %81 = and i32 %79, %80
  %82 = sub nsw i32 %72, %81
  store i32 %82, i32* %10, align 4
  %83 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %83, i32 %84, i32 %85)
  store i32 1, i32* %6, align 4
  br label %87

87:                                               ; preds = %71, %61
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.cs4281* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_cs4281_peekBA0(%struct.cs4281*, i32) #1

declare dso_local i32 @snd_cs4281_pokeBA0(%struct.cs4281*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
