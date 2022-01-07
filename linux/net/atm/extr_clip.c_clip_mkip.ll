; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_mkip.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_mkip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i64, i32, %struct.clip_vcc* }
%struct.clip_vcc = type { i32, i32, i32, i64, i32, i64, i32*, %struct.atm_vcc* }

@EBADFD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%p vcc %p\0A\00", align 1
@ATM_VF_IS_CLIP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@clip_push = common dso_local global i64 0, align 8
@clip_pop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @clip_mkip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_mkip(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clip_vcc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %8 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EBADFD, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.clip_vcc* @kmalloc(i32 56, i32 %15)
  store %struct.clip_vcc* %16, %struct.clip_vcc** %6, align 8
  %17 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %18 = icmp ne %struct.clip_vcc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %14
  %23 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.clip_vcc* %23, %struct.atm_vcc* %24)
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %27 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %28 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %27, i32 0, i32 7
  store %struct.atm_vcc* %26, %struct.atm_vcc** %28, align 8
  %29 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %31 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %30, i32 0, i32 3
  store %struct.clip_vcc* %29, %struct.clip_vcc** %31, align 8
  %32 = load i32, i32* @ATM_VF_IS_CLIP, align 4
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %34 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %33, i32 0, i32 2
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %37 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %39 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %41 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %44 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %49 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %51 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %54 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %56 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.clip_vcc*, %struct.clip_vcc** %6, align 8
  %59 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* @clip_push, align 8
  %61 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %62 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @clip_pop, align 4
  %64 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %65 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %67 = call i32 @vcc_process_recv_queue(%struct.atm_vcc* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %22, %19, %11
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.clip_vcc* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.clip_vcc*, %struct.atm_vcc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @vcc_process_recv_queue(%struct.atm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
