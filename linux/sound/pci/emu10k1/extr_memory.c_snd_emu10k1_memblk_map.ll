; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_memblk_map.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_memblk_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.snd_emu10k1_memblk = type { i64, i32, i64, i32 }

@mapped_order_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_memblk_map(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_memblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_memblk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.snd_emu10k1_memblk*, align 8
  %11 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_memblk* %1, %struct.snd_emu10k1_memblk** %5, align 8
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 0
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %21, i32 0, i32 3
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %23, i32 0, i32 1
  %25 = call i32 @list_move_tail(i32* %22, %struct.list_head* %24)
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  store i32 0, i32* %3, align 4
  br label %80

30:                                               ; preds = %2
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %32 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %33 = call i32 @map_memblk(%struct.snd_emu10k1* %31, %struct.snd_emu10k1_memblk* %32)
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i32 0, i32 0
  %39 = load %struct.list_head*, %struct.list_head** %38, align 8
  store %struct.list_head* %39, %struct.list_head** %8, align 8
  br label %40

40:                                               ; preds = %71, %35
  %41 = load %struct.list_head*, %struct.list_head** %8, align 8
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %42, i32 0, i32 1
  %44 = icmp ne %struct.list_head* %41, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load %struct.list_head*, %struct.list_head** %8, align 8
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %46, i32 0, i32 0
  %48 = load %struct.list_head*, %struct.list_head** %47, align 8
  store %struct.list_head* %48, %struct.list_head** %9, align 8
  %49 = load %struct.list_head*, %struct.list_head** %8, align 8
  %50 = load i32, i32* @mapped_order_link, align 4
  %51 = call %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head* %49, i32 %50)
  store %struct.snd_emu10k1_memblk* %51, %struct.snd_emu10k1_memblk** %10, align 8
  %52 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %71

57:                                               ; preds = %45
  %58 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %59 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %60 = call i32 @unmap_memblk(%struct.snd_emu10k1* %58, %struct.snd_emu10k1_memblk* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %63 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %68 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %69 = call i32 @map_memblk(%struct.snd_emu10k1* %67, %struct.snd_emu10k1_memblk* %68)
  store i32 %69, i32* %6, align 4
  br label %73

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %56
  %72 = load %struct.list_head*, %struct.list_head** %9, align 8
  store %struct.list_head* %72, %struct.list_head** %8, align 8
  br label %40

73:                                               ; preds = %66, %40
  br label %74

74:                                               ; preds = %73, %30
  %75 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %76 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %75, i32 0, i32 0
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @map_memblk(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

declare dso_local %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head*, i32) #1

declare dso_local i32 @unmap_memblk(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
