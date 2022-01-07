; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_export_from_secname.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_export_from_secname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"___ksymtab+\00", align 1
@export_plain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"___ksymtab_unused+\00", align 1
@export_unused = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"___ksymtab_gpl+\00", align 1
@export_gpl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"___ksymtab_unused_gpl+\00", align 1
@export_unused_gpl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"___ksymtab_gpl_future+\00", align 1
@export_gpl_future = common dso_local global i32 0, align 4
@export_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_info*, i32)* @export_from_secname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_from_secname(%struct.elf_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.elf_info* %0, %struct.elf_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @sec_name(%struct.elf_info* %7, i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strstarts(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @export_plain, align 4
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strstarts(i8* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @export_unused, align 4
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strstarts(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @export_gpl, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strstarts(i8* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @export_unused_gpl, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strstarts(i8* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @export_gpl_future, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @export_unknown, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37, %31, %25, %19, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i8* @sec_name(%struct.elf_info*, i32) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
