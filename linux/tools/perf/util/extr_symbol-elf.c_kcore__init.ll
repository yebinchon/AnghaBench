; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcore = type { i32, i32, i32, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kcore*, i8*, i32, i32)* @kcore__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcore__init(%struct.kcore* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kcore*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kcore* %0, %struct.kcore** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.kcore*, %struct.kcore** %6, align 8
  %12 = getelementptr inbounds %struct.kcore, %struct.kcore* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @mkstemp(i8* %16)
  %18 = load %struct.kcore*, %struct.kcore** %6, align 8
  %19 = getelementptr inbounds %struct.kcore, %struct.kcore* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @O_EXCL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %21, i32 %26, i32 256)
  %28 = load %struct.kcore*, %struct.kcore** %6, align 8
  %29 = getelementptr inbounds %struct.kcore, %struct.kcore* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %15
  %31 = load %struct.kcore*, %struct.kcore** %6, align 8
  %32 = getelementptr inbounds %struct.kcore, %struct.kcore* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %73

36:                                               ; preds = %30
  %37 = load %struct.kcore*, %struct.kcore** %6, align 8
  %38 = getelementptr inbounds %struct.kcore, %struct.kcore* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ELF_C_WRITE, align 4
  %41 = call i32 @elf_begin(i32 %39, i32 %40, i32* null)
  %42 = load %struct.kcore*, %struct.kcore** %6, align 8
  %43 = getelementptr inbounds %struct.kcore, %struct.kcore* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.kcore*, %struct.kcore** %6, align 8
  %45 = getelementptr inbounds %struct.kcore, %struct.kcore* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %66

49:                                               ; preds = %36
  %50 = load %struct.kcore*, %struct.kcore** %6, align 8
  %51 = getelementptr inbounds %struct.kcore, %struct.kcore* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @gelf_newehdr(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %61

57:                                               ; preds = %49
  %58 = load %struct.kcore*, %struct.kcore** %6, align 8
  %59 = getelementptr inbounds %struct.kcore, %struct.kcore* %58, i32 0, i32 3
  %60 = call i32 @memset(i32* %59, i32 0, i32 4)
  store i32 0, i32* %5, align 4
  br label %73

61:                                               ; preds = %56
  %62 = load %struct.kcore*, %struct.kcore** %6, align 8
  %63 = getelementptr inbounds %struct.kcore, %struct.kcore* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @elf_end(i32 %64)
  br label %66

66:                                               ; preds = %61, %48
  %67 = load %struct.kcore*, %struct.kcore** %6, align 8
  %68 = getelementptr inbounds %struct.kcore, %struct.kcore* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @unlink(i8* %71)
  store i32 -1, i32* %5, align 4
  br label %73

73:                                               ; preds = %66, %57, %35
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @gelf_newehdr(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @elf_end(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
