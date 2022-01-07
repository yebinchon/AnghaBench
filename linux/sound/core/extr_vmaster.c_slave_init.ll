; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_slave_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_slave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_slave = type { i32, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_info*)*, i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@SND_CTL_SLAVE_NEED_UPDATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ALSA: vmaster: invalid slave element\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_slave*)* @slave_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slave_init(%struct.link_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.link_slave*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca i32, align 4
  store %struct.link_slave* %0, %struct.link_slave** %3, align 8
  %6 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %7 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %13 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SND_CTL_SLAVE_NEED_UPDATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %20 = call i32 @slave_update(%struct.link_slave* %19)
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %110

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.snd_ctl_elem_info* @kmalloc(i32 20, i32 %23)
  store %struct.snd_ctl_elem_info* %24, %struct.snd_ctl_elem_info** %4, align 8
  %25 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %26 = icmp ne %struct.snd_ctl_elem_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %110

30:                                               ; preds = %22
  %31 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %32 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %38 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_info*)*, i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_info*)** %39, align 8
  %41 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %42 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %41, i32 0, i32 2
  %43 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %44 = call i32 %40(%struct.TYPE_8__* %42, %struct.snd_ctl_elem_info* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %49 = call i32 @kfree(%struct.snd_ctl_elem_info* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %110

51:                                               ; preds = %30
  %52 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %56 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %62 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %65 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %83, label %69

69:                                               ; preds = %51
  %70 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %71 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %78 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BOOLEAN, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %76, %51
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %86 = call i32 @kfree(%struct.snd_ctl_elem_info* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %110

89:                                               ; preds = %76, %69
  %90 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %91 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %96 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %99 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %104 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %107 = call i32 @kfree(%struct.snd_ctl_elem_info* %106)
  %108 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %109 = call i32 @slave_update(%struct.link_slave* %108)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %89, %83, %47, %27, %21, %18
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @slave_update(%struct.link_slave*) #1

declare dso_local %struct.snd_ctl_elem_info* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_info*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
