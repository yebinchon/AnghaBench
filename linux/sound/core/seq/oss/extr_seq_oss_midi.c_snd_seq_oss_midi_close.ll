; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.seq_oss_midi = type { i32, i32, %struct.seq_oss_devinfo*, i32, i32 }
%struct.snd_seq_port_subscribe = type { %struct.TYPE_2__, %struct.TYPE_2__ }

@ENODEV = common dso_local global i32 0, align 4
@PERM_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_UNSUBSCRIBE_PORT = common dso_local global i32 0, align 4
@PERM_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_midi_close(%struct.seq_oss_devinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_oss_midi*, align 8
  %7 = alloca %struct.snd_seq_port_subscribe, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo* %8, i32 %9)
  store %struct.seq_oss_midi* %10, %struct.seq_oss_midi** %6, align 8
  %11 = icmp eq %struct.seq_oss_midi* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %17 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %22 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %21, i32 0, i32 2
  %23 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %22, align 8
  %24 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %25 = icmp ne %struct.seq_oss_devinfo* %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %15
  %27 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %28 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %27, i32 0, i32 1
  %29 = call i32 @snd_use_lock_free(i32* %28)
  store i32 0, i32* %3, align 4
  br label %95

30:                                               ; preds = %20
  %31 = call i32 @memset(%struct.snd_seq_port_subscribe* %7, i32 0, i32 16)
  %32 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %33 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PERM_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %7, i32 0, i32 1
  %40 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %41 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_2__* %39 to i8*
  %43 = bitcast %struct.TYPE_2__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 8, i1 false)
  %44 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %45 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %50 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %55 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SNDRV_SEQ_IOCTL_UNSUBSCRIBE_PORT, align 4
  %58 = call i32 @snd_seq_kernel_client_ctl(i32 %56, i32 %57, %struct.snd_seq_port_subscribe* %7)
  br label %59

59:                                               ; preds = %38, %30
  %60 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %61 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PERM_READ, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %59
  %67 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %68 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %7, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %73 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %7, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %7, i32 0, i32 0
  %78 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %79 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %78, i32 0, i32 1
  %80 = bitcast %struct.TYPE_2__* %77 to i8*
  %81 = bitcast %struct.TYPE_2__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 8, i1 false)
  %82 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %83 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SNDRV_SEQ_IOCTL_UNSUBSCRIBE_PORT, align 4
  %86 = call i32 @snd_seq_kernel_client_ctl(i32 %84, i32 %85, %struct.snd_seq_port_subscribe* %7)
  br label %87

87:                                               ; preds = %66, %59
  %88 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %89 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %91 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %90, i32 0, i32 2
  store %struct.seq_oss_devinfo* null, %struct.seq_oss_devinfo** %91, align 8
  %92 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %93 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %92, i32 0, i32 1
  %94 = call i32 @snd_use_lock_free(i32* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %26, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local i32 @memset(%struct.snd_seq_port_subscribe*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_seq_kernel_client_ctl(i32, i32, %struct.snd_seq_port_subscribe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
