; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_master_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_master_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.link_master = type { i32, i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @master_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @master_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.link_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.link_master* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.link_master* %12, %struct.link_master** %6, align 8
  %13 = load %struct.link_master*, %struct.link_master** %6, align 8
  %14 = call i32 @master_init(%struct.link_master* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.link_master*, %struct.link_master** %6, align 8
  %22 = getelementptr inbounds %struct.link_master, %struct.link_master* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %64

35:                                               ; preds = %19
  %36 = load %struct.link_master*, %struct.link_master** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @sync_slaves(%struct.link_master* %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %64

44:                                               ; preds = %35
  %45 = load %struct.link_master*, %struct.link_master** %6, align 8
  %46 = getelementptr inbounds %struct.link_master, %struct.link_master* %45, i32 0, i32 2
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = icmp ne i32 (i32, i32)* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = load %struct.link_master*, %struct.link_master** %6, align 8
  %54 = getelementptr inbounds %struct.link_master, %struct.link_master* %53, i32 0, i32 2
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %54, align 8
  %56 = load %struct.link_master*, %struct.link_master** %6, align 8
  %57 = getelementptr inbounds %struct.link_master, %struct.link_master* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.link_master*, %struct.link_master** %6, align 8
  %60 = getelementptr inbounds %struct.link_master, %struct.link_master* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %55(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %52, %49, %44
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %42, %34, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
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
