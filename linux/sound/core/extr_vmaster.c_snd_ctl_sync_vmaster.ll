; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_snd_ctl_sync_vmaster.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_snd_ctl_sync_vmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.link_master = type { i32, i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ctl_sync_vmaster(%struct.snd_kcontrol* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = icmp ne %struct.snd_kcontrol* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %55

11:                                               ; preds = %2
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.link_master* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.link_master* %13, %struct.link_master** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %11
  %17 = load %struct.link_master*, %struct.link_master** %5, align 8
  %18 = call i32 @master_init(%struct.link_master* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %55

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.link_master*, %struct.link_master** %5, align 8
  %25 = load %struct.link_master*, %struct.link_master** %5, align 8
  %26 = getelementptr inbounds %struct.link_master, %struct.link_master* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.link_master*, %struct.link_master** %5, align 8
  %29 = getelementptr inbounds %struct.link_master, %struct.link_master* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sync_slaves(%struct.link_master* %24, i32 %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %55

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %11
  %37 = load %struct.link_master*, %struct.link_master** %5, align 8
  %38 = getelementptr inbounds %struct.link_master, %struct.link_master* %37, i32 0, i32 2
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = icmp ne i32 (i32, i32)* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load %struct.link_master*, %struct.link_master** %5, align 8
  %46 = getelementptr inbounds %struct.link_master, %struct.link_master* %45, i32 0, i32 2
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load %struct.link_master*, %struct.link_master** %5, align 8
  %49 = getelementptr inbounds %struct.link_master, %struct.link_master* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.link_master*, %struct.link_master** %5, align 8
  %52 = getelementptr inbounds %struct.link_master, %struct.link_master* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %47(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %10, %21, %34, %44, %41, %36
  ret void
}

declare dso_local %struct.link_master* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @master_init(%struct.link_master*) #1

declare dso_local i32 @sync_slaves(%struct.link_master*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
