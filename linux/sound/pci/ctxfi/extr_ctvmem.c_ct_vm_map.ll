; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctvmem.c_ct_vm_map.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctvmem.c_ct_vm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_vm_block = type { i32, i32 }
%struct.ct_vm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_substream = type { i32 }
%struct.ct_atc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"No virtual memory block that is big enough to allocate!\0A\00", align 1
@CT_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ct_vm_block* (%struct.ct_vm*, %struct.snd_pcm_substream*, i32)* @ct_vm_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ct_vm_block* @ct_vm_map(%struct.ct_vm* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.ct_vm_block*, align 8
  %5 = alloca %struct.ct_vm*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ct_vm_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.ct_atc*, align 8
  %14 = alloca i64, align 8
  store %struct.ct_vm* %0, %struct.ct_vm** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %16 = call %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %15)
  store %struct.ct_atc* %16, %struct.ct_atc** %13, align 8
  %17 = load %struct.ct_vm*, %struct.ct_vm** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ct_atc*, %struct.ct_atc** %13, align 8
  %20 = call %struct.ct_vm_block* @get_vm_block(%struct.ct_vm* %17, i32 %18, %struct.ct_atc* %19)
  store %struct.ct_vm_block* %20, %struct.ct_vm_block** %8, align 8
  %21 = load %struct.ct_vm_block*, %struct.ct_vm_block** %8, align 8
  %22 = icmp eq %struct.ct_vm_block* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.ct_atc*, %struct.ct_atc** %13, align 8
  %25 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store %struct.ct_vm_block* null, %struct.ct_vm_block** %4, align 8
  br label %73

30:                                               ; preds = %3
  %31 = load %struct.ct_vm*, %struct.ct_vm** %5, align 8
  %32 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64* %37, i64** %12, align 8
  %38 = load %struct.ct_vm_block*, %struct.ct_vm_block** %8, align 8
  %39 = getelementptr inbounds %struct.ct_vm_block, %struct.ct_vm_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CT_PAGE_SHIFT, align 4
  %42 = lshr i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ct_vm_block*, %struct.ct_vm_block** %8, align 8
  %44 = getelementptr inbounds %struct.ct_vm_block, %struct.ct_vm_block* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CT_PAGE_SHIFT, align 4
  %47 = lshr i32 %45, %46
  store i32 %47, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %65, %30
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @CT_PAGE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = call i64 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %53, i32 %56)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64*, i64** %12, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  store i64 %58, i64* %64, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.ct_vm_block*, %struct.ct_vm_block** %8, align 8
  %71 = getelementptr inbounds %struct.ct_vm_block, %struct.ct_vm_block* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ct_vm_block*, %struct.ct_vm_block** %8, align 8
  store %struct.ct_vm_block* %72, %struct.ct_vm_block** %4, align 8
  br label %73

73:                                               ; preds = %68, %23
  %74 = load %struct.ct_vm_block*, %struct.ct_vm_block** %4, align 8
  ret %struct.ct_vm_block* %74
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ct_vm_block* @get_vm_block(%struct.ct_vm*, i32, %struct.ct_atc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
