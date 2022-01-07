; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_bus.c_snd_hdac_bus_queue_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_bus.c_snd_hdac_bus_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32, i8** }

@HDA_UNSOL_QUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_bus_queue_event(%struct.hdac_bus* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %9 = icmp ne %struct.hdac_bus* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %45

11:                                               ; preds = %3
  %12 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @trace_hda_unsol_event(%struct.hdac_bus* %12, i8* %13, i8* %14)
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %17 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @HDA_UNSOL_QUEUE_SIZE, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %24 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %29 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %27, i8** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %36 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  store i8* %34, i8** %41, align 8
  %42 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %43 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %42, i32 0, i32 1
  %44 = call i32 @schedule_work(i32* %43)
  br label %45

45:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @trace_hda_unsol_event(%struct.hdac_bus*, i8*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
