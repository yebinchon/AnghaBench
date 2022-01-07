; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore__open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcore = type { i32, i64, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i32 0, align 4
@ELFCLASSNONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kcore*, i8*)* @kcore__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcore__open(%struct.kcore* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kcore*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.kcore* %0, %struct.kcore** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  %10 = load %struct.kcore*, %struct.kcore** %4, align 8
  %11 = getelementptr inbounds %struct.kcore, %struct.kcore* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.kcore*, %struct.kcore** %4, align 8
  %13 = getelementptr inbounds %struct.kcore, %struct.kcore* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.kcore*, %struct.kcore** %4, align 8
  %19 = getelementptr inbounds %struct.kcore, %struct.kcore* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ELF_C_READ, align 4
  %22 = call i32 @elf_begin(i32 %20, i32 %21, i32* null)
  %23 = load %struct.kcore*, %struct.kcore** %4, align 8
  %24 = getelementptr inbounds %struct.kcore, %struct.kcore* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.kcore*, %struct.kcore** %4, align 8
  %26 = getelementptr inbounds %struct.kcore, %struct.kcore* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %59

30:                                               ; preds = %17
  %31 = load %struct.kcore*, %struct.kcore** %4, align 8
  %32 = getelementptr inbounds %struct.kcore, %struct.kcore* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @gelf_getclass(i32 %33)
  %35 = load %struct.kcore*, %struct.kcore** %4, align 8
  %36 = getelementptr inbounds %struct.kcore, %struct.kcore* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.kcore*, %struct.kcore** %4, align 8
  %38 = getelementptr inbounds %struct.kcore, %struct.kcore* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ELFCLASSNONE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %54

43:                                               ; preds = %30
  %44 = load %struct.kcore*, %struct.kcore** %4, align 8
  %45 = getelementptr inbounds %struct.kcore, %struct.kcore* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.kcore*, %struct.kcore** %4, align 8
  %48 = getelementptr inbounds %struct.kcore, %struct.kcore* %47, i32 0, i32 3
  %49 = call i32* @gelf_getehdr(i32 %46, i32* %48)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %54

53:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %64

54:                                               ; preds = %52, %42
  %55 = load %struct.kcore*, %struct.kcore** %4, align 8
  %56 = getelementptr inbounds %struct.kcore, %struct.kcore* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @elf_end(i32 %57)
  br label %59

59:                                               ; preds = %54, %29
  %60 = load %struct.kcore*, %struct.kcore** %4, align 8
  %61 = getelementptr inbounds %struct.kcore, %struct.kcore* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @close(i32 %62)
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %53, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @elf_begin(i32, i32, i32*) #1

declare dso_local i64 @gelf_getclass(i32) #1

declare dso_local i32* @gelf_getehdr(i32, i32*) #1

declare dso_local i32 @elf_end(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
