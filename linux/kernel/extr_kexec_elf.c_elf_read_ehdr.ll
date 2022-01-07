; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_read_ehdr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_read_ehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [41 x i8] c"Buffer is too small to hold ELF header.\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No ELF header magic.\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ELF_CLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Not a supported ELF class.\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2LSB = common dso_local global i32 0, align 4
@ELFDATA2MSB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Not a supported ELF data format.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Bad ELF header size.\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Unknown ELF class.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.elfhdr*)* @elf_read_ehdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_read_ehdr(i8* %0, i64 %1, %struct.elfhdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.elfhdr*, align 8
  %8 = alloca %struct.elfhdr*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.elfhdr* %2, %struct.elfhdr** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 80
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOEXEC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %209

15:                                               ; preds = %3
  %16 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %17 = call i32 @memset(%struct.elfhdr* %16, i32 0, i32 80)
  %18 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %19 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @memcpy(i32* %20, i8* %21, i32 8)
  %23 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %24 = call i32 @elf_is_elf_file(%struct.elfhdr* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOEXEC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %209

30:                                               ; preds = %15
  %31 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %32 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @EI_CLASS, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ELF_CLASS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENOEXEC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %209

43:                                               ; preds = %30
  %44 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %45 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @EI_DATA, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ELFDATA2LSB, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %54 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @EI_DATA, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ELFDATA2MSB, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @ENOEXEC, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %209

65:                                               ; preds = %52, %43
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to %struct.elfhdr*
  store %struct.elfhdr* %68, %struct.elfhdr** %8, align 8
  %69 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %70 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %71 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @elf16_to_cpu(%struct.elfhdr* %69, i32 %72)
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 80
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @ENOEXEC, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %209

80:                                               ; preds = %66
  %81 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %82 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %83 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @elf16_to_cpu(%struct.elfhdr* %81, i32 %84)
  %86 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %87 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %89 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %90 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @elf16_to_cpu(%struct.elfhdr* %88, i32 %91)
  %93 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %94 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %96 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %97 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %96, i32 0, i32 13
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @elf32_to_cpu(%struct.elfhdr* %95, i8* %98)
  %100 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %101 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %100, i32 0, i32 13
  store i8* %99, i8** %101, align 8
  %102 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %103 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %104 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %103, i32 0, i32 12
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @elf32_to_cpu(%struct.elfhdr* %102, i8* %105)
  %107 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %108 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %107, i32 0, i32 12
  store i8* %106, i8** %108, align 8
  %109 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %110 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %111 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @elf16_to_cpu(%struct.elfhdr* %109, i32 %112)
  %114 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %115 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %117 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %118 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @elf16_to_cpu(%struct.elfhdr* %116, i32 %119)
  %121 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %122 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 8
  %123 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %124 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %125 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @elf16_to_cpu(%struct.elfhdr* %123, i32 %126)
  %128 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %129 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %131 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %132 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @elf16_to_cpu(%struct.elfhdr* %130, i32 %133)
  %135 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %136 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  %137 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %138 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %139 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @elf16_to_cpu(%struct.elfhdr* %137, i32 %140)
  %142 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %143 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 4
  %144 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %145 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @EI_CLASS, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  switch i32 %149, label %194 [
    i32 128, label %150
    i32 129, label %172
  ]

150:                                              ; preds = %80
  %151 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %152 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %153 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %152, i32 0, i32 11
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @elf64_to_cpu(%struct.elfhdr* %151, i8* %154)
  %156 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %157 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %156, i32 0, i32 11
  store i8* %155, i8** %157, align 8
  %158 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %159 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %160 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %159, i32 0, i32 10
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @elf64_to_cpu(%struct.elfhdr* %158, i8* %161)
  %163 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %164 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %163, i32 0, i32 10
  store i8* %162, i8** %164, align 8
  %165 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %166 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %167 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %166, i32 0, i32 9
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @elf64_to_cpu(%struct.elfhdr* %165, i8* %168)
  %170 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %171 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %170, i32 0, i32 9
  store i8* %169, i8** %171, align 8
  br label %198

172:                                              ; preds = %80
  %173 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %174 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %175 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %174, i32 0, i32 11
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @elf32_to_cpu(%struct.elfhdr* %173, i8* %176)
  %178 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %179 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %178, i32 0, i32 11
  store i8* %177, i8** %179, align 8
  %180 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %181 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %182 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %181, i32 0, i32 10
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @elf32_to_cpu(%struct.elfhdr* %180, i8* %183)
  %185 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %186 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %185, i32 0, i32 10
  store i8* %184, i8** %186, align 8
  %187 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %188 = load %struct.elfhdr*, %struct.elfhdr** %8, align 8
  %189 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %188, i32 0, i32 9
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @elf32_to_cpu(%struct.elfhdr* %187, i8* %190)
  %192 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %193 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %192, i32 0, i32 9
  store i8* %191, i8** %193, align 8
  br label %198

194:                                              ; preds = %80
  %195 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  br label %209

198:                                              ; preds = %172, %150
  %199 = load %struct.elfhdr*, %struct.elfhdr** %7, align 8
  %200 = load i64, i64* %6, align 8
  %201 = call i64 @elf_is_ehdr_sane(%struct.elfhdr* %199, i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %207

204:                                              ; preds = %198
  %205 = load i32, i32* @ENOEXEC, align 4
  %206 = sub nsw i32 0, %205
  br label %207

207:                                              ; preds = %204, %203
  %208 = phi i32 [ 0, %203 ], [ %206, %204 ]
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %194, %76, %61, %39, %26, %11
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @memset(%struct.elfhdr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @elf_is_elf_file(%struct.elfhdr*) #1

declare dso_local i32 @elf16_to_cpu(%struct.elfhdr*, i32) #1

declare dso_local i8* @elf32_to_cpu(%struct.elfhdr*, i8*) #1

declare dso_local i8* @elf64_to_cpu(%struct.elfhdr*, i8*) #1

declare dso_local i64 @elf_is_ehdr_sane(%struct.elfhdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
