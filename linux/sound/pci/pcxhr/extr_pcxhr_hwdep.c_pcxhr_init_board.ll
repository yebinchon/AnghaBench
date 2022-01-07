; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_init_board.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32*, i32 }

@PCXHR_PLAYBACK_STREAMS = common dso_local global i32 0, align 4
@CMD_SUPPORTED = common dso_local global i32 0, align 4
@MASK_FIRST_FIELD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIELD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"supported formats : playback=%x capture=%x\0A\00", align 1
@CMD_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PCXHR DSP version is %d.%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*)* @pcxhr_init_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_init_board(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_rmh, align 8
  %6 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  %7 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %8 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %13 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %18 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %22 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCXHR_PLAYBACK_STREAMS, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %29 = call i32 @pcxhr_enable_dsp(%struct.pcxhr_mgr* %28)
  %30 = load i32, i32* @CMD_SUPPORTED, align 4
  %31 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %5, i32 %30)
  %32 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %33 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %32, %struct.pcxhr_rmh* %5)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %173

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %46 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 2
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %173

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FIELD_SIZE, align 4
  %59 = mul nsw i32 2, %58
  %60 = ashr i32 %57, %59
  %61 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %64 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 2
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %173

71:                                               ; preds = %53
  %72 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 95
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %173

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 7
  %88 = and i32 %87, 95
  %89 = load i32, i32* @PCXHR_PLAYBACK_STREAMS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %173

94:                                               ; preds = %82
  %95 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %96 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %95, i32 0, i32 6
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %106)
  %108 = load i32, i32* @CMD_VERSION, align 4
  %109 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %5, i32 %108)
  %110 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %111 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %119 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 8388608, %120
  %122 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %121, i32* %124, align 4
  %125 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 2
  store i32 2, i32* %125, align 8
  %126 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %127 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %126, %struct.pcxhr_rmh* %5)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %94
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %173

132:                                              ; preds = %94
  %133 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %134 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %133, i32 0, i32 6
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 8
  %148 = and i32 %147, 255
  %149 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 255
  %154 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %148, i32 %153)
  %155 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %160 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %162 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %132
  %166 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %167 = call i32 @hr222_sub_init(%struct.pcxhr_mgr* %166)
  store i32 %167, i32* %4, align 4
  br label %171

168:                                              ; preds = %132
  %169 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %170 = call i32 @pcxhr_sub_init(%struct.pcxhr_mgr* %169)
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %4, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %171, %130, %91, %79, %68, %50, %36
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @pcxhr_enable_dsp(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @hr222_sub_init(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_sub_init(%struct.pcxhr_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
