; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_vrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_vrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_options = type { i32, i32, i64, i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_sb_info = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"Bad block size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"No VRS found\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"Failed to read sector at offset %d. Assuming open disc. Skipping validity check\0A\00", align 1
@VSD_FIRST_SECTOR_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Validity check skipped because of novrs option\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"No anchor found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.udf_options*, i32, %struct.kernel_lb_addr*)* @udf_load_vrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_vrs(%struct.super_block* %0, %struct.udf_options* %1, i32 %2, %struct.kernel_lb_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.udf_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca %struct.udf_sb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.udf_options* %1, %struct.udf_options** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.kernel_lb_addr* %3, %struct.kernel_lb_addr** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %13)
  store %struct.udf_sb_info* %14, %struct.udf_sb_info** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = load %struct.udf_options*, %struct.udf_options** %7, align 8
  %17 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @sb_set_blocksize(%struct.super_block* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = call i32 @udf_warn(%struct.super_block* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %98

30:                                               ; preds = %4
  %31 = load %struct.udf_options*, %struct.udf_options** %7, align 8
  %32 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %35 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.udf_options*, %struct.udf_options** %7, align 8
  %37 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %30
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = call i32 @udf_check_vsd(%struct.super_block* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.super_block*, %struct.super_block** %6, align 8
  %50 = call i32 @udf_warn(%struct.super_block* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %98

54:                                               ; preds = %40
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @VSD_FIRST_SECTOR_OFFSET, align 4
  %59 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %62 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = call i64 @udf_get_last_block(%struct.super_block* %66)
  %68 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %69 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %73

71:                                               ; preds = %30
  %72 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %70
  %74 = load %struct.udf_options*, %struct.udf_options** %7, align 8
  %75 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %78 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %81 = call i32 @udf_find_anchor(%struct.super_block* %79, %struct.kernel_lb_addr* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @EAGAIN, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.super_block*, %struct.super_block** %6, align 8
  %94 = call i32 @udf_warn(%struct.super_block* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %87, %84
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %98

97:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %95, %51, %27
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @udf_warn(%struct.super_block*, i8*) #1

declare dso_local i32 @udf_check_vsd(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, ...) #1

declare dso_local i64 @udf_get_last_block(%struct.super_block*) #1

declare dso_local i32 @udf_find_anchor(%struct.super_block*, %struct.kernel_lb_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
