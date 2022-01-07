; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_identify_vsd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_identify_vsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.volStructDesc = type { i32, i32 }

@VSD_STD_ID_CD001 = common dso_local global i32 0, align 4
@VSD_STD_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ISO9660 Boot Record found\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ISO9660 Primary Volume Descriptor found\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"ISO9660 Supplementary Volume Descriptor found\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ISO9660 Volume Partition Descriptor found\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"ISO9660 Volume Descriptor Set Terminator found\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ISO9660 VRS (%u) found\0A\00", align 1
@VSD_STD_ID_BEA01 = common dso_local global i32 0, align 4
@VSD_STD_ID_NSR02 = common dso_local global i32 0, align 4
@VSD_STD_ID_NSR03 = common dso_local global i32 0, align 4
@VSD_STD_ID_BOOT2 = common dso_local global i32 0, align 4
@VSD_STD_ID_CDW02 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.volStructDesc*)* @identify_vsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @identify_vsd(%struct.volStructDesc* %0) #0 {
  %2 = alloca %struct.volStructDesc*, align 8
  %3 = alloca i32, align 4
  store %struct.volStructDesc* %0, %struct.volStructDesc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.volStructDesc*, %struct.volStructDesc** %2, align 8
  %5 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VSD_STD_ID_CD001, align 4
  %8 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %9 = call i32 @memcmp(i32 %6, i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = load %struct.volStructDesc*, %struct.volStructDesc** %2, align 8
  %13 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %25 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %21
    i32 255, label %23
  ]

15:                                               ; preds = %11
  %16 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %30

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %30

19:                                               ; preds = %11
  %20 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %30

21:                                               ; preds = %11
  %22 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %30

23:                                               ; preds = %11
  %24 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %30

25:                                               ; preds = %11
  %26 = load %struct.volStructDesc*, %struct.volStructDesc** %2, align 8
  %27 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %23, %21, %19, %17, %15
  br label %82

31:                                               ; preds = %1
  %32 = load %struct.volStructDesc*, %struct.volStructDesc** %2, align 8
  %33 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VSD_STD_ID_BEA01, align 4
  %36 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %37 = call i32 @memcmp(i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %81

40:                                               ; preds = %31
  %41 = load %struct.volStructDesc*, %struct.volStructDesc** %2, align 8
  %42 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VSD_STD_ID_NSR02, align 4
  %45 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %46 = call i32 @memcmp(i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %80

49:                                               ; preds = %40
  %50 = load %struct.volStructDesc*, %struct.volStructDesc** %2, align 8
  %51 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VSD_STD_ID_NSR03, align 4
  %54 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %55 = call i32 @memcmp(i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %79

58:                                               ; preds = %49
  %59 = load %struct.volStructDesc*, %struct.volStructDesc** %2, align 8
  %60 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VSD_STD_ID_BOOT2, align 4
  %63 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %64 = call i32 @memcmp(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %78

67:                                               ; preds = %58
  %68 = load %struct.volStructDesc*, %struct.volStructDesc** %2, align 8
  %69 = getelementptr inbounds %struct.volStructDesc, %struct.volStructDesc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VSD_STD_ID_CDW02, align 4
  %72 = load i32, i32* @VSD_STD_ID_LEN, align 4
  %73 = call i32 @memcmp(i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  br label %77

76:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %75
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %57
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %80, %39
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @udf_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
