; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_stream_decouple.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_stream_decouple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i64 }
%struct.hdac_ext_stream = type { i32, %struct.hdac_stream }
%struct.hdac_stream = type { i32 }

@AZX_REG_PP_PPCTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_ext_stream_decouple(%struct.hdac_bus* %0, %struct.hdac_ext_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca %struct.hdac_ext_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store %struct.hdac_ext_stream* %1, %struct.hdac_ext_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %5, align 8
  %11 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %10, i32 0, i32 1
  store %struct.hdac_stream* %11, %struct.hdac_stream** %7, align 8
  %12 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %13 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AZX_PPCTL_PROCEN(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %17 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %20 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AZX_REG_PP_PPCTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readw(i64 %23)
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %34 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AZX_REG_PP_PPCTL, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @snd_hdac_updatel(i64 %35, i64 %36, i32 %37, i32 %38)
  br label %54

40:                                               ; preds = %29, %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %48 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AZX_REG_PP_PPCTL, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @snd_hdac_updatel(i64 %49, i64 %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %46, %43, %40
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %5, align 8
  %57 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %59 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  ret void
}

declare dso_local i32 @AZX_PPCTL_PROCEN(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @snd_hdac_updatel(i64, i64, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
