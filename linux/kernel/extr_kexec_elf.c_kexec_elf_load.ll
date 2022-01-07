; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_kexec_elf_load.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_kexec_elf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }
%struct.elfhdr = type { i64 }
%struct.kexec_elf_info = type { i64, %struct.elf_phdr* }
%struct.elf_phdr = type { i64, i64, i64, i32, i32, i32 }
%struct.kexec_buf = type { i64, i64, i64, i32, i32, i8* }

@UINT_MAX = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8
@KEXEC_BUF_MEM_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexec_elf_load(%struct.kimage* %0, %struct.elfhdr* %1, %struct.kexec_elf_info* %2, %struct.kexec_buf* %3, i64* %4) #0 {
  %6 = alloca %struct.kimage*, align 8
  %7 = alloca %struct.elfhdr*, align 8
  %8 = alloca %struct.kexec_elf_info*, align 8
  %9 = alloca %struct.kexec_buf*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.elf_phdr*, align 8
  store %struct.kimage* %0, %struct.kimage** %6, align 8
  store %struct.elfhdr* %1, %struct.elfhdr** %7, align 8
  store %struct.kexec_elf_info* %2, %struct.kexec_elf_info** %8, align 8
  store %struct.kexec_buf* %3, %struct.kexec_buf** %9, align 8
  store i64* %4, i64** %10, align 8
  %17 = load i64, i64* @UINT_MAX, align 8
  store i64 %17, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %97, %5
  %19 = load i64, i64* %13, align 8
  %20 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %21 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %18
  %25 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %8, align 8
  %26 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %25, i32 0, i32 1
  %27 = load %struct.elf_phdr*, %struct.elf_phdr** %26, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %27, i64 %28
  store %struct.elf_phdr* %29, %struct.elf_phdr** %16, align 8
  %30 = load %struct.elf_phdr*, %struct.elf_phdr** %16, align 8
  %31 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PT_LOAD, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %97

36:                                               ; preds = %24
  %37 = load %struct.elf_phdr*, %struct.elf_phdr** %16, align 8
  %38 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load %struct.elf_phdr*, %struct.elf_phdr** %16, align 8
  %42 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.elf_phdr*, %struct.elf_phdr** %16, align 8
  %47 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %15, align 8
  br label %49

49:                                               ; preds = %45, %36
  %50 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %8, align 8
  %51 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.elf_phdr*, %struct.elf_phdr** %16, align 8
  %55 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %53, i64 %57
  %59 = load %struct.kexec_buf*, %struct.kexec_buf** %9, align 8
  %60 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load %struct.kexec_buf*, %struct.kexec_buf** %9, align 8
  %63 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.elf_phdr*, %struct.elf_phdr** %16, align 8
  %65 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.kexec_buf*, %struct.kexec_buf** %9, align 8
  %68 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.elf_phdr*, %struct.elf_phdr** %16, align 8
  %70 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.kexec_buf*, %struct.kexec_buf** %9, align 8
  %73 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.elf_phdr*, %struct.elf_phdr** %16, align 8
  %75 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.kexec_buf*, %struct.kexec_buf** %9, align 8
  %78 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* @KEXEC_BUF_MEM_UNKNOWN, align 8
  %80 = load %struct.kexec_buf*, %struct.kexec_buf** %9, align 8
  %81 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.kexec_buf*, %struct.kexec_buf** %9, align 8
  %83 = call i32 @kexec_add_buffer(%struct.kexec_buf* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %49
  br label %103

87:                                               ; preds = %49
  %88 = load %struct.kexec_buf*, %struct.kexec_buf** %9, align 8
  %89 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %11, align 8
  br label %96

96:                                               ; preds = %94, %87
  br label %97

97:                                               ; preds = %96, %35
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %13, align 8
  br label %18

100:                                              ; preds = %18
  %101 = load i64, i64* %11, align 8
  %102 = load i64*, i64** %10, align 8
  store i64 %101, i64* %102, align 8
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %100, %86
  %104 = load i32, i32* %12, align 4
  ret i32 %104
}

declare dso_local i32 @kexec_add_buffer(%struct.kexec_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
