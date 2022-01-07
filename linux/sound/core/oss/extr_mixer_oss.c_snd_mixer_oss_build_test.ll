; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_build_test.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_build_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.slot = type { i64, i32, i32* }
%struct.snd_ctl_elem_info = type { i64 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info.0*)*, %struct.TYPE_2__ }
%struct.snd_ctl_elem_info.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss*, %struct.slot*, i8*, i32, i32)* @snd_mixer_oss_build_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_build_test(%struct.snd_mixer_oss* %0, %struct.slot* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_mixer_oss*, align 8
  %8 = alloca %struct.slot*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_ctl_elem_info*, align 8
  %13 = alloca %struct.snd_kcontrol*, align 8
  %14 = alloca %struct.snd_card*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_mixer_oss* %0, %struct.snd_mixer_oss** %7, align 8
  store %struct.slot* %1, %struct.slot** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %7, align 8
  %17 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %16, i32 0, i32 0
  %18 = load %struct.snd_card*, %struct.snd_card** %17, align 8
  store %struct.snd_card* %18, %struct.snd_card** %14, align 8
  %19 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %20 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  %22 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss* %22, i8* %23, i32 %24)
  store %struct.snd_kcontrol* %25, %struct.snd_kcontrol** %13, align 8
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %27 = icmp eq %struct.snd_kcontrol* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %30 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %29, i32 0, i32 0
  %31 = call i32 @up_read(i32* %30)
  store i32 0, i32* %6, align 4
  br label %95

32:                                               ; preds = %5
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.snd_ctl_elem_info* @kmalloc(i32 8, i32 %33)
  store %struct.snd_ctl_elem_info* %34, %struct.snd_ctl_elem_info** %12, align 8
  %35 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %12, align 8
  %36 = icmp ne %struct.snd_ctl_elem_info* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %39 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %38, i32 0, i32 0
  %40 = call i32 @up_read(i32* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %95

43:                                               ; preds = %32
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info.0*)** %45, align 8
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %48 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %12, align 8
  %49 = bitcast %struct.snd_ctl_elem_info* %48 to %struct.snd_ctl_elem_info.0*
  %50 = call i32 %46(%struct.snd_kcontrol* %47, %struct.snd_ctl_elem_info.0* %49)
  store i32 %50, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %54 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %53, i32 0, i32 0
  %55 = call i32 @up_read(i32* %54)
  %56 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %12, align 8
  %57 = call i32 @kfree(%struct.snd_ctl_elem_info* %56)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %6, align 4
  br label %95

59:                                               ; preds = %43
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %61 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.slot*, %struct.slot** %8, align 8
  %65 = getelementptr inbounds %struct.slot, %struct.slot* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %71 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %70, i32 0, i32 0
  %72 = call i32 @up_read(i32* %71)
  %73 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %12, align 8
  %74 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.slot*, %struct.slot** %8, align 8
  %77 = getelementptr inbounds %struct.slot, %struct.slot* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %59
  %81 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %12, align 8
  %82 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.slot*, %struct.slot** %8, align 8
  %85 = getelementptr inbounds %struct.slot, %struct.slot* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %59
  %87 = load i32, i32* %11, align 4
  %88 = shl i32 1, %87
  %89 = load %struct.slot*, %struct.slot** %8, align 8
  %90 = getelementptr inbounds %struct.slot, %struct.slot* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %12, align 8
  %94 = call i32 @kfree(%struct.snd_ctl_elem_info* %93)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %86, %52, %37, %28
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss*, i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.snd_ctl_elem_info* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
