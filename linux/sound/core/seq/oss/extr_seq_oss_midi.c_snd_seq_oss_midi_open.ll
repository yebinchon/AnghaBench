; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.seq_oss_midi = type { i32, i32, i32, %struct.seq_oss_devinfo*, i32, i32 }
%struct.snd_seq_port_subscribe = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PERM_WRITE = common dso_local global i32 0, align 4
@PERM_READ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_SUBSCRIBE_PORT = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_SUBS_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_midi_open(%struct.seq_oss_devinfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.seq_oss_midi*, align 8
  %10 = alloca %struct.snd_seq_port_subscribe, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo* %11, i32 %12)
  store %struct.seq_oss_midi* %13, %struct.seq_oss_midi** %9, align 8
  %14 = icmp eq %struct.seq_oss_midi* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %176

18:                                               ; preds = %3
  %19 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %20 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %25 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %24, i32 0, i32 3
  %26 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %25, align 8
  %27 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %28 = icmp ne %struct.seq_oss_devinfo* %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %31 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %30, i32 0, i32 2
  %32 = call i32 @snd_use_lock_free(i32* %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %176

35:                                               ; preds = %23, %18
  store i32 0, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @is_write_mode(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @PERM_WRITE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @is_read_mode(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @PERM_READ, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %53 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %61 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %60, i32 0, i32 2
  %62 = call i32 @snd_use_lock_free(i32* %61)
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %176

65:                                               ; preds = %51
  %66 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %67 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %75 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %74, i32 0, i32 2
  %76 = call i32 @snd_use_lock_free(i32* %75)
  store i32 0, i32* %4, align 4
  br label %176

77:                                               ; preds = %65
  %78 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %79 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = call i32 @memset(%struct.snd_seq_port_subscribe* %10, i32 0, i32 24)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @PERM_WRITE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 3
  %91 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %92 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %91, i32 0, i32 2
  %93 = bitcast %struct.TYPE_2__* %90 to i8*
  %94 = bitcast %struct.TYPE_2__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 8, i1 false)
  %95 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %96 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %101 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %106 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SNDRV_SEQ_IOCTL_SUBSCRIBE_PORT, align 4
  %109 = call i64 @snd_seq_kernel_client_ctl(i32 %107, i32 %108, %struct.snd_seq_port_subscribe* %10)
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %89
  %112 = load i32, i32* @PERM_WRITE, align 4
  %113 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %114 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %89
  br label %118

118:                                              ; preds = %117, %77
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @PERM_READ, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %158

123:                                              ; preds = %118
  %124 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %125 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %130 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 2
  %135 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %136 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %135, i32 0, i32 2
  %137 = bitcast %struct.TYPE_2__* %134 to i8*
  %138 = bitcast %struct.TYPE_2__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 8, i1 false)
  %139 = load i32, i32* @SNDRV_SEQ_PORT_SUBS_TIMESTAMP, align 4
  %140 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 1
  store i32 %139, i32* %140, align 4
  %141 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %142 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %146 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SNDRV_SEQ_IOCTL_SUBSCRIBE_PORT, align 4
  %149 = call i64 @snd_seq_kernel_client_ctl(i32 %147, i32 %148, %struct.snd_seq_port_subscribe* %10)
  %150 = icmp sge i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %123
  %152 = load i32, i32* @PERM_READ, align 4
  %153 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %154 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %123
  br label %158

158:                                              ; preds = %157, %118
  %159 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %160 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %158
  %164 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %165 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %164, i32 0, i32 2
  %166 = call i32 @snd_use_lock_free(i32* %165)
  %167 = load i32, i32* @ENXIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %176

169:                                              ; preds = %158
  %170 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %171 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %172 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %171, i32 0, i32 3
  store %struct.seq_oss_devinfo* %170, %struct.seq_oss_devinfo** %172, align 8
  %173 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %174 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %173, i32 0, i32 2
  %175 = call i32 @snd_use_lock_free(i32* %174)
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %169, %163, %73, %59, %29, %15
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local i64 @is_write_mode(i32) #1

declare dso_local i64 @is_read_mode(i32) #1

declare dso_local i32 @memset(%struct.snd_seq_port_subscribe*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @snd_seq_kernel_client_ctl(i32, i32, %struct.snd_seq_port_subscribe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
