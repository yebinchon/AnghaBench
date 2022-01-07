; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_call_jack_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_call_jack_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { %struct.hda_jack_callback*, i64 }
%struct.hda_jack_callback = type { i32, i32 (%struct.hda_codec.0*, %struct.hda_jack_callback*)*, %struct.hda_jack_tbl*, %struct.hda_jack_callback* }
%struct.hda_codec.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, %struct.hda_jack_tbl*)* @call_jack_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_jack_callback(%struct.hda_codec* %0, i32 %1, %struct.hda_jack_tbl* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_jack_tbl*, align 8
  %7 = alloca %struct.hda_jack_callback*, align 8
  %8 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hda_jack_tbl* %2, %struct.hda_jack_tbl** %6, align 8
  %9 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %10 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %9, i32 0, i32 0
  %11 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %10, align 8
  store %struct.hda_jack_callback* %11, %struct.hda_jack_callback** %7, align 8
  br label %12

12:                                               ; preds = %29, %3
  %13 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %14 = icmp ne %struct.hda_jack_callback* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %17 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %18 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %17, i32 0, i32 2
  store %struct.hda_jack_tbl* %16, %struct.hda_jack_tbl** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %21 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %23 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %22, i32 0, i32 1
  %24 = load i32 (%struct.hda_codec.0*, %struct.hda_jack_callback*)*, i32 (%struct.hda_codec.0*, %struct.hda_jack_callback*)** %23, align 8
  %25 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %26 = bitcast %struct.hda_codec* %25 to %struct.hda_codec.0*
  %27 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %28 = call i32 %24(%struct.hda_codec.0* %26, %struct.hda_jack_callback* %27)
  br label %29

29:                                               ; preds = %15
  %30 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %31 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %30, i32 0, i32 3
  %32 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %31, align 8
  store %struct.hda_jack_callback* %32, %struct.hda_jack_callback** %7, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %35 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %33
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %41 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %39, i64 %42)
  store %struct.hda_jack_tbl* %43, %struct.hda_jack_tbl** %8, align 8
  %44 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %45 = icmp ne %struct.hda_jack_tbl* %44, null
  br i1 %45, label %46, label %72

46:                                               ; preds = %38
  %47 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %48 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %47, i32 0, i32 0
  %49 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %48, align 8
  store %struct.hda_jack_callback* %49, %struct.hda_jack_callback** %7, align 8
  br label %50

50:                                               ; preds = %67, %46
  %51 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %52 = icmp ne %struct.hda_jack_callback* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %55 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %56 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %55, i32 0, i32 2
  store %struct.hda_jack_tbl* %54, %struct.hda_jack_tbl** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %59 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %61 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %60, i32 0, i32 1
  %62 = load i32 (%struct.hda_codec.0*, %struct.hda_jack_callback*)*, i32 (%struct.hda_codec.0*, %struct.hda_jack_callback*)** %61, align 8
  %63 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %64 = bitcast %struct.hda_codec* %63 to %struct.hda_codec.0*
  %65 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %66 = call i32 %62(%struct.hda_codec.0* %64, %struct.hda_jack_callback* %65)
  br label %67

67:                                               ; preds = %53
  %68 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %7, align 8
  %69 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %68, i32 0, i32 3
  %70 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %69, align 8
  store %struct.hda_jack_callback* %70, %struct.hda_jack_callback** %7, align 8
  br label %50

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %38
  br label %73

73:                                               ; preds = %72, %33
  ret void
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
