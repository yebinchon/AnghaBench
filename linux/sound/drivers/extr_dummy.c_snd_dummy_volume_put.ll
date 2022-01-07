; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_dummy.c_snd_dummy_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_dummy.c_snd_dummy_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_dummy = type { i32**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_dummy_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dummy_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_dummy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_dummy* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_dummy* %11, %struct.snd_dummy** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, -50
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -50, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 100
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 100, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, -50
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 -50, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 100
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 100, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %46 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %45, i32 0, i32 1
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %49 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %44
  %60 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %61 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br label %71

71:                                               ; preds = %59, %44
  %72 = phi i1 [ true, %44 ], [ %70, %59 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %76 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %74, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %85 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %83, i32* %91, align 4
  %92 = load %struct.snd_dummy*, %struct.snd_dummy** %5, align 8
  %93 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %92, i32 0, i32 1
  %94 = call i32 @spin_unlock_irq(i32* %93)
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.snd_dummy* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
