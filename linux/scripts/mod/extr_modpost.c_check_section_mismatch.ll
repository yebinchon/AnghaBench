; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_check_section_mismatch.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_check_section_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32 }
%struct.sectioncheck = type { i32 (i8*, %struct.elf_info.0*, %struct.sectioncheck*, i32*, i32*, i8*)* }
%struct.elf_info.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.elf_info*, i32*, i32*, i8*)* @check_section_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_section_mismatch(i8* %0, %struct.elf_info* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.elf_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sectioncheck*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.elf_info* %1, %struct.elf_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %14 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @get_secindex(%struct.elf_info* %14, i32* %15)
  %17 = call i8* @sec_name(%struct.elf_info* %13, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call %struct.sectioncheck* @section_mismatch(i8* %18, i8* %19)
  store %struct.sectioncheck* %20, %struct.sectioncheck** %12, align 8
  %21 = load %struct.sectioncheck*, %struct.sectioncheck** %12, align 8
  %22 = icmp ne %struct.sectioncheck* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %5
  %24 = load %struct.sectioncheck*, %struct.sectioncheck** %12, align 8
  %25 = getelementptr inbounds %struct.sectioncheck, %struct.sectioncheck* %24, i32 0, i32 0
  %26 = load i32 (i8*, %struct.elf_info.0*, %struct.sectioncheck*, i32*, i32*, i8*)*, i32 (i8*, %struct.elf_info.0*, %struct.sectioncheck*, i32*, i32*, i8*)** %25, align 8
  %27 = icmp ne i32 (i8*, %struct.elf_info.0*, %struct.sectioncheck*, i32*, i32*, i8*)* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.sectioncheck*, %struct.sectioncheck** %12, align 8
  %30 = getelementptr inbounds %struct.sectioncheck, %struct.sectioncheck* %29, i32 0, i32 0
  %31 = load i32 (i8*, %struct.elf_info.0*, %struct.sectioncheck*, i32*, i32*, i8*)*, i32 (i8*, %struct.elf_info.0*, %struct.sectioncheck*, i32*, i32*, i8*)** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %34 = bitcast %struct.elf_info* %33 to %struct.elf_info.0*
  %35 = load %struct.sectioncheck*, %struct.sectioncheck** %12, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 %31(i8* %32, %struct.elf_info.0* %34, %struct.sectioncheck* %35, i32* %36, i32* %37, i8* %38)
  br label %48

40:                                               ; preds = %23
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %43 = load %struct.sectioncheck*, %struct.sectioncheck** %12, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @default_mismatch_handler(i8* %41, %struct.elf_info* %42, %struct.sectioncheck* %43, i32* %44, i32* %45, i8* %46)
  br label %48

48:                                               ; preds = %40, %28
  br label %49

49:                                               ; preds = %48, %5
  ret void
}

declare dso_local i8* @sec_name(%struct.elf_info*, i32) #1

declare dso_local i32 @get_secindex(%struct.elf_info*, i32*) #1

declare dso_local %struct.sectioncheck* @section_mismatch(i8*, i8*) #1

declare dso_local i32 @default_mismatch_handler(i8*, %struct.elf_info*, %struct.sectioncheck*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
