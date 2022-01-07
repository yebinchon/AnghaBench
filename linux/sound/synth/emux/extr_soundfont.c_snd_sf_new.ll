; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_snd_sf_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_snd_sf_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { %struct.snd_sf_callback, %struct.snd_util_memhdr*, i32, i32 }
%struct.snd_sf_callback = type { i32 }
%struct.snd_util_memhdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_sf_list* @snd_sf_new(%struct.snd_sf_callback* %0, %struct.snd_util_memhdr* %1) #0 {
  %3 = alloca %struct.snd_sf_list*, align 8
  %4 = alloca %struct.snd_sf_callback*, align 8
  %5 = alloca %struct.snd_util_memhdr*, align 8
  %6 = alloca %struct.snd_sf_list*, align 8
  store %struct.snd_sf_callback* %0, %struct.snd_sf_callback** %4, align 8
  store %struct.snd_util_memhdr* %1, %struct.snd_util_memhdr** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_sf_list* @kzalloc(i32 24, i32 %7)
  store %struct.snd_sf_list* %8, %struct.snd_sf_list** %6, align 8
  %9 = icmp eq %struct.snd_sf_list* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.snd_sf_list* null, %struct.snd_sf_list** %3, align 8
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.snd_sf_list*, %struct.snd_sf_list** %6, align 8
  %13 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %12, i32 0, i32 3
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.snd_sf_list*, %struct.snd_sf_list** %6, align 8
  %16 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %19 = load %struct.snd_sf_list*, %struct.snd_sf_list** %6, align 8
  %20 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %19, i32 0, i32 1
  store %struct.snd_util_memhdr* %18, %struct.snd_util_memhdr** %20, align 8
  %21 = load %struct.snd_sf_callback*, %struct.snd_sf_callback** %4, align 8
  %22 = icmp ne %struct.snd_sf_callback* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %11
  %24 = load %struct.snd_sf_list*, %struct.snd_sf_list** %6, align 8
  %25 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %24, i32 0, i32 0
  %26 = load %struct.snd_sf_callback*, %struct.snd_sf_callback** %4, align 8
  %27 = bitcast %struct.snd_sf_callback* %25 to i8*
  %28 = bitcast %struct.snd_sf_callback* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 4 %28, i64 4, i1 false)
  br label %29

29:                                               ; preds = %23, %11
  %30 = load %struct.snd_sf_list*, %struct.snd_sf_list** %6, align 8
  %31 = call i32 @snd_sf_init(%struct.snd_sf_list* %30)
  %32 = load %struct.snd_sf_list*, %struct.snd_sf_list** %6, align 8
  store %struct.snd_sf_list* %32, %struct.snd_sf_list** %3, align 8
  br label %33

33:                                               ; preds = %29, %10
  %34 = load %struct.snd_sf_list*, %struct.snd_sf_list** %3, align 8
  ret %struct.snd_sf_list* %34
}

declare dso_local %struct.snd_sf_list* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_sf_init(%struct.snd_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
