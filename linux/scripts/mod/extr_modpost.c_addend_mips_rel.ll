; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_addend_mips_rel.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_addend_mips_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@R_MIPS_HI16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_info*, i32*, %struct.TYPE_4__*)* @addend_mips_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addend_mips_rel(%struct.elf_info* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elf_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.elf_info* %0, %struct.elf_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ELF_R_TYPE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = call i32* @reloc_location(%struct.elf_info* %15, i32* %16, %struct.TYPE_4__* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @R_MIPS_HI16, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %44

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TO_NATIVE(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %43 [
    i32 128, label %28
    i32 130, label %33
    i32 129, label %39
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 65535
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %43

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 67108863
  %36 = shl i32 %35, 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %23
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %23, %39, %33, %28
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32* @reloc_location(%struct.elf_info*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @TO_NATIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
