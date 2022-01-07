; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_bus.c_snd_hdac_bus_exec_verb_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_bus.c_snd_hdac_bus_exec_verb_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.hdac_bus*, i32)*, i32 (%struct.hdac_bus*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_bus_exec_verb_unlocked(%struct.hdac_bus* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %83

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  store i32 -1, i32* %21, align 4
  br label %29

22:                                               ; preds = %17
  %23 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %24 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32* %10, i32** %9, align 8
  br label %28

28:                                               ; preds = %27, %22
  br label %29

29:                                               ; preds = %28, %20
  br label %30

30:                                               ; preds = %59, %29
  %31 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @trace_hda_send_cmd(%struct.hdac_bus* %31, i32 %32)
  %34 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %35 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.hdac_bus*, i32)*, i32 (%struct.hdac_bus*, i32)** %37, align 8
  %39 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 %38(%struct.hdac_bus* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %60

47:                                               ; preds = %30
  %48 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %49 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (%struct.hdac_bus*, i32, i32*)*, i32 (%struct.hdac_bus*, i32, i32*)** %51, align 8
  %53 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %52(%struct.hdac_bus* %53, i32 %54, i32* %10)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %60

59:                                               ; preds = %47
  br label %30

60:                                               ; preds = %58, %46
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %68 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.hdac_bus*, i32, i32*)*, i32 (%struct.hdac_bus*, i32, i32*)** %70, align 8
  %72 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 %71(%struct.hdac_bus* %72, i32 %73, i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @trace_hda_get_response(%struct.hdac_bus* %76, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %66, %63, %60
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %14
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @trace_hda_send_cmd(%struct.hdac_bus*, i32) #1

declare dso_local i32 @trace_hda_get_response(%struct.hdac_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
