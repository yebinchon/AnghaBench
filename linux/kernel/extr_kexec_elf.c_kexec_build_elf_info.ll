; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_kexec_build_elf_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_kexec_build_elf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i64, i32 }
%struct.kexec_elf_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Not an ELF executable.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"No ELF program header.\0A\00", align 1
@PT_INTERP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Requires an ELF interpreter.\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexec_build_elf_info(i8* %0, i64 %1, %struct.elfhdr* %2, %struct.kexec_elf_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elfhdr*, align 8
  %9 = alloca %struct.kexec_elf_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.elfhdr* %2, %struct.elfhdr** %8, align 8
  store %struct.kexec_elf_info* %3, %struct.kexec_elf_info** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %15 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %9, align 8
  %16 = call i32 @elf_read_from_buffer(i8* %12, i64 %13, %struct.elfhdr* %14, %struct.kexec_elf_info* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %4
  %22 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %23 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ET_EXEC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %29 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ET_DYN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %68

35:                                               ; preds = %27, %21
  %36 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %9, align 8
  %37 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %68

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %47 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %9, align 8
  %52 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PT_INTERP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %68

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %44

67:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %73

68:                                               ; preds = %61, %40, %33
  %69 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %9, align 8
  %70 = call i32 @kexec_free_elf_info(%struct.kexec_elf_info* %69)
  %71 = load i32, i32* @ENOEXEC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %67, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @elf_read_from_buffer(i8*, i64, %struct.elfhdr*, %struct.kexec_elf_info*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kexec_free_elf_info(%struct.kexec_elf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
