; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_get_next_modinfo.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_get_next_modinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.elf_info*, i8*, i8*)* @get_next_modinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_next_modinfo(%struct.elf_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elf_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.elf_info* %0, %struct.elf_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %15 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %18 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i64, i64* %11, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %11, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @next_string(i8* %30, i64* %11)
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %22, %3
  %33 = load i8*, i8** %10, align 8
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %58, %32
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @strncmp(i8* %38, i8* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 61
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %4, align 8
  br label %62

57:                                               ; preds = %43, %37
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @next_string(i8* %59, i64* %11)
  store i8* %60, i8** %8, align 8
  br label %34

61:                                               ; preds = %34
  store i8* null, i8** %4, align 8
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @next_string(i8*, i64*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
