; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_load_xilinx_binary.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_load_xilinx_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i8*, i32 }

@CNTRL = common dso_local global i32 0, align 4
@VX_CNTRL_REGISTER_VALUE = common dso_local global i32 0, align 4
@VX_XILINX_RESET_MASK = common dso_local global i32 0, align 4
@VX_TYPE_BOARD = common dso_local global i64 0, align 8
@VX_CNTRL = common dso_local global i32 0, align 4
@VX_GPIOC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GPIOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"xilinx test failed after load, GPIOC=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.firmware*)* @vx2_load_xilinx_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx2_load_xilinx_binary(%struct.vx_core* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %9 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %10 = load i32, i32* @CNTRL, align 4
  %11 = load i32, i32* @VX_CNTRL_REGISTER_VALUE, align 4
  %12 = load i32, i32* @VX_XILINX_RESET_MASK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @vx_outl(%struct.vx_core* %9, i32 %10, i32 %13)
  %15 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %16 = load i32, i32* @CNTRL, align 4
  %17 = call i32 @vx_inl(%struct.vx_core* %15, i32 %16)
  %18 = call i32 @msleep(i32 10)
  %19 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %20 = load i32, i32* @CNTRL, align 4
  %21 = load i32, i32* @VX_CNTRL_REGISTER_VALUE, align 4
  %22 = call i32 @vx_outl(%struct.vx_core* %19, i32 %20, i32 %21)
  %23 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %24 = load i32, i32* @CNTRL, align 4
  %25 = call i32 @vx_inl(%struct.vx_core* %23, i32 %24)
  %26 = call i32 @msleep(i32 10)
  %27 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %28 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VX_TYPE_BOARD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @VX_CNTRL, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @VX_GPIOC, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %58, %36
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.firmware*, %struct.firmware** %5, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @put_xilinx_data(%struct.vx_core* %47, i32 %48, i32 8, i8 zeroext %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %92

56:                                               ; preds = %46
  %57 = call i32 (...) @cond_resched()
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @put_xilinx_data(%struct.vx_core* %64, i32 %65, i32 4, i8 zeroext -1)
  %67 = call i32 @msleep(i32 200)
  %68 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %69 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VX_TYPE_BOARD, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %63
  %74 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %75 = load i32, i32* @GPIOC, align 4
  %76 = call i32 @vx_inl(%struct.vx_core* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 256
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %92

81:                                               ; preds = %73
  %82 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %83 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %81, %80, %53
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @vx_outl(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @vx_inl(%struct.vx_core*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @put_xilinx_data(%struct.vx_core*, i32, i32, i8 zeroext) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
