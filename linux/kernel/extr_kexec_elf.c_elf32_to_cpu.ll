; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf32_to_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf32_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i64* }

@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2LSB = common dso_local global i64 0, align 8
@ELFDATA2MSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elfhdr*, i32)* @elf32_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_to_cpu(%struct.elfhdr* %0, i32 %1) #0 {
  %3 = alloca %struct.elfhdr*, align 8
  %4 = alloca i32, align 4
  store %struct.elfhdr* %0, %struct.elfhdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %6 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @EI_DATA, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ELFDATA2LSB, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %18 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @EI_DATA, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ELFDATA2MSB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %16
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
