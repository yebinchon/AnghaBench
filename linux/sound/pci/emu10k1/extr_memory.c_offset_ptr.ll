; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_offset_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_offset_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"access to NULL ptr: page = %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snd_emu10k1*, i32, i32)* @offset_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @offset_ptr(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ true, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* null, i8** %4, align 8
  br label %50

23:                                               ; preds = %17
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %23
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i8* null, i8** %4, align 8
  br label %50

41:                                               ; preds = %23
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  %46 = load i8*, i8** %8, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %41, %33, %22
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
