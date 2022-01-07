; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_parse_fw_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_parse_fw_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32 }
%struct.list_head = type { i32 }
%struct.fw_module_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sst_drv*, i64, %struct.list_head*)* @sst_parse_fw_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_parse_fw_memcpy(%struct.intel_sst_drv* %0, i64 %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sst_drv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.fw_module_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %12 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @sst_validate_fw_image(%struct.intel_sst_drv* %12, i64 %13, %struct.fw_module_header** %8, i64* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %26 = load %struct.fw_module_header*, %struct.fw_module_header** %8, align 8
  %27 = load %struct.list_head*, %struct.list_head** %7, align 8
  %28 = call i32 @sst_parse_module_memcpy(%struct.intel_sst_drv* %25, %struct.fw_module_header* %26, %struct.list_head* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %24
  %34 = load %struct.fw_module_header*, %struct.fw_module_header** %8, align 8
  %35 = bitcast %struct.fw_module_header* %34 to i8*
  %36 = getelementptr i8, i8* %35, i64 4
  %37 = load %struct.fw_module_header*, %struct.fw_module_header** %8, align 8
  %38 = getelementptr inbounds %struct.fw_module_header, %struct.fw_module_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %36, i64 %40
  %42 = bitcast i8* %41 to %struct.fw_module_header*
  store %struct.fw_module_header* %42, %struct.fw_module_header** %8, align 8
  br label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %20

46:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %31, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @sst_validate_fw_image(%struct.intel_sst_drv*, i64, %struct.fw_module_header**, i64*) #1

declare dso_local i32 @sst_parse_module_memcpy(%struct.intel_sst_drv*, %struct.fw_module_header*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
