; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control_compat.c_get_ctl_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control_compat.c_get_ctl_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* }
%struct.snd_ctl_elem_info = type opaque
%struct.snd_ctl_elem_info.0 = type { i32, i32, %struct.snd_ctl_elem_id }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_ctl_elem_id*, i32*)* @get_ctl_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ctl_type(%struct.snd_card* %0, %struct.snd_ctl_elem_id* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_ctl_elem_id*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca %struct.snd_ctl_elem_info.0*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_ctl_elem_id* %1, %struct.snd_ctl_elem_id** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %12 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %11, i32 0, i32 0
  %13 = call i32 @down_read(i32* %12)
  %14 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %15 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %6, align 8
  %16 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %14, %struct.snd_ctl_elem_id* %15)
  store %struct.snd_kcontrol* %16, %struct.snd_kcontrol** %8, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %18 = icmp ne %struct.snd_kcontrol* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %21 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %20, i32 0, i32 0
  %22 = call i32 @up_read(i32* %21)
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %66

25:                                               ; preds = %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.snd_ctl_elem_info.0* @kzalloc(i32 12, i32 %26)
  store %struct.snd_ctl_elem_info.0* %27, %struct.snd_ctl_elem_info.0** %9, align 8
  %28 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %9, align 8
  %29 = icmp eq %struct.snd_ctl_elem_info.0* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 0
  %33 = call i32 @up_read(i32* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %25
  %37 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %9, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %37, i32 0, i32 2
  %39 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %6, align 8
  %40 = bitcast %struct.snd_ctl_elem_id* %38 to i8*
  %41 = bitcast %struct.snd_ctl_elem_id* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %43 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %42, i32 0, i32 0
  %44 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)** %43, align 8
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %46 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %9, align 8
  %47 = bitcast %struct.snd_ctl_elem_info.0* %46 to %struct.snd_ctl_elem_info*
  %48 = call i32 %44(%struct.snd_kcontrol* %45, %struct.snd_ctl_elem_info* %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %50 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %49, i32 0, i32 0
  %51 = call i32 @up_read(i32* %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %36
  %55 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %9, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %9, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %36
  %63 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %9, align 8
  %64 = call i32 @kfree(%struct.snd_ctl_elem_info.0* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %30, %19
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.snd_ctl_elem_info.0* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.snd_ctl_elem_info.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
