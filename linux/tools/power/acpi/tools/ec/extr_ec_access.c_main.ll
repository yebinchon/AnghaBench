; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/ec/extr_ec_access.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/ec/extr_ec_access.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@read_mode = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SYSFS_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@read_byte_offset = common dso_local global i32 0, align 4
@EC_SPACE_SIZE = common dso_local global i32 0, align 4
@write_byte_offset = common dso_local global i32 0, align 4
@write_value = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @parse_opts(i32 %9, i8** %10)
  %12 = load i32, i32* @read_mode, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @O_WRONLY, align 4
  store i32 %15, i32* %6, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @read_mode, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @O_RDONLY, align 4
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %16
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @usage(i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %19
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* @SYSFS_PATH, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @open(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = load i32, i32* @SYSFS_PATH, align 4
  %37 = call i32 @err(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* @read_mode, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i32, i32* @read_byte_offset, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dump_ec(i32 %45)
  br label %65

47:                                               ; preds = %41
  %48 = load i32, i32* @read_byte_offset, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @read_byte_offset, align 4
  %52 = load i32, i32* @EC_SPACE_SIZE, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50, %47
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = call i32 @usage(i8* %57, i32 %58)
  br label %64

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @read_byte_offset, align 4
  %63 = call i32 @read_ec_val(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %54
  br label %65

65:                                               ; preds = %64, %44
  br label %71

66:                                               ; preds = %38
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @write_byte_offset, align 4
  %69 = load i32, i32* @write_value, align 4
  %70 = call i32 @write_ec_val(i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %65
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i32, i32* @EXIT_SUCCESS, align 4
  %75 = call i32 @exit(i32 %74) #3
  unreachable
}

declare dso_local i32 @parse_opts(i32, i8**) #1

declare dso_local i32 @usage(i8*, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @dump_ec(i32) #1

declare dso_local i32 @read_ec_val(i32, i32) #1

declare dso_local i32 @write_ec_val(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
