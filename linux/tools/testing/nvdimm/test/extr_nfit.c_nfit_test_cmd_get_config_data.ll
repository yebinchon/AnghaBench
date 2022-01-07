; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_get_config_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_get_config_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_cmd_get_config_data_hdr = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@LABEL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_cmd_get_config_data_hdr*, i32, i8*)* @nfit_test_cmd_get_config_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_cmd_get_config_data(%struct.nd_cmd_get_config_data_hdr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_cmd_get_config_data_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nd_cmd_get_config_data_hdr* %0, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %15, 24
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @LABEL_SIZE, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %20
  %28 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 24
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %66

39:                                               ; preds = %27
  %40 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LABEL_SIZE, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %45, %46
  %48 = call i32 @min(i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @memcpy(i32 %51, i8* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = sub i64 %59, 24
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %39, %36, %24, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
