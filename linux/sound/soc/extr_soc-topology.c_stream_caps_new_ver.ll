; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_stream_caps_new_ver.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_stream_caps_new_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_tplg_stream_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_tplg_stream_caps_v4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps_v4*)* @stream_caps_new_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_caps_new_ver(%struct.snd_soc_tplg_stream_caps* %0, %struct.snd_soc_tplg_stream_caps_v4* %1) #0 {
  %3 = alloca %struct.snd_soc_tplg_stream_caps*, align 8
  %4 = alloca %struct.snd_soc_tplg_stream_caps_v4*, align 8
  store %struct.snd_soc_tplg_stream_caps* %0, %struct.snd_soc_tplg_stream_caps** %3, align 8
  store %struct.snd_soc_tplg_stream_caps_v4* %1, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %5 = call i32 @cpu_to_le32(i32 56)
  %6 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %6, i32 0, i32 13
  store i32 %5, i32* %7, align 4
  %8 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %15 = call i32 @memcpy(i32 %10, i32 %13, i32 %14)
  %16 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %25 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %27 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %30 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %40 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %42 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %45 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %50 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %57 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %60 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %62 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %67 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %70 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.snd_soc_tplg_stream_caps_v4*, %struct.snd_soc_tplg_stream_caps_v4** %4, align 8
  %72 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps_v4, %struct.snd_soc_tplg_stream_caps_v4* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %3, align 8
  %75 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
