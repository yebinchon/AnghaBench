; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_elf.c_load_elf_phdrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_elf.c_load_elf_phdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_phdr = type { i32 }
%struct.elfhdr = type { i32, i32, i32 }
%struct.file = type { i32 }

@ELF_MIN_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf_phdr* (%struct.elfhdr*, %struct.file*)* @load_elf_phdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf_phdr* @load_elf_phdrs(%struct.elfhdr* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.elfhdr*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.elf_phdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elfhdr* %0, %struct.elfhdr** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.elf_phdr* null, %struct.elf_phdr** %5, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %11 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %14 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.elfhdr*, %struct.elfhdr** %3, align 8
  %21 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %29, 65536
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ELF_MIN_ALIGN, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %28, %19
  br label %62

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.elf_phdr* @kmalloc(i32 %37, i32 %38)
  store %struct.elf_phdr* %39, %struct.elf_phdr** %5, align 8
  %40 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %41 = icmp ne %struct.elf_phdr* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %62

43:                                               ; preds = %36
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @kernel_read(%struct.file* %44, %struct.elf_phdr* %45, i32 %46, i32* %8)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  store i32 %60, i32* %7, align 4
  br label %62

61:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %59, %42, %35, %18
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %67 = call i32 @kfree(%struct.elf_phdr* %66)
  store %struct.elf_phdr* null, %struct.elf_phdr** %5, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  ret %struct.elf_phdr* %69
}

declare dso_local %struct.elf_phdr* @kmalloc(i32, i32) #1

declare dso_local i32 @kernel_read(%struct.file*, %struct.elf_phdr*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.elf_phdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
