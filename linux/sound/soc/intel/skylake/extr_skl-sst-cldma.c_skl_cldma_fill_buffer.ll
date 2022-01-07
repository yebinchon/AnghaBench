; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.sst_dsp.0*, i32)*, i32 (%struct.sst_dsp.1*, i32, i32)* }
%struct.sst_dsp.0 = type opaque
%struct.sst_dsp.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Size: %x, intr_enable: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"buf_pos_index:%d, trigger:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"spib position: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*, i32, i8*, i32, i32)* @skl_cldma_fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_cldma_fill_buffer(%struct.sst_dsp* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %13 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %19 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %22 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %31 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %36 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %38, %39
  %41 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %42 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ugt i32 %40, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %5
  %47 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %48 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %52 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub i32 %50, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %57 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %62 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %60, %65
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @memcpy(i64 %66, i8* %67, i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr i8, i8* %74, i64 %75
  store i8* %76, i8** %8, align 8
  %77 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %78 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %46, %5
  %81 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %82 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %87 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %85, %90
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @memcpy(i64 %91, i8* %92, i32 %93)
  %95 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %96 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %100 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %80
  %105 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %106 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  br label %116

108:                                              ; preds = %80
  %109 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %110 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %114 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %108, %104
  %117 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %118 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %124 = call i32 @skl_cldma_int_enable(%struct.sst_dsp* %123)
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %127 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32 (%struct.sst_dsp.1*, i32, i32)*, i32 (%struct.sst_dsp.1*, i32, i32)** %129, align 8
  %131 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %132 = bitcast %struct.sst_dsp* %131 to %struct.sst_dsp.1*
  %133 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %134 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 %130(%struct.sst_dsp.1* %132, i32 %136, i32 %137)
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %125
  %142 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %143 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32 (%struct.sst_dsp.0*, i32)*, i32 (%struct.sst_dsp.0*, i32)** %145, align 8
  %147 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %148 = bitcast %struct.sst_dsp* %147 to %struct.sst_dsp.0*
  %149 = call i32 %146(%struct.sst_dsp.0* %148, i32 1)
  br label %150

150:                                              ; preds = %141, %125
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @skl_cldma_int_enable(%struct.sst_dsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
