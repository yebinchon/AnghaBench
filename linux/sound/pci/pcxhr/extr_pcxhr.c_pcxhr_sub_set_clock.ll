; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_sub_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_sub_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@CMD_ACCESS_IO_WRITE = common dso_local global i32 0, align 4
@IO_NUM_REG_MUTE_OUT = common dso_local global i32 0, align 4
@IO_NUM_SPEED_RATIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"clock register : set %x\0A\00", align 1
@PCXHR_FREQ_REG_MASK = common dso_local global i32 0, align 4
@CMD_ACCESS_IO_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"pcxhr_sub_set_clock to %dHz (realfreq=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i32*)* @pcxhr_sub_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_sub_set_clock(%struct.pcxhr_mgr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcxhr_rmh, align 8
  %12 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @pcxhr_get_clock_reg(%struct.pcxhr_mgr* %13, i32 %14, i32* %8, i32* %9)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %4, align 4
  br label %147

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 55000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %25, 100000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %29

28:                                               ; preds = %24
  store i32 2, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %32 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %30
  %37 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %38 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %11, i32 %37)
  %39 = load i32, i32* @IO_NUM_REG_MUTE_OUT, align 4
  %40 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %46 = call i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 1
  store i32 2, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %36
  %54 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %55 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %54, %struct.pcxhr_rmh* %11)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %147

60:                                               ; preds = %53
  %61 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %62 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %11, i32 %61)
  %63 = load i32, i32* @IO_NUM_SPEED_RATIO, align 4
  %64 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %10, align 4
  %70 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %69, i32* %72, align 4
  %73 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 1
  store i32 2, i32* %73, align 8
  %74 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %75 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %74, %struct.pcxhr_rmh* %11)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %147

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %30
  %82 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %83 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %89 = load i32, i32* @PCXHR_FREQ_REG_MASK, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr* %88, i32 %89, i32 %90, i32* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %4, align 4
  br label %147

97:                                               ; preds = %81
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %100 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %102 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %105 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %107 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %97
  %112 = load i32, i32* @CMD_ACCESS_IO_READ, align 4
  %113 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %11, i32 %112)
  %114 = load i32, i32* @IO_NUM_REG_MUTE_OUT, align 4
  %115 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 4
  %120 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %121 = call i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 1, i32* %126, align 4
  %127 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 1
  store i32 2, i32* %127, align 8
  br label %128

128:                                              ; preds = %123, %111
  %129 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %130 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %129, %struct.pcxhr_rmh* %11)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %4, align 4
  br label %147

135:                                              ; preds = %128
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %138 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %97
  %140 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %141 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %145)
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %139, %133, %95, %78, %58, %18
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @pcxhr_get_clock_reg(%struct.pcxhr_mgr*, i32, i32*, i32*) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
