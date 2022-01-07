; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_command.c_snd_efw_command_get_hwinfo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_command.c_snd_efw_command_get_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32 }
%struct.snd_efw_hwinfo = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EFC_CAT_HWINFO = common dso_local global i32 0, align 4
@EFC_CMD_HWINFO_GET_CAPS = common dso_local global i32 0, align 4
@HWINFO_NAME_SIZE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_efw_command_get_hwinfo(%struct.snd_efw* %0, %struct.snd_efw_hwinfo* %1) #0 {
  %3 = alloca %struct.snd_efw*, align 8
  %4 = alloca %struct.snd_efw_hwinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %3, align 8
  store %struct.snd_efw_hwinfo* %1, %struct.snd_efw_hwinfo** %4, align 8
  %6 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %7 = load i32, i32* @EFC_CAT_HWINFO, align 4
  %8 = load i32, i32* @EFC_CMD_HWINFO_GET_CAPS, align 4
  %9 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %10 = bitcast %struct.snd_efw_hwinfo* %9 to i32*
  %11 = call i32 @efw_transaction(%struct.snd_efw* %6, i32 %7, i32 %8, i32* null, i32 0, i32* %10, i32 120)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %105

15:                                               ; preds = %2
  %16 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %17 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %16, i32 0, i32 26
  %18 = call i32 @be32_to_cpus(i32* %17)
  %19 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %20 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %19, i32 0, i32 25
  %21 = call i32 @be32_to_cpus(i32* %20)
  %22 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %23 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %22, i32 0, i32 24
  %24 = call i32 @be32_to_cpus(i32* %23)
  %25 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %26 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %25, i32 0, i32 23
  %27 = call i32 @be32_to_cpus(i32* %26)
  %28 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %29 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %28, i32 0, i32 22
  %30 = call i32 @be32_to_cpus(i32* %29)
  %31 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %32 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %31, i32 0, i32 21
  %33 = call i32 @be32_to_cpus(i32* %32)
  %34 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %35 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %34, i32 0, i32 20
  %36 = call i32 @be32_to_cpus(i32* %35)
  %37 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %38 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %37, i32 0, i32 19
  %39 = call i32 @be32_to_cpus(i32* %38)
  %40 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %41 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %40, i32 0, i32 18
  %42 = call i32 @be32_to_cpus(i32* %41)
  %43 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %44 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %43, i32 0, i32 17
  %45 = call i32 @be32_to_cpus(i32* %44)
  %46 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %47 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %46, i32 0, i32 16
  %48 = call i32 @be32_to_cpus(i32* %47)
  %49 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %50 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %49, i32 0, i32 15
  %51 = call i32 @be32_to_cpus(i32* %50)
  %52 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %53 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %52, i32 0, i32 14
  %54 = call i32 @be32_to_cpus(i32* %53)
  %55 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %56 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %55, i32 0, i32 13
  %57 = call i32 @be32_to_cpus(i32* %56)
  %58 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %59 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %58, i32 0, i32 12
  %60 = call i32 @be32_to_cpus(i32* %59)
  %61 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %62 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %61, i32 0, i32 11
  %63 = call i32 @be32_to_cpus(i32* %62)
  %64 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %65 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %64, i32 0, i32 10
  %66 = call i32 @be32_to_cpus(i32* %65)
  %67 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %68 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %67, i32 0, i32 9
  %69 = call i32 @be32_to_cpus(i32* %68)
  %70 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %71 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %70, i32 0, i32 8
  %72 = call i32 @be32_to_cpus(i32* %71)
  %73 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %74 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %73, i32 0, i32 7
  %75 = call i32 @be32_to_cpus(i32* %74)
  %76 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %77 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %76, i32 0, i32 6
  %78 = call i32 @be32_to_cpus(i32* %77)
  %79 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %80 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %79, i32 0, i32 5
  %81 = call i32 @be32_to_cpus(i32* %80)
  %82 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %83 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %82, i32 0, i32 4
  %84 = call i32 @be32_to_cpus(i32* %83)
  %85 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %86 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %85, i32 0, i32 3
  %87 = call i32 @be32_to_cpus(i32* %86)
  %88 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %89 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %88, i32 0, i32 2
  %90 = call i32 @be32_to_cpus(i32* %89)
  %91 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %92 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @HWINFO_NAME_SIZE_BYTES, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %4, align 8
  %99 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @HWINFO_NAME_SIZE_BYTES, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %15, %14
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @efw_transaction(%struct.snd_efw*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
