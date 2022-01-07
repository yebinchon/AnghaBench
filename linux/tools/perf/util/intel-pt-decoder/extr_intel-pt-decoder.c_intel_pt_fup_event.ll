; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_fup_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_fup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32 }

@INTEL_PT_TRANSACTION = common dso_local global i32 0, align 4
@INTEL_PT_PTW = common dso_local global i32 0, align 4
@INTEL_PT_FUP_IP = common dso_local global i32 0, align 4
@INTEL_PT_MWAIT_OP = common dso_local global i32 0, align 4
@INTEL_PT_PWR_ENTRY = common dso_local global i32 0, align 4
@INTEL_PT_BRANCH = common dso_local global i32 0, align 4
@INTEL_PT_EX_STOP = common dso_local global i32 0, align 4
@INTEL_PT_BLK_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_fup_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_fup_event(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %6 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %11 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @INTEL_PT_TRANSACTION, align 4
  %18 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %22 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %31 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %34 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  store i32 1, i32* %2, align 4
  br label %200

36:                                               ; preds = %1
  %37 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %38 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %43 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @INTEL_PT_PTW, align 4
  %45 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %46 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @INTEL_PT_FUP_IP, align 4
  %49 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %50 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %55 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %58 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %61 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %64 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %67 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  store i32 %65, i32* %68, align 4
  store i32 1, i32* %2, align 4
  br label %200

69:                                               ; preds = %36
  %70 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %71 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %69
  %75 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %76 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load i32, i32* @INTEL_PT_MWAIT_OP, align 4
  %78 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %79 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %82 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %85 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  %87 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %88 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %91 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %94 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  store i32 %92, i32* %95, align 8
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %74, %69
  %97 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %98 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %96
  %102 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %103 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* @INTEL_PT_PWR_ENTRY, align 4
  %105 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %106 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* @INTEL_PT_BRANCH, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %113 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %118 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %121 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 8
  %123 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %124 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %127 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %130 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  store i32 %128, i32* %131, align 4
  store i32 1, i32* %4, align 4
  br label %132

132:                                              ; preds = %101, %96
  %133 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %134 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %132
  %138 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %139 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %138, i32 0, i32 4
  store i32 0, i32* %139, align 8
  %140 = load i32, i32* @INTEL_PT_EX_STOP, align 4
  %141 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %142 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* @INTEL_PT_BRANCH, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %149 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %147
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* @INTEL_PT_FUP_IP, align 4
  %154 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %155 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 8
  %159 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %160 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %163 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  %165 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %166 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  store i32 1, i32* %4, align 4
  br label %168

168:                                              ; preds = %137, %132
  %169 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %170 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %175 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %174, i32 0, i32 5
  store i32 0, i32* %175, align 4
  %176 = load i32, i32* @INTEL_PT_BLK_ITEMS, align 4
  %177 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %178 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* @INTEL_PT_BRANCH, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %185 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, %183
  store i32 %188, i32* %186, align 4
  %189 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %190 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %193 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 8
  %195 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %196 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  store i64 0, i64* %197, align 8
  store i32 1, i32* %4, align 4
  br label %198

198:                                              ; preds = %173, %168
  %199 = load i32, i32* %4, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %198, %41, %9
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
