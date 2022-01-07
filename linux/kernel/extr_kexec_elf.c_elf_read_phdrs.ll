; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_read_phdrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_read_phdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kexec_elf_info = type { i32*, %struct.elfhdr* }
%struct.elfhdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.kexec_elf_info*)* @elf_read_phdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_read_phdrs(i8* %0, i64 %1, %struct.kexec_elf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kexec_elf_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elfhdr*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.kexec_elf_info* %2, %struct.kexec_elf_info** %7, align 8
  %12 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %7, align 8
  %13 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %12, i32 0, i32 1
  %14 = load %struct.elfhdr*, %struct.elfhdr** %13, align 8
  store %struct.elfhdr* %14, %struct.elfhdr** %10, align 8
  %15 = load %struct.elfhdr*, %struct.elfhdr** %10, align 8
  %16 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kzalloc(i64 %20, i32 %21)
  %23 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %7, align 8
  %24 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %7, align 8
  %26 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.elfhdr*, %struct.elfhdr** %10, align 8
  %36 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @elf_read_phdr(i8* %41, i64 %42, %struct.kexec_elf_info* %43, i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %7, align 8
  %50 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %7, align 8
  %54 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %61

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %33

60:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %48, %29
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @elf_read_phdr(i8*, i64, %struct.kexec_elf_info*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
