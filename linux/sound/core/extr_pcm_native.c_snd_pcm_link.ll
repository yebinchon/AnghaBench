; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_group*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.snd_pcm_group = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }
%struct.fd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.snd_pcm_file* }

@EBADFD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_pcm_link_rwsem = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_OPEN = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_link(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_file*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_group*, align 8
  %10 = alloca %struct.snd_pcm_group*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.TYPE_8__* @fdget(i32 %18)
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %20, align 8
  %21 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EBADFD, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %143

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i32 @is_pcm_file(%struct.TYPE_8__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EBADFD, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %138

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %38, align 8
  store %struct.snd_pcm_file* %39, %struct.snd_pcm_file** %7, align 8
  %40 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %40, i32 0, i32 0
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %41, align 8
  store %struct.snd_pcm_substream* %42, %struct.snd_pcm_substream** %8, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.snd_pcm_group* @kzalloc(i32 4, i32 %43)
  store %struct.snd_pcm_group* %44, %struct.snd_pcm_group** %9, align 8
  %45 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %9, align 8
  %46 = icmp ne %struct.snd_pcm_group* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %135

50:                                               ; preds = %35
  %51 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %9, align 8
  %52 = call i32 @snd_pcm_group_init(%struct.snd_pcm_group* %51)
  %53 = call i32 @down_write(i32* @snd_pcm_link_rwsem)
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SNDRV_PCM_STATE_OPEN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %91, label %63

63:                                               ; preds = %50
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %70, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %63
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %84, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %79, %63, %50
  %92 = load i32, i32* @EBADFD, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %133

94:                                               ; preds = %79
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %96 = call i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @EALREADY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %133

101:                                              ; preds = %94
  %102 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %103 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %102)
  %104 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %105 = call i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %109 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %9, align 8
  %110 = call i32 @snd_pcm_group_assign(%struct.snd_pcm_substream* %108, %struct.snd_pcm_group* %109)
  store %struct.snd_pcm_group* null, %struct.snd_pcm_group** %9, align 8
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %112, i32 0, i32 0
  %114 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %113, align 8
  store %struct.snd_pcm_group* %114, %struct.snd_pcm_group** %10, align 8
  %115 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %116 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %115)
  %117 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @snd_pcm_group_lock_irq(%struct.snd_pcm_group* %117, i32 %118)
  %120 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %121 = call i32 @snd_pcm_stream_lock(%struct.snd_pcm_substream* %120)
  %122 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %123 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %10, align 8
  %124 = call i32 @snd_pcm_group_assign(%struct.snd_pcm_substream* %122, %struct.snd_pcm_group* %123)
  %125 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %10, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_group, %struct.snd_pcm_group* %125, i32 0, i32 0
  %127 = call i32 @refcount_inc(i32* %126)
  %128 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %129 = call i32 @snd_pcm_stream_unlock(%struct.snd_pcm_substream* %128)
  %130 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @snd_pcm_group_unlock_irq(%struct.snd_pcm_group* %130, i32 %131)
  br label %133

133:                                              ; preds = %111, %98, %91
  %134 = call i32 @up_write(i32* @snd_pcm_link_rwsem)
  br label %135

135:                                              ; preds = %133, %47
  %136 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %9, align 8
  %137 = call i32 @kfree(%struct.snd_pcm_group* %136)
  br label %138

138:                                              ; preds = %135, %32
  %139 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = call i32 @fdput(%struct.TYPE_8__* %140)
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %24
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_8__* @fdget(i32) #1

declare dso_local i32 @is_pcm_file(%struct.TYPE_8__*) #1

declare dso_local %struct.snd_pcm_group* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_group_init(%struct.snd_pcm_group*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_group_assign(%struct.snd_pcm_substream*, %struct.snd_pcm_group*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_group_lock_irq(%struct.snd_pcm_group*, i32) #1

declare dso_local i32 @snd_pcm_stream_lock(%struct.snd_pcm_substream*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @snd_pcm_stream_unlock(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_group_unlock_irq(%struct.snd_pcm_group*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.snd_pcm_group*) #1

declare dso_local i32 @fdput(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
