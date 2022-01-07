; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"**************************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"IRQ_NONE\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@MASK_SYS_STATUS_CMD_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MASK_SYS_STATUS_EOBI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"interrupt: EOBI\0A\00", align 1
@MASK_SYS_STATUS_EOBO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"interrupt: EOBO\0A\00", align 1
@MASK_SYS_STATUS_URUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"interrupt: URUN\0A\00", align 1
@MASK_SYS_STATUS_ORUN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"interrupt: ORUN\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"interrupt requests escmd handling\0A\00", align 1
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lx6464es*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.lx6464es*
  store %struct.lx6464es* %12, %struct.lx6464es** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %14 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %20 = call i32 @lx_interrupt_ack(%struct.lx6464es* %19, i32* %9, i32* %7, i32* %8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %24 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %111

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MASK_SYS_STATUS_CMD_DONE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  br label %111

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MASK_SYS_STATUS_EOBI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %44 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MASK_SYS_STATUS_EOBO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %56 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @MASK_SYS_STATUS_URUN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %68 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @MASK_SYS_STATUS_ORUN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %80 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_dbg(i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %78, %73
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  store i32 1, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %91 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.lx6464es*, %struct.lx6464es** %6, align 8
  %97 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %95, %92
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  br label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %35, %22
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @lx_interrupt_ack(%struct.lx6464es*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
