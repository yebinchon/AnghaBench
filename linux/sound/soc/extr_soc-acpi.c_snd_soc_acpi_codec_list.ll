; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-acpi.c_snd_soc_acpi_codec_list.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-acpi.c_snd_soc_acpi_codec_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_acpi_mach = type { i32* }
%struct.snd_soc_acpi_codecs = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_soc_acpi_mach* @snd_soc_acpi_codec_list(i8* %0) #0 {
  %2 = alloca %struct.snd_soc_acpi_mach*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_soc_acpi_mach*, align 8
  %5 = alloca %struct.snd_soc_acpi_codecs*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.snd_soc_acpi_mach*
  store %struct.snd_soc_acpi_mach* %8, %struct.snd_soc_acpi_mach** %4, align 8
  %9 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to %struct.snd_soc_acpi_codecs*
  store %struct.snd_soc_acpi_codecs* %12, %struct.snd_soc_acpi_codecs** %5, align 8
  %13 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  store %struct.snd_soc_acpi_mach* %18, %struct.snd_soc_acpi_mach** %2, align 8
  br label %43

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.snd_soc_acpi_codecs*, %struct.snd_soc_acpi_codecs** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_acpi_codecs, %struct.snd_soc_acpi_codecs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.snd_soc_acpi_codecs*, %struct.snd_soc_acpi_codecs** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_acpi_codecs, %struct.snd_soc_acpi_codecs* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @acpi_dev_present(i32 %33, i32* null, i32 -1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store %struct.snd_soc_acpi_mach* null, %struct.snd_soc_acpi_mach** %2, align 8
  br label %43

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %20

41:                                               ; preds = %20
  %42 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %4, align 8
  store %struct.snd_soc_acpi_mach* %42, %struct.snd_soc_acpi_mach** %2, align 8
  br label %43

43:                                               ; preds = %41, %36, %17
  %44 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %2, align 8
  ret %struct.snd_soc_acpi_mach* %44
}

declare dso_local i32 @acpi_dev_present(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
