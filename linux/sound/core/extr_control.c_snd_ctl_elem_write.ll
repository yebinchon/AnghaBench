; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_file = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id }
%struct.snd_ctl_elem_id = type { i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, %struct.snd_kcontrol_volatile* }
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_kcontrol_volatile = type { i32, %struct.snd_ctl_file* }

@ENOENT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_ctl_file*, %struct.snd_ctl_elem_value*)* @snd_ctl_elem_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_elem_write(%struct.snd_card* %0, %struct.snd_ctl_file* %1, %struct.snd_ctl_elem_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_ctl_file*, align 8
  %7 = alloca %struct.snd_ctl_elem_value*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca %struct.snd_kcontrol_volatile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_ctl_elem_id, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_ctl_file* %1, %struct.snd_ctl_file** %6, align 8
  store %struct.snd_ctl_elem_value* %2, %struct.snd_ctl_elem_value** %7, align 8
  %13 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %13, %struct.snd_ctl_elem_id* %15)
  store %struct.snd_kcontrol* %16, %struct.snd_kcontrol** %8, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %18 = icmp eq %struct.snd_kcontrol* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %90

22:                                               ; preds = %3
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %23, %struct.snd_ctl_elem_id* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 1
  %29 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %29, i64 %31
  store %struct.snd_kcontrol_volatile* %32, %struct.snd_kcontrol_volatile** %9, align 8
  %33 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %9, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_WRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %22
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %41 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %40, i32 0, i32 0
  %42 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %41, align 8
  %43 = icmp eq i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)* %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %6, align 8
  %46 = icmp ne %struct.snd_ctl_file* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %9, align 8
  %49 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %48, i32 0, i32 1
  %50 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %49, align 8
  %51 = icmp ne %struct.snd_ctl_file* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %9, align 8
  %54 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %53, i32 0, i32 1
  %55 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %54, align 8
  %56 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %6, align 8
  %57 = icmp ne %struct.snd_ctl_file* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %39, %22
  %59 = load i32, i32* @EPERM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %90

61:                                               ; preds = %52, %47, %44
  %62 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %63 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %62, i32 0, i32 0
  %64 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @snd_ctl_build_ioff(%struct.snd_ctl_elem_id* %63, %struct.snd_kcontrol* %64, i32 %65)
  %67 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %68 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %67, i32 0, i32 0
  %69 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %68, align 8
  %70 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %71 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %72 = bitcast %struct.snd_ctl_elem_value* %71 to %struct.snd_ctl_elem_value.0*
  %73 = call i32 %69(%struct.snd_kcontrol* %70, %struct.snd_ctl_elem_value.0* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %90

78:                                               ; preds = %61
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %83 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %82, i32 0, i32 0
  %84 = bitcast %struct.snd_ctl_elem_id* %12 to i8*
  %85 = bitcast %struct.snd_ctl_elem_id* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  %86 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %87 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %88 = call i32 @snd_ctl_notify(%struct.snd_card* %86, i32 %87, %struct.snd_ctl_elem_id* %12)
  br label %89

89:                                               ; preds = %81, %78
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %76, %58, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @snd_ctl_build_ioff(%struct.snd_ctl_elem_id*, %struct.snd_kcontrol*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
