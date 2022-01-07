; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_aclink_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_aclink_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_POWERDOWN = common dso_local global i32 0, align 4
@ATI_REG_CMD_AC_SOFT_RESET = common dso_local global i32 0, align 4
@ATI_REG_CMD_ACLINK_ACTIVE = common dso_local global i32 0, align 4
@ATI_REG_CMD_AC_SYNC = common dso_local global i32 0, align 4
@ATI_REG_CMD_AC_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"codec reset timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp*)* @snd_atiixp_aclink_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_aclink_reset(%struct.atiixp* %0) #0 {
  %2 = alloca %struct.atiixp*, align 8
  %3 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %2, align 8
  %4 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %5 = load i32, i32* @CMD, align 4
  %6 = load i32, i32* @ATI_REG_CMD_POWERDOWN, align 4
  %7 = call i64 @atiixp_update(%struct.atiixp* %4, i32 %5, i32 %6, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @udelay(i32 10)
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %13 = load i32, i32* @CMD, align 4
  %14 = load i32, i32* @ATI_REG_CMD_AC_SOFT_RESET, align 4
  %15 = load i32, i32* @ATI_REG_CMD_AC_SOFT_RESET, align 4
  %16 = call i64 @atiixp_update(%struct.atiixp* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %18 = load i32, i32* @CMD, align 4
  %19 = call i32 @atiixp_read(%struct.atiixp* %17, i32 %18)
  %20 = call i32 @udelay(i32 10)
  %21 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %22 = load i32, i32* @CMD, align 4
  %23 = load i32, i32* @ATI_REG_CMD_AC_SOFT_RESET, align 4
  %24 = call i64 @atiixp_update(%struct.atiixp* %21, i32 %22, i32 %23, i32 0)
  store i32 10, i32* %3, align 4
  br label %25

25:                                               ; preds = %60, %11
  %26 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %27 = load i32, i32* @CMD, align 4
  %28 = call i32 @atiixp_read(%struct.atiixp* %26, i32 %27)
  %29 = load i32, i32* @ATI_REG_CMD_ACLINK_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %61

33:                                               ; preds = %25
  %34 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %35 = load i32, i32* @CMD, align 4
  %36 = load i32, i32* @ATI_REG_CMD_AC_SYNC, align 4
  %37 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ATI_REG_CMD_AC_SYNC, align 4
  %40 = call i64 @atiixp_update(%struct.atiixp* %34, i32 %35, i32 %38, i32 %39)
  %41 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %42 = load i32, i32* @CMD, align 4
  %43 = call i32 @atiixp_read(%struct.atiixp* %41, i32 %42)
  %44 = call i32 @mdelay(i32 1)
  %45 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %46 = load i32, i32* @CMD, align 4
  %47 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %48 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %49 = call i64 @atiixp_update(%struct.atiixp* %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %33
  %54 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %55 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %61

60:                                               ; preds = %33
  br label %25

61:                                               ; preds = %53, %25
  %62 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %63 = load i32, i32* @CMD, align 4
  %64 = load i32, i32* @ATI_REG_CMD_AC_SYNC, align 4
  %65 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ATI_REG_CMD_AC_SYNC, align 4
  %68 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @atiixp_update(%struct.atiixp* %62, i32 %63, i32 %66, i32 %69)
  ret i32 0
}

declare dso_local i64 @atiixp_update(%struct.atiixp*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @atiixp_read(%struct.atiixp*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
