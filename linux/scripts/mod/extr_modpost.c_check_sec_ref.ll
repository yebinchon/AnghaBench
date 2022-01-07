; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_check_sec_ref.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_check_sec_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.elf_info = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@SHT_RELA = common dso_local global i64 0, align 8
@SHT_REL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, i8*, %struct.elf_info*)* @check_sec_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sec_ref(%struct.module* %0, i8* %1, %struct.elf_info* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.elf_info* %2, %struct.elf_info** %6, align 8
  %9 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %10 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %67, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %15 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %21 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %22 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = call i32 @check_section(i8* %19, %struct.elf_info* %20, %struct.TYPE_5__* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SHT_RELA, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %18
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %39 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %40 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = call i32 @section_rela(i8* %37, %struct.elf_info* %38, %struct.TYPE_5__* %44)
  br label %66

46:                                               ; preds = %18
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SHT_REL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %58 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %59 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = call i32 @section_rel(i8* %56, %struct.elf_info* %57, %struct.TYPE_5__* %63)
  br label %65

65:                                               ; preds = %55, %46
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %12

70:                                               ; preds = %12
  ret void
}

declare dso_local i32 @check_section(i8*, %struct.elf_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @section_rela(i8*, %struct.elf_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @section_rel(i8*, %struct.elf_info*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
