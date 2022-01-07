; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_show_vma_header_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_show_vma_header_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i64, i64, i32, i64, i32, i64)* @show_vma_header_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_vma_header_prefix(%struct.seq_file* %0, i64 %1, i64 %2, i32 %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.seq_file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %16 = call i32 @seq_setwidth(%struct.seq_file* %15, i32 72)
  %17 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @seq_put_hex_ll(%struct.seq_file* %17, i8* null, i64 %18, i32 8)
  %20 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @seq_put_hex_ll(%struct.seq_file* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %21, i32 8)
  %23 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %24 = call i32 @seq_putc(%struct.seq_file* %23, i8 signext 32)
  %25 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @VM_READ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 114, i32 45
  %32 = trunc i32 %31 to i8
  %33 = call i32 @seq_putc(%struct.seq_file* %25, i8 signext %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @VM_WRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 119, i32 45
  %41 = trunc i32 %40 to i8
  %42 = call i32 @seq_putc(%struct.seq_file* %34, i8 signext %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @VM_EXEC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 120, i32 45
  %50 = trunc i32 %49 to i8
  %51 = call i32 @seq_putc(%struct.seq_file* %43, i8 signext %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @VM_MAYSHARE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 115, i32 112
  %59 = trunc i32 %58 to i8
  %60 = call i32 @seq_putc(%struct.seq_file* %52, i8 signext %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @seq_put_hex_ll(%struct.seq_file* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 8)
  %64 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @MAJOR(i32 %65)
  %67 = call i32 @seq_put_hex_ll(%struct.seq_file* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 2)
  %68 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @MINOR(i32 %69)
  %71 = call i32 @seq_put_hex_ll(%struct.seq_file* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %70, i32 2)
  %72 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @seq_put_decimal_ull(%struct.seq_file* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %76 = call i32 @seq_putc(%struct.seq_file* %75, i8 signext 32)
  ret void
}

declare dso_local i32 @seq_setwidth(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_put_hex_ll(%struct.seq_file*, i8*, i64, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32 @seq_put_decimal_ull(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
