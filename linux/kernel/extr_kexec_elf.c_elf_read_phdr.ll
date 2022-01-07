; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_read_phdr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_read_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kexec_elf_info = type { %struct.elfhdr*, i32* }
%struct.elfhdr = type { i32, i32* }
%struct.elf_phdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EI_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unknown ELF class.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.kexec_elf_info*, i32)* @elf_read_phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_read_phdr(i8* %0, i64 %1, %struct.kexec_elf_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kexec_elf_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.elf_phdr*, align 8
  %11 = alloca %struct.elfhdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.elf_phdr*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.kexec_elf_info* %2, %struct.kexec_elf_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %8, align 8
  %15 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = bitcast i32* %19 to %struct.elf_phdr*
  store %struct.elf_phdr* %20, %struct.elf_phdr** %10, align 8
  %21 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %8, align 8
  %22 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %21, i32 0, i32 0
  %23 = load %struct.elfhdr*, %struct.elfhdr** %22, align 8
  store %struct.elfhdr* %23, %struct.elfhdr** %11, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %8, align 8
  %26 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %25, i32 0, i32 0
  %27 = load %struct.elfhdr*, %struct.elfhdr** %26, align 8
  %28 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %24, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = bitcast i8* %36 to %struct.elf_phdr*
  store %struct.elf_phdr* %37, %struct.elf_phdr** %13, align 8
  %38 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %8, align 8
  %39 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %38, i32 0, i32 0
  %40 = load %struct.elfhdr*, %struct.elfhdr** %39, align 8
  %41 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %42 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %41, i32 0, i32 7
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @elf32_to_cpu(%struct.elfhdr* %40, i8* %43)
  %45 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %46 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load %struct.kexec_elf_info*, %struct.kexec_elf_info** %8, align 8
  %48 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %47, i32 0, i32 0
  %49 = load %struct.elfhdr*, %struct.elfhdr** %48, align 8
  %50 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %51 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %50, i32 0, i32 6
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @elf32_to_cpu(%struct.elfhdr* %49, i8* %52)
  %54 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %55 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %57 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @EI_CLASS, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %148 [
    i32 128, label %62
    i32 129, label %105
  ]

62:                                               ; preds = %4
  %63 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %64 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %65 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @elf64_to_cpu(%struct.elfhdr* %63, i8* %66)
  %68 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %69 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %71 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %72 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @elf64_to_cpu(%struct.elfhdr* %70, i8* %73)
  %75 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %76 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %78 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %79 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @elf64_to_cpu(%struct.elfhdr* %77, i8* %80)
  %82 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %83 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %85 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %86 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @elf64_to_cpu(%struct.elfhdr* %84, i8* %87)
  %89 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %90 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %92 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %93 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @elf64_to_cpu(%struct.elfhdr* %91, i8* %94)
  %96 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %97 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %99 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %100 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @elf64_to_cpu(%struct.elfhdr* %98, i8* %101)
  %103 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %104 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %152

105:                                              ; preds = %4
  %106 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %107 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %108 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @elf32_to_cpu(%struct.elfhdr* %106, i8* %109)
  %111 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %112 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %114 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %115 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @elf32_to_cpu(%struct.elfhdr* %113, i8* %116)
  %118 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %119 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %121 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %122 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @elf32_to_cpu(%struct.elfhdr* %120, i8* %123)
  %125 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %126 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %128 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %129 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i8* @elf32_to_cpu(%struct.elfhdr* %127, i8* %130)
  %132 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %133 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %135 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %136 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @elf32_to_cpu(%struct.elfhdr* %134, i8* %137)
  %139 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %140 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.elfhdr*, %struct.elfhdr** %11, align 8
  %142 = load %struct.elf_phdr*, %struct.elf_phdr** %13, align 8
  %143 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @elf32_to_cpu(%struct.elfhdr* %141, i8* %144)
  %146 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %147 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  br label %152

148:                                              ; preds = %4
  %149 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %163

152:                                              ; preds = %105, %62
  %153 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i64 @elf_is_phdr_sane(%struct.elf_phdr* %153, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %161

158:                                              ; preds = %152
  %159 = load i32, i32* @ENOEXEC, align 4
  %160 = sub nsw i32 0, %159
  br label %161

161:                                              ; preds = %158, %157
  %162 = phi i32 [ 0, %157 ], [ %160, %158 ]
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %148
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i8* @elf32_to_cpu(%struct.elfhdr*, i8*) #1

declare dso_local i8* @elf64_to_cpu(%struct.elfhdr*, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @elf_is_phdr_sane(%struct.elf_phdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
