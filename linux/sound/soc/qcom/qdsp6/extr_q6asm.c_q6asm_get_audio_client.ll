; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_get_audio_client.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_get_audio_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32 }
%struct.q6asm = type { i32, %struct.audio_client**, i32 }

@MAX_SESSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid session: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audio_client* (%struct.q6asm*, i32)* @q6asm_get_audio_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audio_client* @q6asm_get_audio_client(%struct.q6asm* %0, i32 %1) #0 {
  %3 = alloca %struct.q6asm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_client*, align 8
  %6 = alloca i64, align 8
  store %struct.q6asm* %0, %struct.q6asm** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.audio_client* null, %struct.audio_client** %5, align 8
  %7 = load %struct.q6asm*, %struct.q6asm** %3, align 8
  %8 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MAX_SESSIONS, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %2
  %18 = load %struct.q6asm*, %struct.q6asm** %3, align 8
  %19 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %58

23:                                               ; preds = %13
  %24 = load %struct.q6asm*, %struct.q6asm** %3, align 8
  %25 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %24, i32 0, i32 1
  %26 = load %struct.audio_client**, %struct.audio_client*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.audio_client*, %struct.audio_client** %26, i64 %28
  %30 = load %struct.audio_client*, %struct.audio_client** %29, align 8
  %31 = icmp ne %struct.audio_client* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %58

33:                                               ; preds = %23
  %34 = load %struct.q6asm*, %struct.q6asm** %3, align 8
  %35 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %34, i32 0, i32 1
  %36 = load %struct.audio_client**, %struct.audio_client*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.audio_client*, %struct.audio_client** %36, i64 %38
  %40 = load %struct.audio_client*, %struct.audio_client** %39, align 8
  %41 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %58

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.q6asm*, %struct.q6asm** %3, align 8
  %49 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %48, i32 0, i32 1
  %50 = load %struct.audio_client**, %struct.audio_client*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.audio_client*, %struct.audio_client** %50, i64 %52
  %54 = load %struct.audio_client*, %struct.audio_client** %53, align 8
  store %struct.audio_client* %54, %struct.audio_client** %5, align 8
  %55 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %56 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %55, i32 0, i32 1
  %57 = call i32 @kref_get(i32* %56)
  br label %58

58:                                               ; preds = %47, %45, %32, %17
  %59 = load %struct.q6asm*, %struct.q6asm** %3, align 8
  %60 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %59, i32 0, i32 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  ret %struct.audio_client* %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
