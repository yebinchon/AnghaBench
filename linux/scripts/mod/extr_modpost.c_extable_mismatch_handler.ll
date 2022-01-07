; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_extable_mismatch_handler.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_extable_mismatch_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32 }
%struct.sectioncheck = type { i32 }
%struct.TYPE_5__ = type { i64 }

@sec_mismatch_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [225 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is black-listed.\0ASomething is seriously wrong and should be fixed.\0AYou might get more information about where this is\0Acoming from by using scripts/check_extable.sh %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [192 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is not executable, IOW\0Ait is not possible for the kernel to fault\0Aat that address.  Something is seriously wrong\0Aand should be fixed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [186 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is not executable, IOW\0Athe kernel will fault if it ever tries to\0Ajump to it.  Something is seriously wrong\0Aand should be fixed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.elf_info*, %struct.sectioncheck*, %struct.TYPE_5__*, i32*, i8*)* @extable_mismatch_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extable_mismatch_handler(i8* %0, %struct.elf_info* %1, %struct.sectioncheck* %2, %struct.TYPE_5__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf_info*, align 8
  %9 = alloca %struct.sectioncheck*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.elf_info* %1, %struct.elf_info** %8, align 8
  store %struct.sectioncheck* %2, %struct.sectioncheck** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %15 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @get_secindex(%struct.elf_info* %15, i32* %16)
  %18 = call i8* @sec_name(%struct.elf_info* %14, i32 %17)
  store i8* %18, i8** %13, align 8
  %19 = load i32, i32* @sec_mismatch_count, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @sec_mismatch_count, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %23 = load %struct.sectioncheck*, %struct.sectioncheck** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @report_extable_warnings(i8* %21, %struct.elf_info* %22, %struct.sectioncheck* %23, %struct.TYPE_5__* %24, i32* %25, i8* %26, i8* %27)
  %29 = load i8*, i8** %13, align 8
  %30 = load %struct.sectioncheck*, %struct.sectioncheck** %9, align 8
  %31 = getelementptr inbounds %struct.sectioncheck, %struct.sectioncheck* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @match(i8* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %6
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, i8*, i64, i8*, ...) @fatal(i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str, i64 0, i64 0), i8* %36, i64 %39, i8* %40, i8* %41)
  br label %70

43:                                               ; preds = %6
  %44 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %45 = load %struct.elf_info*, %struct.elf_info** %8, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @get_secindex(%struct.elf_info* %45, i32* %46)
  %48 = call i32 @is_executable_section(%struct.elf_info* %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = call i64 @is_extable_fault_address(%struct.TYPE_5__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 (i8*, i8*, i64, i8*, ...) @fatal(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.1, i64 0, i64 0), i8* %55, i64 %58, i8* %59)
  br label %68

61:                                               ; preds = %50
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 (i8*, i8*, i64, i8*, ...) @fatal(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.2, i64 0, i64 0), i8* %62, i64 %65, i8* %66)
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69, %35
  ret void
}

declare dso_local i8* @sec_name(%struct.elf_info*, i32) #1

declare dso_local i32 @get_secindex(%struct.elf_info*, i32*) #1

declare dso_local i32 @report_extable_warnings(i8*, %struct.elf_info*, %struct.sectioncheck*, %struct.TYPE_5__*, i32*, i8*, i8*) #1

declare dso_local i64 @match(i8*, i32) #1

declare dso_local i32 @fatal(i8*, i8*, i64, i8*, ...) #1

declare dso_local i32 @is_executable_section(%struct.elf_info*, i32) #1

declare dso_local i64 @is_extable_fault_address(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
