; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_register_print_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_register_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32, %struct.printk_list* }
%struct.printk_list = type { i64, i8*, %struct.printk_list* }

@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_register_print_string(%struct.tep_handle* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.printk_list*, align 8
  %9 = alloca i8*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call %struct.printk_list* @malloc(i32 24)
  store %struct.printk_list* %10, %struct.printk_list** %8, align 8
  %11 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %12 = icmp ne %struct.printk_list* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %78

14:                                               ; preds = %3
  %15 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %16 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %15, i32 0, i32 1
  %17 = load %struct.printk_list*, %struct.printk_list** %16, align 8
  %18 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %19 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %18, i32 0, i32 2
  store %struct.printk_list* %17, %struct.printk_list** %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %22 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 34
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %28, %14
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strdup(i8* %32)
  %34 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %35 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %37 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %74

41:                                               ; preds = %31
  %42 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %43 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %46 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i8*, i8** %9, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %41
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 -2
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %64, %58
  %67 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %68 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %69 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %68, i32 0, i32 1
  store %struct.printk_list* %67, %struct.printk_list** %69, align 8
  %70 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %71 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %78

74:                                               ; preds = %40
  %75 = load %struct.printk_list*, %struct.printk_list** %8, align 8
  %76 = call i32 @free(%struct.printk_list* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %66, %13
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.printk_list* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(%struct.printk_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
