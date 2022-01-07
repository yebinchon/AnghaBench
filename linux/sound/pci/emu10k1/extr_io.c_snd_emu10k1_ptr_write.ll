; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu10k1_ptr_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu10k1_ptr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64, i64 }

@A_PTR_ADDRESS_MASK = common dso_local global i32 0, align 4
@PTR_ADDRESS_MASK = common dso_local global i32 0, align 4
@PTR_CHANNELNUM_MASK = common dso_local global i32 0, align 4
@PTR = common dso_local global i64 0, align 8
@DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %15 = icmp ne %struct.snd_emu10k1* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %121

21:                                               ; preds = %4
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @A_PTR_ADDRESS_MASK, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @PTR_ADDRESS_MASK, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PTR_CHANNELNUM_MASK, align 4
  %38 = and i32 %36, %37
  %39 = or i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, -16777216
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 24
  %46 = and i32 %45, 63
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %12, align 1
  %48 = load i32, i32* %6, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 31
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %13, align 1
  %52 = load i8, i8* %12, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  %56 = load i8, i8* %13, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %55, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i8, i8* %13, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %59, %61
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %65, i32 0, i32 0
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %71 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PTR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outl(i32 %69, i64 %74)
  %76 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DATA, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @inl(i64 %80)
  %82 = load i32, i32* %11, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %89 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DATA, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outl(i32 %87, i64 %92)
  %94 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %94, i32 0, i32 0
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  br label %121

98:                                               ; preds = %30
  %99 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %100 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %99, i32 0, i32 0
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %105 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PTR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @outl(i32 %103, i64 %108)
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %112 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @DATA, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outl(i32 %110, i64 %115)
  %117 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %118 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %117, i32 0, i32 0
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %20, %98, %43
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
