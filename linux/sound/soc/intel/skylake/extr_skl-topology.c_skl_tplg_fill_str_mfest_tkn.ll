; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_str_mfest_tkn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_str_mfest_tkn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_tplg_vendor_string_elem = type { i32, i32 }
%struct.skl_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@skl_tplg_fill_str_mfest_tkn.ref_count = internal global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Not a string token %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_tplg_vendor_string_elem*, %struct.skl_dev*)* @skl_tplg_fill_str_mfest_tkn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_fill_str_mfest_tkn(%struct.device* %0, %struct.snd_soc_tplg_vendor_string_elem* %1, %struct.skl_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_soc_tplg_vendor_string_elem*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.snd_soc_tplg_vendor_string_elem* %1, %struct.snd_soc_tplg_vendor_string_elem** %6, align 8
  store %struct.skl_dev* %2, %struct.skl_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.snd_soc_tplg_vendor_string_elem*, %struct.snd_soc_tplg_vendor_string_elem** %6, align 8
  %10 = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem, %struct.snd_soc_tplg_vendor_string_elem* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %46 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @skl_tplg_fill_str_mfest_tkn.ref_count, align 4
  %14 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %15 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = icmp sgt i32 %13, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  store i32 0, i32* @skl_tplg_fill_str_mfest_tkn.ref_count, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %56

22:                                               ; preds = %12
  %23 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %24 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* @skl_tplg_fill_str_mfest_tkn.ref_count, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_soc_tplg_vendor_string_elem*, %struct.snd_soc_tplg_vendor_string_elem** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem, %struct.snd_soc_tplg_vendor_string_elem* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %35 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* @skl_tplg_fill_str_mfest_tkn.ref_count, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @strncpy(i32 %30, i32 %33, i32 %42)
  %44 = load i32, i32* @skl_tplg_fill_str_mfest_tkn.ref_count, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @skl_tplg_fill_str_mfest_tkn.ref_count, align 4
  br label %52

46:                                               ; preds = %3
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.snd_soc_tplg_vendor_string_elem*, %struct.snd_soc_tplg_vendor_string_elem** %6, align 8
  %49 = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem, %struct.snd_soc_tplg_vendor_string_elem* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %22
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
