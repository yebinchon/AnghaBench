; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_init_algo_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_init_algo_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.soc_bytes_ext = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.skl_algo_data* }
%struct.skl_algo_data = type { i32, i32, i8*, i32, i32 }
%struct.snd_soc_tplg_bytes_control = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.skl_dfw_algo_data = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.soc_bytes_ext*, %struct.snd_soc_tplg_bytes_control*)* @skl_init_algo_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_init_algo_data(%struct.device* %0, %struct.soc_bytes_ext* %1, %struct.snd_soc_tplg_bytes_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.soc_bytes_ext*, align 8
  %7 = alloca %struct.snd_soc_tplg_bytes_control*, align 8
  %8 = alloca %struct.skl_algo_data*, align 8
  %9 = alloca %struct.skl_dfw_algo_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.soc_bytes_ext* %1, %struct.soc_bytes_ext** %6, align 8
  store %struct.snd_soc_tplg_bytes_control* %2, %struct.snd_soc_tplg_bytes_control** %7, align 8
  %10 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.skl_dfw_algo_data*
  store %struct.skl_dfw_algo_data* %14, %struct.skl_dfw_algo_data** %9, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(%struct.device* %15, i32 24, i32 %16)
  %18 = bitcast i8* %17 to %struct.skl_algo_data*
  store %struct.skl_algo_data* %18, %struct.skl_algo_data** %8, align 8
  %19 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %20 = icmp ne %struct.skl_algo_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.skl_dfw_algo_data*, %struct.skl_dfw_algo_data** %9, align 8
  %26 = getelementptr inbounds %struct.skl_dfw_algo_data, %struct.skl_dfw_algo_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %29 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.skl_dfw_algo_data*, %struct.skl_dfw_algo_data** %9, align 8
  %31 = getelementptr inbounds %struct.skl_dfw_algo_data, %struct.skl_dfw_algo_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %34 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.skl_dfw_algo_data*, %struct.skl_dfw_algo_data** %9, align 8
  %36 = getelementptr inbounds %struct.skl_dfw_algo_data, %struct.skl_dfw_algo_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %39 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.skl_dfw_algo_data*, %struct.skl_dfw_algo_data** %9, align 8
  %41 = getelementptr inbounds %struct.skl_dfw_algo_data, %struct.skl_dfw_algo_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %44 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %46 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %24
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %52 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @devm_kzalloc(%struct.device* %50, i32 %53, i32 %54)
  %56 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %57 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %59 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %81

65:                                               ; preds = %49
  %66 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %67 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.skl_dfw_algo_data*, %struct.skl_dfw_algo_data** %9, align 8
  %70 = getelementptr inbounds %struct.skl_dfw_algo_data, %struct.skl_dfw_algo_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %73 = getelementptr inbounds %struct.skl_algo_data, %struct.skl_algo_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i8* %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %65, %24
  %77 = load %struct.skl_algo_data*, %struct.skl_algo_data** %8, align 8
  %78 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %79 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store %struct.skl_algo_data* %77, %struct.skl_algo_data** %80, align 8
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %62, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
