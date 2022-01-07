; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_str_tkn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_str_tkn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_tplg_vendor_array = type { i32, i64 }
%struct.skl_dev = type { i32 }
%struct.snd_soc_tplg_vendor_string_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_tplg_vendor_array*, %struct.skl_dev*)* @skl_tplg_get_str_tkn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_get_str_tkn(%struct.device* %0, %struct.snd_soc_tplg_vendor_array* %1, %struct.skl_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_soc_tplg_vendor_array*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_tplg_vendor_string_elem*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.snd_soc_tplg_vendor_array* %1, %struct.snd_soc_tplg_vendor_array** %6, align 8
  store %struct.skl_dev* %2, %struct.skl_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.snd_soc_tplg_vendor_string_elem*
  store %struct.snd_soc_tplg_vendor_string_elem* %14, %struct.snd_soc_tplg_vendor_string_elem** %10, align 8
  br label %15

15:                                               ; preds = %32, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.snd_soc_tplg_vendor_string_elem*, %struct.snd_soc_tplg_vendor_string_elem** %10, align 8
  %24 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %25 = call i32 @skl_tplg_fill_str_mfest_tkn(%struct.device* %22, %struct.snd_soc_tplg_vendor_string_elem* %23, %struct.skl_dev* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_soc_tplg_vendor_string_elem*, %struct.snd_soc_tplg_vendor_string_elem** %10, align 8
  %27 = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem, %struct.snd_soc_tplg_vendor_string_elem* %26, i32 1
  store %struct.snd_soc_tplg_vendor_string_elem* %27, %struct.snd_soc_tplg_vendor_string_elem** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @skl_tplg_fill_str_mfest_tkn(%struct.device*, %struct.snd_soc_tplg_vendor_string_elem*, %struct.skl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
