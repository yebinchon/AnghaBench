; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_init_substream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_init_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_stream = type { %struct.TYPE_2__*, i32, %struct.snd_usb_substream* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_usb_substream = type { i32, i64, %struct.snd_usb_stream*, %struct.snd_usb_power_domain*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.audioformat = type { i64, i32, i32, i32, i32 }
%struct.snd_usb_power_domain = type { i32 }

@UAC3_PD_STATE_D1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_stream*, i32, %struct.audioformat*, %struct.snd_usb_power_domain*)* @snd_usb_init_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_init_substream(%struct.snd_usb_stream* %0, i32 %1, %struct.audioformat* %2, %struct.snd_usb_power_domain* %3) #0 {
  %5 = alloca %struct.snd_usb_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audioformat*, align 8
  %8 = alloca %struct.snd_usb_power_domain*, align 8
  %9 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_usb_stream* %0, %struct.snd_usb_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.audioformat* %2, %struct.audioformat** %7, align 8
  store %struct.snd_usb_power_domain* %3, %struct.snd_usb_power_domain** %8, align 8
  %10 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %10, i32 0, i32 2
  %12 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %12, i64 %14
  store %struct.snd_usb_substream* %15, %struct.snd_usb_substream** %9, align 8
  %16 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %17 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %16, i32 0, i32 8
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %20 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %19, i32 0, i32 14
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %23 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %24 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %23, i32 0, i32 2
  store %struct.snd_usb_stream* %22, %struct.snd_usb_stream** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %27 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %34 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %36 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %41 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 4
  %42 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %43 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %48 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 8
  %49 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %50 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @snd_usb_get_speed(i32 %51)
  %53 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %54 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %56 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %58 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @snd_usb_set_pcm_ops(i32 %59, i32 %60)
  %62 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %63 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %62, i32 0, i32 4
  %64 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %65 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %64, i32 0, i32 8
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %68 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %71 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %75 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %79 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %82 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %84 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %87 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %89 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %92 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %4
  %96 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %97 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %100 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %4
  %102 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %8, align 8
  %103 = icmp ne %struct.snd_usb_power_domain* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %8, align 8
  %106 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %107 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %106, i32 0, i32 3
  store %struct.snd_usb_power_domain* %105, %struct.snd_usb_power_domain** %107, align 8
  %108 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %109 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %108, i32 0, i32 2
  %110 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %109, align 8
  %111 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %8, align 8
  %114 = load i32, i32* @UAC3_PD_STATE_D1, align 4
  %115 = call i32 @snd_usb_power_domain_set(%struct.TYPE_2__* %112, %struct.snd_usb_power_domain* %113, i32 %114)
  br label %116

116:                                              ; preds = %104, %101
  %117 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %118 = call i32 @snd_usb_preallocate_buffer(%struct.snd_usb_substream* %117)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_usb_get_speed(i32) #1

declare dso_local i32 @snd_usb_set_pcm_ops(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @snd_usb_power_domain_set(%struct.TYPE_2__*, %struct.snd_usb_power_domain*, i32) #1

declare dso_local i32 @snd_usb_preallocate_buffer(%struct.snd_usb_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
