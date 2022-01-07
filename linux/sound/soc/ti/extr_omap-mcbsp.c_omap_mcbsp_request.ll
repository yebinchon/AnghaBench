; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_request.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, i32, i32*, %struct.TYPE_4__*, i64, i64, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i64)*, i32 (i64)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"McBSP%d is currently in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SPCR1 = common dso_local global i32 0, align 4
@SPCR2 = common dso_local global i32 0, align 4
@omap_mcbsp_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"McBSP\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unable to request IRQ\0A\00", align 1
@omap_mcbsp_tx_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"McBSP TX\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to request TX IRQ\0A\00", align 1
@omap_mcbsp_rx_irq_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"McBSP RX\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to request RX IRQ\0A\00", align 1
@WAKEUPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mcbsp*)* @omap_mcbsp_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_request(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_mcbsp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %3, align 8
  %6 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %7 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 %8, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %193

16:                                               ; preds = %1
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %21 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %26 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %29 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %186

34:                                               ; preds = %16
  %35 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %36 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %40 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %42 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %45 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %34
  %51 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %52 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32 (i64)*, i32 (i64)** %56, align 8
  %58 = icmp ne i32 (i64)* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %61 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32 (i64)*, i32 (i64)** %65, align 8
  %67 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %68 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 1
  %71 = call i32 %66(i64 %70)
  br label %72

72:                                               ; preds = %59, %50, %34
  %73 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %74 = load i32, i32* @SPCR1, align 4
  %75 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %73, i32 %74, i32 0)
  %76 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %77 = load i32, i32* @SPCR2, align 4
  %78 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %76, i32 %77, i32 0)
  %79 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %80 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %72
  %84 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %85 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @omap_mcbsp_irq_handler, align 4
  %88 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %89 = bitcast %struct.omap_mcbsp* %88 to i8*
  %90 = call i32 @request_irq(i64 %86, i32 %87, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %95 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %138

98:                                               ; preds = %83
  br label %130

99:                                               ; preds = %72
  %100 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %101 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @omap_mcbsp_tx_irq_handler, align 4
  %104 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %105 = bitcast %struct.omap_mcbsp* %104 to i8*
  %106 = call i32 @request_irq(i64 %102, i32 %103, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %111 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %138

114:                                              ; preds = %99
  %115 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %116 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @omap_mcbsp_rx_irq_handler, align 4
  %119 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %120 = bitcast %struct.omap_mcbsp* %119 to i8*
  %121 = call i32 @request_irq(i64 %117, i32 %118, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %126 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %131

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %98
  store i32 0, i32* %2, align 4
  br label %193

131:                                              ; preds = %124
  %132 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %133 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %136 = bitcast %struct.omap_mcbsp* %135 to i8*
  %137 = call i32 @free_irq(i64 %134, i8* %136)
  br label %138

138:                                              ; preds = %131, %109, %93
  %139 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %140 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %139, i32 0, i32 3
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = icmp ne %struct.TYPE_3__* %143, null
  br i1 %144, label %145, label %167

145:                                              ; preds = %138
  %146 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %147 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32 (i64)*, i32 (i64)** %151, align 8
  %153 = icmp ne i32 (i64)* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %145
  %155 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %156 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %155, i32 0, i32 3
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32 (i64)*, i32 (i64)** %160, align 8
  %162 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %163 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, 1
  %166 = call i32 %161(i64 %165)
  br label %167

167:                                              ; preds = %154, %145, %138
  %168 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %169 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %168, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %176 = load i32, i32* @WAKEUPEN, align 4
  %177 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %175, i32 %176, i32 0)
  br label %178

178:                                              ; preds = %174, %167
  %179 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %180 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %179, i32 0, i32 1
  %181 = call i32 @spin_lock(i32* %180)
  %182 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %183 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %182, i32 0, i32 0
  store i32 1, i32* %183, align 8
  %184 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %185 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %184, i32 0, i32 2
  store i32* null, i32** %185, align 8
  br label %186

186:                                              ; preds = %178, %24
  %187 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %188 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %187, i32 0, i32 1
  %189 = call i32 @spin_unlock(i32* %188)
  %190 = load i8*, i8** %4, align 8
  %191 = call i32 @kfree(i8* %190)
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %186, %130, %13
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, i8*) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
