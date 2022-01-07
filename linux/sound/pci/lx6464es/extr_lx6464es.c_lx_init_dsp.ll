; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_init_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_init_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"->lx_init_dsp\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"initialize board\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"testing board\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"initialize ethersound configuration\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"mac address ready read after: %dms\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"mac address: %02X.%02X.%02X.%02X.%02X.%02X\0A\00", align 1
@MICROBLAZE_IBL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*)* @lx_init_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_init_dsp(%struct.lx6464es* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  %6 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %7 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %13 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %19 = call i32 @lx_init_xilinx_reset(%struct.lx6464es* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %171

24:                                               ; preds = %1
  %25 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %26 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %32 = call i32 @lx_init_xilinx_test(%struct.lx6464es* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %171

37:                                               ; preds = %24
  %38 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %39 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %45 = call i32 @lx_init_ethersound_config(%struct.lx6464es* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %171

50:                                               ; preds = %37
  %51 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %52 = call i32 @lx_irq_enable(%struct.lx6464es* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %108, %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 1000
  br i1 %55, label %56, label %111

56:                                               ; preds = %53
  %57 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %58 = call i32 @lx_dsp_get_mac(%struct.lx6464es* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %171

63:                                               ; preds = %56
  %64 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %65 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %105, label %70

70:                                               ; preds = %63
  %71 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %72 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %70
  %78 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %79 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %77
  %85 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %86 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %84
  %92 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %93 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %100 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98, %91, %84, %77, %70, %63
  br label %114

106:                                              ; preds = %98
  %107 = call i32 @msleep(i32 1)
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %53

111:                                              ; preds = %53
  %112 = load i32, i32* @ETIMEDOUT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %171

114:                                              ; preds = %105
  %115 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %116 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 (i32, i8*, ...) @dev_dbg(i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %123 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %128 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %133 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %138 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %143 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %148 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 4
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %153 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 5
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @dev_info(i32 %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %131, i64 %136, i64 %141, i64 %146, i64 %151, i64 %156)
  %158 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %159 = call i32 @lx_init_get_version_features(%struct.lx6464es* %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %114
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %171

164:                                              ; preds = %114
  %165 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %166 = load i32, i32* @MICROBLAZE_IBL_DEFAULT, align 4
  %167 = call i32 @lx_set_granularity(%struct.lx6464es* %165, i32 %166)
  %168 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %169 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %168, i32 0, i32 0
  store i64 0, i64* %169, align 8
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %164, %162, %111, %61, %48, %35, %22
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @lx_init_xilinx_reset(%struct.lx6464es*) #1

declare dso_local i32 @lx_init_xilinx_test(%struct.lx6464es*) #1

declare dso_local i32 @lx_init_ethersound_config(%struct.lx6464es*) #1

declare dso_local i32 @lx_irq_enable(%struct.lx6464es*) #1

declare dso_local i32 @lx_dsp_get_mac(%struct.lx6464es*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @lx_init_get_version_features(%struct.lx6464es*) #1

declare dso_local i32 @lx_set_granularity(%struct.lx6464es*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
