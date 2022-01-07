; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_parse_aes_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_parse_aes_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS = common dso_local global i32 0, align 4
@XLNX_PARAM_UNKNOWN = common dso_local global i32 0, align 4
@IEC958_AES2_PRO_SBITS = common dso_local global i32 0, align 4
@IEC958_AES2_PRO_WORDLEN = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS = common dso_local global i32 0, align 4
@IEC958_AES4_CON_MAX_WORDLEN_24 = common dso_local global i32 0, align 4
@IEC958_AES4_CON_WORDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sample rate = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"sample rate = unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bit_depth = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bit_depth = unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.device*)* @xlnx_parse_aes_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlnx_parse_aes_params(i32 %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.device* %2, %struct.device** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEC958_AES0_PRO_FS, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %31 [
    i32 146, label %27
    i32 145, label %28
    i32 147, label %29
    i32 144, label %30
  ]

27:                                               ; preds = %15
  store i32 44100, i32* %8, align 4
  br label %33

28:                                               ; preds = %15
  store i32 48000, i32* %8, align 4
  br label %33

29:                                               ; preds = %15
  store i32 32000, i32* %8, align 4
  br label %33

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %15, %30
  %32 = load i32, i32* @XLNX_PARAM_UNKNOWN, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %29, %28, %27
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEC958_AES2_PRO_SBITS, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %40 [
    i32 137, label %38
    i32 143, label %38
    i32 142, label %39
  ]

38:                                               ; preds = %33, %33
  store i32 0, i32* %7, align 4
  br label %42

39:                                               ; preds = %33
  store i32 4, i32* %7, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @XLNX_PARAM_UNKNOWN, align 4
  store i32 %41, i32* %9, align 4
  br label %113

42:                                               ; preds = %39, %38
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IEC958_AES2_PRO_WORDLEN, align 4
  %46 = and i32 %44, %45
  switch i32 %46, label %60 [
    i32 141, label %47
    i32 140, label %50
    i32 139, label %53
    i32 138, label %56
    i32 137, label %59
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 16, %48
  store i32 %49, i32* %9, align 4
  br label %62

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 18, %51
  store i32 %52, i32* %9, align 4
  br label %62

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 19, %54
  store i32 %55, i32* %9, align 4
  br label %62

56:                                               ; preds = %42
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 20, %57
  store i32 %58, i32* %9, align 4
  br label %62

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %42, %59
  %61 = load i32, i32* @XLNX_PARAM_UNKNOWN, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %56, %53, %50, %47
  br label %112

63:                                               ; preds = %3
  %64 = load i32, i32* %4, align 4
  %65 = ashr i32 %64, 24
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 255
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IEC958_AES3_CON_FS, align 4
  %74 = and i32 %72, %73
  switch i32 %74, label %78 [
    i32 135, label %75
    i32 134, label %76
    i32 136, label %77
  ]

75:                                               ; preds = %63
  store i32 44100, i32* %8, align 4
  br label %80

76:                                               ; preds = %63
  store i32 48000, i32* %8, align 4
  br label %80

77:                                               ; preds = %63
  store i32 32000, i32* %8, align 4
  br label %80

78:                                               ; preds = %63
  %79 = load i32, i32* @XLNX_PARAM_UNKNOWN, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %77, %76, %75
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IEC958_AES4_CON_MAX_WORDLEN_24, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 4, i32* %7, align 4
  br label %88

87:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IEC958_AES4_CON_WORDLEN, align 4
  %92 = and i32 %90, %91
  switch i32 %92, label %109 [
    i32 133, label %93
    i32 131, label %96
    i32 130, label %99
    i32 129, label %102
    i32 132, label %105
    i32 128, label %108
  ]

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 16, %94
  store i32 %95, i32* %9, align 4
  br label %111

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 18, %97
  store i32 %98, i32* %9, align 4
  br label %111

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 19, %100
  store i32 %101, i32* %9, align 4
  br label %111

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 20, %103
  store i32 %104, i32* %9, align 4
  br label %111

105:                                              ; preds = %88
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 17, %106
  store i32 %107, i32* %9, align 4
  br label %111

108:                                              ; preds = %88
  br label %109

109:                                              ; preds = %88, %108
  %110 = load i32, i32* @XLNX_PARAM_UNKNOWN, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %105, %102, %99, %96, %93
  br label %112

112:                                              ; preds = %111, %62
  br label %113

113:                                              ; preds = %112, %40
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @XLNX_PARAM_UNKNOWN, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %124

121:                                              ; preds = %113
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %117
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @XLNX_PARAM_UNKNOWN, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %135

132:                                              ; preds = %124
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %128
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
