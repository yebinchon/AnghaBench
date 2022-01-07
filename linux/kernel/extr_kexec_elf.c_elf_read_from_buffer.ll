; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_read_from_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_read_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i64, i64 }
%struct.kexec_elf_info = type { i8*, %struct.elfhdr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.elfhdr*, %struct.kexec_elf_info*)* @elf_read_from_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_read_from_buffer(i8* %0, i64 %1, %struct.elfhdr* %2, %struct.kexec_elf_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elfhdr*, align 8
  %9 = alloca %struct.kexec_elf_info*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.elfhdr* %2, %struct.elfhdr** %8, align 8
  store %struct.kexec_elf_info* %3, %struct.kexec_elf_info** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %14 = call i32 @elf_read_ehdr(i8* %11, i64 %12, %struct.elfhdr* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %9, align 8
  %22 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %24 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %9, align 8
  %25 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %24, i32 0, i32 1
  store %struct.elfhdr* %23, %struct.elfhdr** %25, align 8
  %26 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %27 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %19
  %31 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %32 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %9, align 8
  %39 = call i32 @elf_read_phdrs(i8* %36, i64 %37, %struct.kexec_elf_info* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %30, %19
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %42, %17
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @elf_read_ehdr(i8*, i64, %struct.elfhdr*) #1

declare dso_local i32 @elf_read_phdrs(i8*, i64, %struct.kexec_elf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
