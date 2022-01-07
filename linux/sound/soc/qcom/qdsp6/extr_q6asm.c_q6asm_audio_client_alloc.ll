; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_audio_client_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_audio_client_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.q6asm*, %struct.device*, i32 }
%struct.q6asm = type { i32, i32, %struct.audio_client** }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Audio Client already active\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASM_SYNC_IO_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.audio_client* @q6asm_audio_client_alloc(%struct.device* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.audio_client*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.q6asm*, align 8
  %13 = alloca %struct.audio_client*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.q6asm* @dev_get_drvdata(i32 %17)
  store %struct.q6asm* %18, %struct.q6asm** %12, align 8
  %19 = load %struct.q6asm*, %struct.q6asm** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  %22 = call %struct.audio_client* @q6asm_get_audio_client(%struct.q6asm* %19, i32 %21)
  store %struct.audio_client* %22, %struct.audio_client** %13, align 8
  %23 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %24 = icmp ne %struct.audio_client* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  store %struct.audio_client* %28, %struct.audio_client** %6, align 8
  br label %97

29:                                               ; preds = %5
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.audio_client* @kzalloc(i32 72, i32 %30)
  store %struct.audio_client* %31, %struct.audio_client** %13, align 8
  %32 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %33 = icmp ne %struct.audio_client* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.audio_client* @ERR_PTR(i32 %36)
  store %struct.audio_client* %37, %struct.audio_client** %6, align 8
  br label %97

38:                                               ; preds = %29
  %39 = load %struct.q6asm*, %struct.q6asm** %12, align 8
  %40 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %39, i32 0, i32 1
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %44 = load %struct.q6asm*, %struct.q6asm** %12, align 8
  %45 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %44, i32 0, i32 2
  %46 = load %struct.audio_client**, %struct.audio_client*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.audio_client*, %struct.audio_client** %46, i64 %49
  store %struct.audio_client* %43, %struct.audio_client** %50, align 8
  %51 = load %struct.q6asm*, %struct.q6asm** %12, align 8
  %52 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %51, i32 0, i32 1
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %58 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %61 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 8
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %64 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %63, i32 0, i32 11
  store %struct.device* %62, %struct.device** %64, align 8
  %65 = load %struct.q6asm*, %struct.q6asm** %12, align 8
  %66 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %67 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %66, i32 0, i32 10
  store %struct.q6asm* %65, %struct.q6asm** %67, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %70 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %69, i32 0, i32 9
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @ASM_SYNC_IO_MODE, align 4
  %72 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %73 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %76 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %78 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.q6asm*, %struct.q6asm** %12, align 8
  %80 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %83 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %85 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %84, i32 0, i32 6
  %86 = call i32 @kref_init(i32* %85)
  %87 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %88 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %87, i32 0, i32 5
  %89 = call i32 @init_waitqueue_head(i32* %88)
  %90 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %91 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %90, i32 0, i32 4
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  %94 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %93, i32 0, i32 3
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.audio_client*, %struct.audio_client** %13, align 8
  store %struct.audio_client* %96, %struct.audio_client** %6, align 8
  br label %97

97:                                               ; preds = %38, %34, %25
  %98 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  ret %struct.audio_client* %98
}

declare dso_local %struct.q6asm* @dev_get_drvdata(i32) #1

declare dso_local %struct.audio_client* @q6asm_get_audio_client(%struct.q6asm*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.audio_client* @kzalloc(i32, i32) #1

declare dso_local %struct.audio_client* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
