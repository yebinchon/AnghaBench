; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ia64/extr_aliasing-test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ia64/extr_aliasing-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"/dev/mem\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"PASS: /dev/mem 0x0-0xa0000 is readable\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"FAIL: /dev/mem 0x0-0xa0000 not accessible\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"PASS: /dev/mem 0xa0000-0xc0000 is mappable\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"FAIL: /dev/mem 0xa0000-0xc0000 not accessible\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"PASS: /dev/mem 0xc0000-0x100000 is readable\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"FAIL: /dev/mem 0xc0000-0x100000 not accessible\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"PASS: /dev/mem 0x0-0x100000 is mappable\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"PASS: /dev/mem 0x0-0x100000 not mappable\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"FAIL: /dev/mem 0x0-0x100000 not accessible\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"/sys/class/pci_bus\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"legacy_mem\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"/sys/devices\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"/proc/bus/pci\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"??.?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @map_mem(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 655360, i32 1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %5
  %12 = call i32 @map_mem(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 655360, i32 131072, i32 0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = call i32 @map_mem(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 786432, i32 262144, i32 1)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = call i32 @map_mem(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 1048576, i32 0)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %46

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %33
  %47 = call i32 @scan_tree(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 655360, i32 1)
  %48 = call i32 @scan_tree(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 655360, i32 131072, i32 0)
  %49 = call i32 @scan_tree(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 786432, i32 262144, i32 1)
  %50 = call i32 @scan_tree(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 1048576, i32 0)
  %51 = call i32 @scan_rom(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %52 = call i32 @scan_tree(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 0, i32 655360, i32 1)
  %53 = call i32 @scan_tree(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 655360, i32 131072, i32 0)
  %54 = call i32 @scan_tree(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 786432, i32 262144, i32 1)
  %55 = call i32 @scan_tree(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 0, i32 1048576, i32 0)
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @map_mem(i8*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @scan_tree(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @scan_rom(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
