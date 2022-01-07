; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_next_bits.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_next_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"next_bits invalid n %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i32*, i32)* @next_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_bits(%struct.sw842_param* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sw842_param*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %12 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %15 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 64
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %160

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 64
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @__split_next_bits(%struct.sw842_param* %31, i32* %32, i32 %33, i32 32)
  store i32 %34, i32* %4, align 4
  br label %160

35:                                               ; preds = %27
  %36 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %37 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 32
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp sle i32 %44, 56
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @__split_next_bits(%struct.sw842_param* %47, i32* %48, i32 %49, i32 16)
  store i32 %50, i32* %4, align 4
  br label %160

51:                                               ; preds = %43, %40, %35
  %52 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %53 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 16
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp sle i32 %60, 24
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @__split_next_bits(%struct.sw842_param* %63, i32* %64, i32 %65, i32 8)
  store i32 %66, i32* %4, align 4
  br label %160

67:                                               ; preds = %59, %56, %51
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @DIV_ROUND_UP(i32 %70, i32 8)
  %72 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %73 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EOVERFLOW, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %160

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = icmp sle i32 %80, 8
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 8, %85
  %87 = ashr i32 %84, %86
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %121

89:                                               ; preds = %79
  %90 = load i32, i32* %10, align 4
  %91 = icmp sle i32 %90, 16
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @get_unaligned(i32* %93)
  %95 = call i32 @be16_to_cpu(i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 16, %96
  %98 = ashr i32 %95, %97
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %120

100:                                              ; preds = %89
  %101 = load i32, i32* %10, align 4
  %102 = icmp sle i32 %101, 32
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @get_unaligned(i32* %104)
  %106 = call i32 @be32_to_cpu(i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 32, %107
  %109 = ashr i32 %106, %108
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  br label %119

111:                                              ; preds = %100
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @get_unaligned(i32* %112)
  %114 = call i32 @be64_to_cpu(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 64, %115
  %117 = ashr i32 %114, %116
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %111, %103
  br label %120

120:                                              ; preds = %119, %92
  br label %121

121:                                              ; preds = %120, %82
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @GENMASK_ULL(i32 %123, i32 0)
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %124
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %130 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %134 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 7
  br i1 %136, label %137, label %159

137:                                              ; preds = %121
  %138 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %139 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 8
  %142 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %143 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = sext i32 %141 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %143, align 8
  %147 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %148 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sdiv i32 %149, 8
  %151 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %152 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %156 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = srem i32 %157, 8
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %137, %121
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %76, %62, %46, %30, %22
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @__split_next_bits(%struct.sw842_param*, i32*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
