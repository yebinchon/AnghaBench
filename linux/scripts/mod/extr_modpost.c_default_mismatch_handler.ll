; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_default_mismatch_handler.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_default_mismatch_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32 }
%struct.sectioncheck = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"reference___initcall\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.elf_info*, %struct.sectioncheck*, %struct.TYPE_3__*, i32*, i8*)* @default_mismatch_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_mismatch_handler(i8* %0, %struct.elf_info* %1, %struct.sectioncheck* %2, %struct.TYPE_3__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf_info*, align 8
  %9 = alloca %struct.sectioncheck*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.elf_info* %1, %struct.elf_info** %8, align 8
  store %struct.sectioncheck* %2, %struct.sectioncheck** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = call i32* @find_elf_symbol2(%struct.elf_info* %18, i32 %21, i8* %22)
  store i32* %23, i32** %15, align 8
  %24 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = call i8* @sym_name(%struct.elf_info* %24, i32* %25)
  store i8* %26, i8** %17, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = call i64 @strstarts(i8* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  br label %68

31:                                               ; preds = %6
  %32 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %33 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @get_secindex(%struct.elf_info* %33, i32* %34)
  %36 = call i8* @sec_name(%struct.elf_info* %32, i32 %35)
  store i8* %36, i8** %13, align 8
  %37 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @find_elf_symbol(%struct.elf_info* %37, i32 %40, i32* %41)
  store i32* %42, i32** %14, align 8
  %43 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = call i8* @sym_name(%struct.elf_info* %43, i32* %44)
  store i8* %45, i8** %16, align 8
  %46 = load %struct.sectioncheck*, %struct.sectioncheck** %9, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = call i64 @secref_whitelist(%struct.sectioncheck* %46, i8* %47, i8* %48, i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %31
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.sectioncheck*, %struct.sectioncheck** %9, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @is_function(i32* %61)
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @is_function(i32* %65)
  %67 = call i32 @report_sec_mismatch(i8* %54, %struct.sectioncheck* %55, i8* %56, i32 %59, i8* %60, i32 %62, i8* %63, i8* %64, i32 %66)
  br label %68

68:                                               ; preds = %30, %53, %31
  ret void
}

declare dso_local i32* @find_elf_symbol2(%struct.elf_info*, i32, i8*) #1

declare dso_local i8* @sym_name(%struct.elf_info*, i32*) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

declare dso_local i8* @sec_name(%struct.elf_info*, i32) #1

declare dso_local i32 @get_secindex(%struct.elf_info*, i32*) #1

declare dso_local i32* @find_elf_symbol(%struct.elf_info*, i32, i32*) #1

declare dso_local i64 @secref_whitelist(%struct.sectioncheck*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @report_sec_mismatch(i8*, %struct.sectioncheck*, i8*, i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @is_function(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
