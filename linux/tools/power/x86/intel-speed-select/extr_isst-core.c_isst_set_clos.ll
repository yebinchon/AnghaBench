; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_set_clos.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_set_clos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_clos_config = type { i32, i32, i32, i32, i32 }

@MBOX_CMD_WRITE_BIT = common dso_local global i32 0, align 4
@CONFIG_CLOS = common dso_local global i32 0, align 4
@CLOS_PM_CLOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cpu:%d CLOS_PM_CLOS param:%x req:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_set_clos(i32 %0, i32 %1, %struct.isst_clos_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isst_clos_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.isst_clos_config* %2, %struct.isst_clos_config** %7, align 8
  %12 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %13 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 15
  store i32 %15, i32* %8, align 4
  %16 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %17 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 15
  %20 = shl i32 %19, 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %24 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 255
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %31 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %38 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = shl i32 %40, 24
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @MBOX_CMD_WRITE_BIT, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @CONFIG_CLOS, align 4
  %50 = load i32, i32* @CLOS_PM_CLOS, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @isst_send_mbox_command(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32* %9)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %3
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %3
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @debug_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %56
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
