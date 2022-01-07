; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_set_config_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_set_config_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_cmd_set_config_hdr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LABEL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_cmd_set_config_hdr*, i32, i8*)* @nfit_test_cmd_set_config_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_cmd_set_config_data(%struct.nd_cmd_set_config_hdr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_cmd_set_config_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.nd_cmd_set_config_hdr* %0, %struct.nd_cmd_set_config_hdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %16, 12
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @LABEL_SIZE, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %21
  %29 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 12
  %34 = add i64 %33, 4
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %77

41:                                               ; preds = %28
  %42 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %43 = bitcast %struct.nd_cmd_set_config_hdr* %42 to i8*
  %44 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %45 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %43, i64 %47
  %49 = getelementptr i8, i8* %48, i64 12
  %50 = bitcast i8* %49 to i64*
  store i64* %50, i64** %10, align 8
  %51 = load i64*, i64** %10, align 8
  store i64 0, i64* %51, align 8
  %52 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LABEL_SIZE, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub i32 %55, %56
  %58 = call i32 @min(i32 %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  %63 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcpy(i8* %62, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = sub i64 %69, 12
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 4
  %73 = zext i32 %72 to i64
  %74 = sub i64 %70, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %41, %38, %25, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
