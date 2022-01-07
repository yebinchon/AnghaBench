; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_get_dac_if_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_get_dac_if_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hda_codec*, i64)* @get_dac_if_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_dac_if_single(%struct.hda_codec* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %48, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %21 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @is_dac_already_used(%struct.hda_codec* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %19
  br label %48

35:                                               ; preds = %29
  %36 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @is_reachable_path(%struct.hda_codec* %36, i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i64 0, i64* %3, align 8
  br label %53

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %45, %35
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %13

51:                                               ; preds = %13
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i64 @is_dac_already_used(%struct.hda_codec*, i64) #1

declare dso_local i64 @is_reachable_path(%struct.hda_codec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
