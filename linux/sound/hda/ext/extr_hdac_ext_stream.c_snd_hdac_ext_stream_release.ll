; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_stream_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_stream_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_ext_stream = type { i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.hdac_bus* }
%struct.hdac_bus = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_ext_stream_release(%struct.hdac_ext_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.hdac_ext_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_bus*, align 8
  store %struct.hdac_ext_stream* %0, %struct.hdac_ext_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %7 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  store %struct.hdac_bus* %9, %struct.hdac_bus** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %59 [
    i32 130, label %11
    i32 129, label %15
    i32 128, label %33
  ]

11:                                               ; preds = %2
  %12 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %13 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %12, i32 0, i32 2
  %14 = call i32 @snd_hdac_stream_release(%struct.TYPE_2__* %13)
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %17 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %22 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %27 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %28 = call i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus* %26, %struct.hdac_ext_stream* %27, i32 0)
  br label %29

29:                                               ; preds = %25, %20, %15
  %30 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %31 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %30, i32 0, i32 2
  %32 = call i32 @snd_hdac_stream_release(%struct.TYPE_2__* %31)
  br label %65

33:                                               ; preds = %2
  %34 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %35 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %40 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %46 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %47 = call i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus* %45, %struct.hdac_ext_stream* %46, i32 0)
  br label %48

48:                                               ; preds = %44, %38, %33
  %49 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %50 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %49, i32 0, i32 1
  %51 = call i32 @spin_lock_irq(i32* %50)
  %52 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %53 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %55 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %57 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_irq(i32* %57)
  br label %65

59:                                               ; preds = %2
  %60 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %61 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %48, %29, %11
  ret void
}

declare dso_local i32 @snd_hdac_stream_release(%struct.TYPE_2__*) #1

declare dso_local i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus*, %struct.hdac_ext_stream*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
