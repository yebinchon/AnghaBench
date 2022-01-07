; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_hwdep.c_snd_hwdep_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_hwdep.c_snd_hwdep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.snd_hwdep* }
%struct.snd_hwdep = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.snd_hwdep.0*, %struct.file.1*)*, i32 (%struct.snd_hwdep.2*, %struct.file.3*)* }
%struct.snd_hwdep.0 = type opaque
%struct.file.1 = type opaque
%struct.snd_hwdep.2 = type opaque
%struct.file.3 = type opaque

@snd_major = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_HWDEP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SNDRV_OSS_DEVICE_TYPE_DMFM = common dso_local global i32 0, align 4
@SOUND_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_hwdep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hwdep_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_hwdep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @imajor(%struct.inode* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @snd_major, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @iminor(%struct.inode* %16)
  %18 = load i32, i32* @SNDRV_DEVICE_TYPE_HWDEP, align 4
  %19 = call %struct.snd_hwdep* @snd_lookup_minor_data(i32 %17, i32 %18)
  store %struct.snd_hwdep* %19, %struct.snd_hwdep** %7, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %189

23:                                               ; preds = %15
  %24 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %25 = icmp eq %struct.snd_hwdep* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %189

29:                                               ; preds = %23
  %30 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %31 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @try_module_get(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %29
  %38 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %39 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @snd_card_unref(%struct.TYPE_5__* %40)
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %189

44:                                               ; preds = %29
  %45 = load i32, i32* @current, align 4
  %46 = call i32 @init_waitqueue_entry(i32* %9, i32 %45)
  %47 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %48 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %47, i32 0, i32 4
  %49 = call i32 @add_wait_queue(i32* %48, i32* %9)
  %50 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %51 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %50, i32 0, i32 2
  %52 = call i32 @mutex_lock(i32* %51)
  br label %53

53:                                               ; preds = %44, %129
  %54 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %55 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %60 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %130

66:                                               ; preds = %58, %53
  %67 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %68 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (%struct.snd_hwdep.0*, %struct.file.1*)*, i32 (%struct.snd_hwdep.0*, %struct.file.1*)** %69, align 8
  %71 = icmp ne i32 (%struct.snd_hwdep.0*, %struct.file.1*)* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %130

73:                                               ; preds = %66
  %74 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %75 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (%struct.snd_hwdep.0*, %struct.file.1*)*, i32 (%struct.snd_hwdep.0*, %struct.file.1*)** %76, align 8
  %78 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %79 = bitcast %struct.snd_hwdep* %78 to %struct.snd_hwdep.0*
  %80 = load %struct.file*, %struct.file** %5, align 8
  %81 = bitcast %struct.file* %80 to %struct.file.1*
  %82 = call i32 %77(%struct.snd_hwdep.0* %79, %struct.file.1* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %130

86:                                               ; preds = %73
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.file*, %struct.file** %5, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @O_NONBLOCK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %130

101:                                              ; preds = %91
  br label %103

102:                                              ; preds = %86
  br label %130

103:                                              ; preds = %101
  %104 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %105 = call i32 @set_current_state(i32 %104)
  %106 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %107 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %106, i32 0, i32 2
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = call i32 (...) @schedule()
  %110 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %111 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %110, i32 0, i32 2
  %112 = call i32 @mutex_lock(i32* %111)
  %113 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %114 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %103
  %120 = load i32, i32* @ENODEV, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %130

122:                                              ; preds = %103
  %123 = load i32, i32* @current, align 4
  %124 = call i64 @signal_pending(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* @ERESTARTSYS, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %130

129:                                              ; preds = %122
  br label %53

130:                                              ; preds = %126, %119, %102, %98, %85, %72, %63
  %131 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %132 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %131, i32 0, i32 4
  %133 = call i32 @remove_wait_queue(i32* %132, i32* %9)
  %134 = load i32, i32* %8, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %170

136:                                              ; preds = %130
  %137 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %138 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load %struct.file*, %struct.file** %5, align 8
  %141 = call i32 @snd_card_file_add(%struct.TYPE_5__* %139, %struct.file* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %146 = load %struct.file*, %struct.file** %5, align 8
  %147 = getelementptr inbounds %struct.file, %struct.file* %146, i32 0, i32 1
  store %struct.snd_hwdep* %145, %struct.snd_hwdep** %147, align 8
  %148 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %149 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  br label %169

152:                                              ; preds = %136
  %153 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %154 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32 (%struct.snd_hwdep.2*, %struct.file.3*)*, i32 (%struct.snd_hwdep.2*, %struct.file.3*)** %155, align 8
  %157 = icmp ne i32 (%struct.snd_hwdep.2*, %struct.file.3*)* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %152
  %159 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %160 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32 (%struct.snd_hwdep.2*, %struct.file.3*)*, i32 (%struct.snd_hwdep.2*, %struct.file.3*)** %161, align 8
  %163 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %164 = bitcast %struct.snd_hwdep* %163 to %struct.snd_hwdep.2*
  %165 = load %struct.file*, %struct.file** %5, align 8
  %166 = bitcast %struct.file* %165 to %struct.file.3*
  %167 = call i32 %162(%struct.snd_hwdep.2* %164, %struct.file.3* %166)
  br label %168

168:                                              ; preds = %158, %152
  br label %169

169:                                              ; preds = %168, %144
  br label %170

170:                                              ; preds = %169, %130
  %171 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %172 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %171, i32 0, i32 2
  %173 = call i32 @mutex_unlock(i32* %172)
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %178 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %177, i32 0, i32 1
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @module_put(i32 %181)
  br label %183

183:                                              ; preds = %176, %170
  %184 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %185 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %184, i32 0, i32 1
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = call i32 @snd_card_unref(%struct.TYPE_5__* %186)
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %183, %37, %26, %20
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local %struct.snd_hwdep* @snd_lookup_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @snd_card_unref(%struct.TYPE_5__*) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @snd_card_file_add(%struct.TYPE_5__*, %struct.file*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
