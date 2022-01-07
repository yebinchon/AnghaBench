; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_pipe_sample_count.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_pipe_sample_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@CMD_0A_GET_PIPE_SPL_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not query pipe's sample count\0A\00", align 1
@MASK_SPL_COUNT_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_pipe_sample_count(%struct.lx6464es* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.lx6464es*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PIPE_INFO_TO_CMD(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %15 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %18 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %17, i32 0, i32 1
  %19 = load i32, i32* @CMD_0A_GET_PIPE_SPL_COUNT, align 4
  %20 = call i32 @lx_message_init(%struct.TYPE_5__* %18, i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %23 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %21
  store i32 %28, i32* %26, align 4
  %29 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %30 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %33 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %34 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %33, i32 0, i32 1
  %35 = call i32 @lx_message_send_atomic(%struct.lx6464es* %32, %struct.TYPE_5__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  %39 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %40 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %63

45:                                               ; preds = %4
  %46 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %47 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MASK_SPL_COUNT_HI, align 4
  %53 = and i32 %51, %52
  %54 = shl i32 %53, 24
  %55 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %56 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %54, %60
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %45, %38
  %64 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %65 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %9, align 4
  ret i32 %67
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
