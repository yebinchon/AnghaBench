; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_process_coef_fw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_process_coef_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.coef_fw = type { i16, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.coef_fw*)* @alc_process_coef_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_process_coef_fw(%struct.hda_codec* %0, %struct.coef_fw* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.coef_fw*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.coef_fw* %1, %struct.coef_fw** %4, align 8
  br label %5

5:                                                ; preds = %44, %2
  %6 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %7 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %5
  %11 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %12 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = icmp eq i32 %14, 65535
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %19 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %22 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %25 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @alc_write_coefex_idx(%struct.hda_codec* %17, i64 %20, i32 %23, i32 %26)
  br label %43

28:                                               ; preds = %10
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %31 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %34 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %37 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 8
  %39 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %40 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @alc_update_coefex_idx(%struct.hda_codec* %29, i64 %32, i32 %35, i16 zeroext %38, i32 %41)
  br label %43

43:                                               ; preds = %28, %16
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.coef_fw*, %struct.coef_fw** %4, align 8
  %46 = getelementptr inbounds %struct.coef_fw, %struct.coef_fw* %45, i32 1
  store %struct.coef_fw* %46, %struct.coef_fw** %4, align 8
  br label %5

47:                                               ; preds = %5
  ret void
}

declare dso_local i32 @alc_write_coefex_idx(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @alc_update_coefex_idx(%struct.hda_codec*, i64, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
