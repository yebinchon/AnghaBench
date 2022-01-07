; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_alloc_copp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_alloc_copp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6copp = type { i32, i32, i32, %struct.q6adm* }
%struct.q6adm = type { i32* }

@MAX_COPPS_PER_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.q6copp* (%struct.q6adm*, i32)* @q6adm_alloc_copp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.q6copp* @q6adm_alloc_copp(%struct.q6adm* %0, i32 %1) #0 {
  %3 = alloca %struct.q6copp*, align 8
  %4 = alloca %struct.q6adm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.q6copp*, align 8
  %7 = alloca i32, align 4
  store %struct.q6adm* %0, %struct.q6adm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.q6adm*, %struct.q6adm** %4, align 8
  %9 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* @MAX_COPPS_PER_PORT, align 4
  %15 = call i32 @find_first_zero_bit(i32* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_COPPS_PER_PORT, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.q6copp* @ERR_PTR(i32 %21)
  store %struct.q6copp* %22, %struct.q6copp** %3, align 8
  br label %54

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.q6copp* @kzalloc(i32 24, i32 %24)
  store %struct.q6copp* %25, %struct.q6copp** %6, align 8
  %26 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %27 = icmp ne %struct.q6copp* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.q6copp* @ERR_PTR(i32 %30)
  store %struct.q6copp* %31, %struct.q6copp** %3, align 8
  br label %54

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.q6adm*, %struct.q6adm** %4, align 8
  %35 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @set_bit(i32 %33, i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %43 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %46 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.q6adm*, %struct.q6adm** %4, align 8
  %48 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %49 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %48, i32 0, i32 3
  store %struct.q6adm* %47, %struct.q6adm** %49, align 8
  %50 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %51 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %50, i32 0, i32 2
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  store %struct.q6copp* %53, %struct.q6copp** %3, align 8
  br label %54

54:                                               ; preds = %32, %28, %19
  %55 = load %struct.q6copp*, %struct.q6copp** %3, align 8
  ret %struct.q6copp* %55
}

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local %struct.q6copp* @ERR_PTR(i32) #1

declare dso_local %struct.q6copp* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
