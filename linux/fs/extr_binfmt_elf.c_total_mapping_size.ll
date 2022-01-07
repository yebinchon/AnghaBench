; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_elf.c_total_mapping_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_elf.c_total_mapping_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_phdr = type { i64, i64, i64 }

@PT_LOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elf_phdr*, i32)* @total_mapping_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @total_mapping_size(%struct.elf_phdr* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.elf_phdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.elf_phdr* %0, %struct.elf_phdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %14, i64 %16
  %18 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PT_LOAD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %28, %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i64 0, i64* %3, align 8
  br label %59

37:                                               ; preds = %33
  %38 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %38, i64 %40
  %42 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %44, i64 %46
  %48 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %43, %49
  %51 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %51, i64 %53
  %55 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @ELF_PAGESTART(i64 %56)
  %58 = sub i64 %50, %57
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %37, %36
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i64 @ELF_PAGESTART(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
