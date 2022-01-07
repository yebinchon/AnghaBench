; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_clos_associate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_clos_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBOX_CMD_WRITE_BIT = common dso_local global i32 0, align 4
@CONFIG_CLOS = common dso_local global i32 0, align 4
@CLOS_PQR_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cpu:%d CLOS_PQR_ASSOC param:%x req:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_clos_associate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 3
  %13 = shl i32 %12, 16
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @find_phy_core_num(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @MBOX_CMD_WRITE_BIT, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CONFIG_CLOS, align 4
  %22 = load i32, i32* @CLOS_PQR_ASSOC, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @isst_send_mbox_command(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32* %7)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @debug_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @find_phy_core_num(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
