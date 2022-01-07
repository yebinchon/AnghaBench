; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_alloc_link_mem.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_alloc_link_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SMC_WR_BUF_CNT = common dso_local global i32 0, align 4
@SMC_WR_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_wr_alloc_link_mem(%struct.smc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smc_link*, align 8
  store %struct.smc_link* %0, %struct.smc_link** %3, align 8
  %4 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %5 = load i32, i32* @SMC_WR_BUF_SIZE, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kcalloc(i32 %4, i32 %5, i32 %6)
  %8 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %9 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %11 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %165

15:                                               ; preds = %1
  %16 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %17 = mul nsw i32 %16, 3
  %18 = load i32, i32* @SMC_WR_BUF_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kcalloc(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %22 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %24 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %160

28:                                               ; preds = %15
  %29 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kcalloc(i32 %29, i32 1, i32 %30)
  %32 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %33 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %35 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %155

39:                                               ; preds = %28
  %40 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %41 = mul nsw i32 %40, 3
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kcalloc(i32 %41, i32 1, i32 %42)
  %44 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %45 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %47 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %150

51:                                               ; preds = %39
  %52 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kcalloc(i32 %52, i32 1, i32 %53)
  %55 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %56 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %58 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %145

62:                                               ; preds = %51
  %63 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kcalloc(i32 %63, i32 1, i32 %64)
  %66 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %67 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %69 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %68, i32 0, i32 5
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %140

73:                                               ; preds = %62
  %74 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kcalloc(i32 %74, i32 1, i32 %75)
  %77 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %78 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  %79 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %80 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %79, i32 0, i32 6
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %135

84:                                               ; preds = %73
  %85 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %86 = mul nsw i32 %85, 3
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @kcalloc(i32 %86, i32 1, i32 %87)
  %89 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %90 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %92 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %91, i32 0, i32 7
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %84
  br label %130

96:                                               ; preds = %84
  %97 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %98 = call i32 @BITS_TO_LONGS(i32 %97)
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kcalloc(i32 %98, i32 1, i32 %99)
  %101 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %102 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  %103 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %104 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %103, i32 0, i32 8
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  br label %125

108:                                              ; preds = %96
  %109 = load i32, i32* @SMC_WR_BUF_CNT, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @kcalloc(i32 %109, i32 1, i32 %110)
  %112 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %113 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %112, i32 0, i32 9
  store i8* %111, i8** %113, align 8
  %114 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %115 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %114, i32 0, i32 9
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  br label %120

119:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %168

120:                                              ; preds = %118
  %121 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %122 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %121, i32 0, i32 8
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @kfree(i8* %123)
  br label %125

125:                                              ; preds = %120, %107
  %126 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %127 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %126, i32 0, i32 7
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @kfree(i8* %128)
  br label %130

130:                                              ; preds = %125, %95
  %131 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %132 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %131, i32 0, i32 6
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @kfree(i8* %133)
  br label %135

135:                                              ; preds = %130, %83
  %136 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %137 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %136, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @kfree(i8* %138)
  br label %140

140:                                              ; preds = %135, %72
  %141 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %142 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %141, i32 0, i32 4
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @kfree(i8* %143)
  br label %145

145:                                              ; preds = %140, %61
  %146 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %147 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @kfree(i8* %148)
  br label %150

150:                                              ; preds = %145, %50
  %151 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %152 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @kfree(i8* %153)
  br label %155

155:                                              ; preds = %150, %38
  %156 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %157 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @kfree(i8* %158)
  br label %160

160:                                              ; preds = %155, %27
  %161 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %162 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @kfree(i8* %163)
  br label %165

165:                                              ; preds = %160, %14
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %165, %119
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
