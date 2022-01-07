; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ctl_file = type { i32, %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_info = type { i32, i32, i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info.0*)*, %struct.snd_kcontrol_volatile* }
%struct.snd_ctl_elem_info.0 = type opaque
%struct.snd_kcontrol_volatile = type { %struct.snd_ctl_file*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_LOCK = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ctl_file*, %struct.snd_ctl_elem_info*)* @snd_ctl_elem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_elem_info(%struct.snd_ctl_file* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ctl_file*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.snd_kcontrol_volatile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ctl_file* %0, %struct.snd_ctl_file** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %11 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %11, i32 0, i32 1
  %13 = load %struct.snd_card*, %struct.snd_card** %12, align 8
  store %struct.snd_card* %13, %struct.snd_card** %6, align 8
  %14 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %15 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %18 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %18, i32 0, i32 2
  %20 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %17, i32* %19)
  store %struct.snd_kcontrol* %20, %struct.snd_kcontrol** %7, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %22 = icmp eq %struct.snd_kcontrol* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %25 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %24, i32 0, i32 0
  %26 = call i32 @up_read(i32* %25)
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %103

29:                                               ; preds = %2
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info.0*)** %31, align 8
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %34 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %35 = bitcast %struct.snd_ctl_elem_info* %34 to %struct.snd_ctl_elem_info.0*
  %36 = call i32 %32(%struct.snd_kcontrol* %33, %struct.snd_ctl_elem_info.0* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %98

39:                                               ; preds = %29
  %40 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_BUG_ON(i32 %42)
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %45 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %45, i32 0, i32 2
  %47 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %49 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %48, i32 0, i32 1
  %50 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %50, i64 %52
  store %struct.snd_kcontrol_volatile* %53, %struct.snd_kcontrol_volatile** %8, align 8
  %54 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %54, i32 0, i32 2
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @snd_ctl_build_ioff(i32* %55, %struct.snd_kcontrol* %56, i32 %57)
  %59 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %8, align 8
  %60 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %63 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %8, align 8
  %65 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %64, i32 0, i32 0
  %66 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %65, align 8
  %67 = icmp ne %struct.snd_ctl_file* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %39
  %69 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_LOCK, align 4
  %70 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %8, align 8
  %75 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %74, i32 0, i32 0
  %76 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %75, align 8
  %77 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %4, align 8
  %78 = icmp eq %struct.snd_ctl_file* %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_OWNER, align 4
  %81 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %82 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %68
  %86 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %8, align 8
  %87 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %86, i32 0, i32 0
  %88 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %87, align 8
  %89 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pid_vnr(i32 %90)
  %92 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %93 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %97

94:                                               ; preds = %39
  %95 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %96 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %85
  br label %98

98:                                               ; preds = %97, %29
  %99 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %100 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %99, i32 0, i32 0
  %101 = call i32 @up_read(i32* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %23
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @snd_ctl_build_ioff(i32*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @pid_vnr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
