; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_buffer_give.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_buffer_give.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32, i32* }

@CMD_0F_UPDATE_BUFFER = common dso_local global i32 0, align 4
@BF_NOTIFY_EOB = common dso_local global i32 0, align 4
@MASK_DATA_SIZE = common dso_local global i32 0, align 4
@BF_64BITS_ADR = common dso_local global i32 0, align 4
@EB_RBUFFERS_TABLE_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"lx_buffer_give EB_RBUFFERS_TABLE_OVERFLOW\0A\00", align 1
@EB_INVALID_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"lx_buffer_give EB_INVALID_STREAM\0A\00", align 1
@EB_CMD_REFUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"lx_buffer_give EB_CMD_REFUSED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_buffer_give(%struct.lx6464es* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.lx6464es*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @PIPE_INFO_TO_CMD(i32 %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %21 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %24 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %23, i32 0, i32 2
  %25 = load i32, i32* @CMD_0F_UPDATE_BUFFER, align 4
  %26 = call i32 @lx_message_init(%struct.TYPE_5__* %24, i32 %25)
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %29 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %27
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @BF_NOTIFY_EOB, align 4
  %36 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %37 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %35
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @MASK_DATA_SIZE, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %47 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %53 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %7
  %60 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %61 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 4, i32* %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %65 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* @BF_64BITS_ADR, align 4
  %70 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %71 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %69
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %59, %7
  %78 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %79 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %80 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %79, i32 0, i32 2
  %81 = call i32 @lx_message_send_atomic(%struct.lx6464es* %78, %struct.TYPE_5__* %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %86 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %14, align 8
  store i32 %90, i32* %91, align 4
  br label %126

92:                                               ; preds = %77
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @EB_RBUFFERS_TABLE_OVERFLOW, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %98 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %96, %92
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @EB_INVALID_STREAM, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %109 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @EB_CMD_REFUSED, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %120 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %118, %114
  br label %126

126:                                              ; preds = %125, %84
  %127 = load %struct.lx6464es*, %struct.lx6464es** %8, align 8
  %128 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %15, align 4
  ret i32 %130
}

declare dso_local i32 @PIPE_INFO_TO_CMD(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_message_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lx_message_send_atomic(%struct.lx6464es*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
