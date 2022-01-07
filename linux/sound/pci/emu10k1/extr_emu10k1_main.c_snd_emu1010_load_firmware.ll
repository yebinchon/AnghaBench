; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu1010_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu1010_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.firmware = type { i32 }

@firmware_names = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, i32, %struct.firmware**)* @snd_emu1010_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu1010_load_firmware(%struct.snd_emu10k1* %0, i32 %1, %struct.firmware** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.firmware** %2, %struct.firmware*** %7, align 8
  %10 = load %struct.firmware**, %struct.firmware*** %7, align 8
  %11 = load %struct.firmware*, %struct.firmware** %10, align 8
  %12 = icmp ne %struct.firmware* %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %3
  %14 = load i8***, i8**** @firmware_names, align 8
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8**, i8*** %14, i64 %19
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %47

29:                                               ; preds = %13
  %30 = load %struct.firmware**, %struct.firmware*** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @request_firmware(%struct.firmware** %30, i8* %31, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %44 = load %struct.firmware**, %struct.firmware*** %7, align 8
  %45 = load %struct.firmware*, %struct.firmware** %44, align 8
  %46 = call i32 @snd_emu1010_load_firmware_entry(%struct.snd_emu10k1* %43, %struct.firmware* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %39, %28
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @snd_emu1010_load_firmware_entry(%struct.snd_emu10k1*, %struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
