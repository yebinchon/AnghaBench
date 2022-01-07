; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_rename_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_rename_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i64 }
%struct.snd_ctl_elem_id = type { i64 }
%struct.snd_kcontrol = type { i64, %struct.snd_ctl_elem_id }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ctl_rename_id(%struct.snd_card* %0, %struct.snd_ctl_elem_id* %1, %struct.snd_ctl_elem_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_ctl_elem_id*, align 8
  %7 = alloca %struct.snd_ctl_elem_id*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_ctl_elem_id* %1, %struct.snd_ctl_elem_id** %6, align 8
  store %struct.snd_ctl_elem_id* %2, %struct.snd_ctl_elem_id** %7, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 0
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %13 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %6, align 8
  %14 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %12, %struct.snd_ctl_elem_id* %13)
  store %struct.snd_kcontrol* %14, %struct.snd_kcontrol** %8, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %16 = icmp eq %struct.snd_kcontrol* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = call i32 @up_write(i32* %19)
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 1
  %26 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %7, align 8
  %27 = bitcast %struct.snd_ctl_elem_id* %25 to i8*
  %28 = bitcast %struct.snd_ctl_elem_id* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %30 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %40 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %44 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %43, i32 0, i32 0
  %45 = call i32 @up_write(i32* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %23, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @up_write(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
