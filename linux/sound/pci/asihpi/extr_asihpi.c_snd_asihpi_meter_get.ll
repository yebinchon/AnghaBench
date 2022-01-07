; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_meter_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_meter_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }

@HPI_MAX_CHANNELS = common dso_local global i32 0, align 4
@log2lin = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_asihpi_meter_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_meter_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @HPI_MAX_CHANNELS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i16, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @hpi_meter_get_peak(i32 %17, i16* %16)
  store i64 %18, i64* %9, align 8
  store i16 0, i16* %8, align 2
  br label %19

19:                                               ; preds = %80, %2
  %20 = load i16, i16* %8, align 2
  %21 = sext i16 %20 to i32
  %22 = load i32, i32* @HPI_MAX_CHANNELS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %19
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i16*, i16** %31, align 8
  %33 = load i16, i16* %8, align 2
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  store i16 0, i16* %35, align 2
  br label %79

36:                                               ; preds = %24
  %37 = load i16, i16* %8, align 2
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds i16, i16* %16, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load i16, i16* %8, align 2
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i16, i16* %16, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = shl i32 %48, 16
  %50 = trunc i32 %49 to i16
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i16*, i16** %54, align 8
  %56 = load i16, i16* %8, align 2
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds i16, i16* %55, i64 %57
  store i16 %50, i16* %58, align 2
  br label %78

59:                                               ; preds = %36
  %60 = load i16*, i16** @log2lin, align 8
  %61 = load i16, i16* %8, align 2
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds i16, i16* %16, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i32
  %66 = sdiv i32 %65, -1000
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %60, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i16*, i16** %73, align 8
  %75 = load i16, i16* %8, align 2
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  store i16 %69, i16* %77, align 2
  br label %78

78:                                               ; preds = %59, %43
  br label %79

79:                                               ; preds = %78, %27
  br label %80

80:                                               ; preds = %79
  %81 = load i16, i16* %8, align 2
  %82 = add i16 %81, 1
  store i16 %82, i16* %8, align 2
  br label %19

83:                                               ; preds = %19
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hpi_meter_get_peak(i32, i16*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
