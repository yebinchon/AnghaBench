; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_test_xilinx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_test_xilinx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_vx222 = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"testing xilinx...\0A\00", align 1
@CDSP = common dso_local global i32 0, align 4
@VX_CDSP_TEST0_MASK = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@VX_STATUS_VAL_TEST0_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"bad!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"bad! #2\0A\00", align 1
@VX_TYPE_BOARD = common dso_local global i64 0, align 8
@VX_CDSP_TEST1_MASK = common dso_local global i32 0, align 4
@VX_STATUS_VAL_TEST1_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"bad! #3\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"bad! #4\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ok, xilinx fine.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*)* @vx2_test_xilinx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx2_test_xilinx(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca %struct.snd_vx222*, align 8
  %5 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = call %struct.snd_vx222* @to_vx222(%struct.vx_core* %6)
  store %struct.snd_vx222* %7, %struct.snd_vx222** %4, align 8
  %8 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %9 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %15 = load i32, i32* @CDSP, align 4
  %16 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %17 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VX_CDSP_TEST0_MASK, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @vx_outl(%struct.snd_vx222* %14, i32 %15, i32 %20)
  %22 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %23 = load i32, i32* @ISR, align 4
  %24 = call i32 @vx_inl(%struct.snd_vx222* %22, i32 %23)
  %25 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %26 = load i32, i32* @STATUS, align 4
  %27 = call i32 @vx_inl(%struct.snd_vx222* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @VX_STATUS_VAL_TEST0_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @VX_STATUS_VAL_TEST0_MASK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %35 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %143

42:                                               ; preds = %1
  %43 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %44 = load i32, i32* @CDSP, align 4
  %45 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %46 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VX_CDSP_TEST0_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i32 @vx_outl(%struct.snd_vx222* %43, i32 %44, i32 %50)
  %52 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %53 = load i32, i32* @ISR, align 4
  %54 = call i32 @vx_inl(%struct.snd_vx222* %52, i32 %53)
  %55 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %56 = load i32, i32* @STATUS, align 4
  %57 = call i32 @vx_inl(%struct.snd_vx222* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @VX_STATUS_VAL_TEST0_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %42
  %63 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %64 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %143

71:                                               ; preds = %42
  %72 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %73 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VX_TYPE_BOARD, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %136

77:                                               ; preds = %71
  %78 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %79 = load i32, i32* @CDSP, align 4
  %80 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %81 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VX_CDSP_TEST1_MASK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @vx_outl(%struct.snd_vx222* %78, i32 %79, i32 %84)
  %86 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %87 = load i32, i32* @ISR, align 4
  %88 = call i32 @vx_inl(%struct.snd_vx222* %86, i32 %87)
  %89 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %90 = load i32, i32* @STATUS, align 4
  %91 = call i32 @vx_inl(%struct.snd_vx222* %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @VX_STATUS_VAL_TEST1_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @VX_STATUS_VAL_TEST1_MASK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %77
  %98 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %99 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %143

106:                                              ; preds = %77
  %107 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %108 = load i32, i32* @CDSP, align 4
  %109 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %110 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @VX_CDSP_TEST1_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = call i32 @vx_outl(%struct.snd_vx222* %107, i32 %108, i32 %114)
  %116 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %117 = load i32, i32* @ISR, align 4
  %118 = call i32 @vx_inl(%struct.snd_vx222* %116, i32 %117)
  %119 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %120 = load i32, i32* @STATUS, align 4
  %121 = call i32 @vx_inl(%struct.snd_vx222* %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @VX_STATUS_VAL_TEST1_MASK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %106
  %127 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %128 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_dbg(i32 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* @ENODEV, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %143

135:                                              ; preds = %106
  br label %136

136:                                              ; preds = %135, %71
  %137 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %138 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_dbg(i32 %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %136, %126, %97, %62, %33
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.snd_vx222* @to_vx222(%struct.vx_core*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @vx_outl(%struct.snd_vx222*, i32, i32) #1

declare dso_local i32 @vx_inl(%struct.snd_vx222*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
