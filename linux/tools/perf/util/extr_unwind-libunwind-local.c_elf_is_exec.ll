; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_elf_is_exec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_elf_is_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@PERF_ELF_C_READ_MMAP = common dso_local global i32 0, align 4
@ET_EXEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"unwind: elf_is_exec(%s): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @elf_is_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_is_exec(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PERF_ELF_C_READ_MMAP, align 4
  %11 = call i32* @elf_begin(i32 %9, i32 %10, i32* null)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @gelf_getehdr(i32* %16, %struct.TYPE_3__* %7)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ET_EXEC, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @elf_end(i32* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
