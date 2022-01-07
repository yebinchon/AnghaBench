; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.snd_gf1_mem }
%struct.snd_gf1_mem = type { i32*, i32, i32 }
%struct.snd_gf1_mem_block = type { i32, i8*, i64, i32 }

@SNDRV_GF1_MEM_OWNER_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"InterWave LFOs\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Voice default (NULL's)\00", align 1
@snd_gf1_mem_info_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_mem_init(%struct.snd_gus_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca %struct.snd_gf1_mem*, align 8
  %5 = alloca %struct.snd_gf1_mem_block, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  %6 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %7 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  store %struct.snd_gf1_mem* %8, %struct.snd_gf1_mem** %4, align 8
  %9 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %10 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %9, i32 0, i32 2
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %13 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %15 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %17 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

22:                                               ; preds = %1
  %23 = call i32 @memset(%struct.snd_gf1_mem_block* %5, i32 0, i32 32)
  %24 = load i32, i32* @SNDRV_GF1_MEM_OWNER_DRIVER, align 4
  %25 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %5, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %27 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %5, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %5, i32 0, i32 0
  store i32 1024, i32* %33, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %5, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %38 = call i32* @snd_gf1_mem_xalloc(%struct.snd_gf1_mem* %37, %struct.snd_gf1_mem_block* %5)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %61

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %46 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %5, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %5, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kstrdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %5, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %55 = call i32* @snd_gf1_mem_xalloc(%struct.snd_gf1_mem* %54, %struct.snd_gf1_mem_block* %5)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %57, %40, %21
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(%struct.snd_gf1_mem_block*, i32, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32* @snd_gf1_mem_xalloc(%struct.snd_gf1_mem*, %struct.snd_gf1_mem_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
