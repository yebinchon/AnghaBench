; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_is_phdr_sane.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_is_phdr_sane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_phdr = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"ELF segment location wraps around.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ELF segment not in file.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ELF segment address wraps around.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_phdr*, i64)* @elf_is_phdr_sane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_is_phdr_sane(%struct.elf_phdr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_phdr*, align 8
  %5 = alloca i64, align 8
  store %struct.elf_phdr* %0, %struct.elf_phdr** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %7 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %10 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %8, %11
  %13 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %14 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %21 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %24 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = load i64, i64* %5, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %19
  %32 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %33 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %36 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %40 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %43, %29, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
