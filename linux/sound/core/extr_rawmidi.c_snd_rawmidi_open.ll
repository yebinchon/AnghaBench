; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.snd_rawmidi_file* }
%struct.snd_rawmidi_file = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_card = type { i32, i64 }
%struct.snd_rawmidi = type { %struct.snd_card*, i32, i32 }

@O_APPEND = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@snd_major = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_RAWMIDI = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SOUND_MAJOR = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_LFLG_APPEND = common dso_local global i16 0, align 2
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SND_CTL_SUBDEV_RAWMIDI = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SNDRV_OSS_DEVICE_TYPE_MIDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_rawmidi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rawmidi_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_rawmidi*, align 8
  %12 = alloca %struct.snd_rawmidi_file*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @imajor(%struct.inode* %14)
  store i32 %15, i32* %6, align 4
  store %struct.snd_rawmidi_file* null, %struct.snd_rawmidi_file** %12, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @O_APPEND, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %215

32:                                               ; preds = %22, %2
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = call i32 @stream_open(%struct.inode* %33, %struct.file* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %215

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @snd_major, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = call i32 @iminor(%struct.inode* %45)
  %47 = load i32, i32* @SNDRV_DEVICE_TYPE_RAWMIDI, align 4
  %48 = call %struct.snd_rawmidi* @snd_lookup_minor_data(i32 %46, i32 %47)
  store %struct.snd_rawmidi* %48, %struct.snd_rawmidi** %11, align 8
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %215

52:                                               ; preds = %44
  %53 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %54 = icmp eq %struct.snd_rawmidi* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %215

58:                                               ; preds = %52
  %59 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %60 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %59, i32 0, i32 0
  %61 = load %struct.snd_card*, %struct.snd_card** %60, align 8
  %62 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @try_module_get(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %58
  %67 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %68 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %67, i32 0, i32 0
  %69 = load %struct.snd_card*, %struct.snd_card** %68, align 8
  %70 = call i32 @snd_card_unref(%struct.snd_card* %69)
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %215

73:                                               ; preds = %58
  %74 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %75 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %74, i32 0, i32 1
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %78 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %77, i32 0, i32 0
  %79 = load %struct.snd_card*, %struct.snd_card** %78, align 8
  store %struct.snd_card* %79, %struct.snd_card** %7, align 8
  %80 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = call i32 @snd_card_file_add(%struct.snd_card* %80, %struct.file* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %200

86:                                               ; preds = %73
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = call zeroext i16 @snd_rawmidi_file_flags(%struct.file* %87)
  store i16 %88, i16* %9, align 2
  %89 = load %struct.file*, %struct.file** %5, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @O_APPEND, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @SOUND_MAJOR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95, %86
  %100 = load i16, i16* @SNDRV_RAWMIDI_LFLG_APPEND, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, i16* %9, align 2
  %103 = zext i16 %102 to i32
  %104 = or i32 %103, %101
  %105 = trunc i32 %104 to i16
  store i16 %105, i16* %9, align 2
  br label %106

106:                                              ; preds = %99, %95
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.snd_rawmidi_file* @kmalloc(i32 16, i32 %107)
  store %struct.snd_rawmidi_file* %108, %struct.snd_rawmidi_file** %12, align 8
  %109 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %12, align 8
  %110 = icmp eq %struct.snd_rawmidi_file* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  br label %196

114:                                              ; preds = %106
  %115 = load i32, i32* @current, align 4
  %116 = call i32 @init_waitqueue_entry(i32* %13, i32 %115)
  %117 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %118 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %117, i32 0, i32 2
  %119 = call i32 @add_wait_queue(i32* %118, i32* %13)
  br label %120

120:                                              ; preds = %114, %175
  %121 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %122 = load i32, i32* @SND_CTL_SUBDEV_RAWMIDI, align 4
  %123 = call i32 @snd_ctl_get_preferred_subdevice(%struct.snd_card* %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i16, i16* %9, align 2
  %127 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %12, align 8
  %128 = call i32 @rawmidi_open_priv(%struct.snd_rawmidi* %124, i32 %125, i16 zeroext %126, %struct.snd_rawmidi_file* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %176

132:                                              ; preds = %120
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load %struct.file*, %struct.file** %5, align 8
  %139 = getelementptr inbounds %struct.file, %struct.file* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @O_NONBLOCK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @EBUSY, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %10, align 4
  br label %176

147:                                              ; preds = %137
  br label %149

148:                                              ; preds = %132
  br label %176

149:                                              ; preds = %147
  %150 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %151 = call i32 @set_current_state(i32 %150)
  %152 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %153 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %152, i32 0, i32 1
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = call i32 (...) @schedule()
  %156 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %157 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %156, i32 0, i32 1
  %158 = call i32 @mutex_lock(i32* %157)
  %159 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %160 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %159, i32 0, i32 0
  %161 = load %struct.snd_card*, %struct.snd_card** %160, align 8
  %162 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %149
  %166 = load i32, i32* @ENODEV, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %10, align 4
  br label %176

168:                                              ; preds = %149
  %169 = load i32, i32* @current, align 4
  %170 = call i64 @signal_pending(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @ERESTARTSYS, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %10, align 4
  br label %176

175:                                              ; preds = %168
  br label %120

176:                                              ; preds = %172, %165, %148, %144, %131
  %177 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %178 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %177, i32 0, i32 2
  %179 = call i32 @remove_wait_queue(i32* %178, i32* %13)
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %12, align 8
  %184 = call i32 @kfree(%struct.snd_rawmidi_file* %183)
  br label %196

185:                                              ; preds = %176
  %186 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %12, align 8
  %187 = load %struct.file*, %struct.file** %5, align 8
  %188 = getelementptr inbounds %struct.file, %struct.file* %187, i32 0, i32 1
  store %struct.snd_rawmidi_file* %186, %struct.snd_rawmidi_file** %188, align 8
  %189 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %190 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %189, i32 0, i32 1
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %193 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %192, i32 0, i32 0
  %194 = load %struct.snd_card*, %struct.snd_card** %193, align 8
  %195 = call i32 @snd_card_unref(%struct.snd_card* %194)
  store i32 0, i32* %3, align 4
  br label %215

196:                                              ; preds = %182, %111
  %197 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %198 = load %struct.file*, %struct.file** %5, align 8
  %199 = call i32 @snd_card_file_remove(%struct.snd_card* %197, %struct.file* %198)
  br label %200

200:                                              ; preds = %196, %85
  %201 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %202 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %201, i32 0, i32 1
  %203 = call i32 @mutex_unlock(i32* %202)
  %204 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %205 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %204, i32 0, i32 0
  %206 = load %struct.snd_card*, %struct.snd_card** %205, align 8
  %207 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @module_put(i32 %208)
  %210 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %11, align 8
  %211 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %210, i32 0, i32 0
  %212 = load %struct.snd_card*, %struct.snd_card** %211, align 8
  %213 = call i32 @snd_card_unref(%struct.snd_card* %212)
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %200, %185, %66, %55, %49, %38, %29
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.snd_rawmidi* @snd_lookup_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @snd_card_unref(%struct.snd_card*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_card_file_add(%struct.snd_card*, %struct.file*) #1

declare dso_local zeroext i16 @snd_rawmidi_file_flags(%struct.file*) #1

declare dso_local %struct.snd_rawmidi_file* @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @snd_ctl_get_preferred_subdevice(%struct.snd_card*, i32) #1

declare dso_local i32 @rawmidi_open_priv(%struct.snd_rawmidi*, i32, i16 zeroext, %struct.snd_rawmidi_file*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.snd_rawmidi_file*) #1

declare dso_local i32 @snd_card_file_remove(%struct.snd_card*, %struct.file*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
