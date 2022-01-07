; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_register_function.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_register_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32, %struct.func_list* }
%struct.func_list = type { i64, %struct.func_list*, i32*, %struct.func_list* }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_register_function(%struct.tep_handle* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.func_list*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call %struct.func_list* @malloc(i32 32)
  store %struct.func_list* %11, %struct.func_list** %10, align 8
  %12 = load %struct.func_list*, %struct.func_list** %10, align 8
  %13 = icmp ne %struct.func_list* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %71

15:                                               ; preds = %4
  %16 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %17 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %16, i32 0, i32 1
  %18 = load %struct.func_list*, %struct.func_list** %17, align 8
  %19 = load %struct.func_list*, %struct.func_list** %10, align 8
  %20 = getelementptr inbounds %struct.func_list, %struct.func_list* %19, i32 0, i32 3
  store %struct.func_list* %18, %struct.func_list** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strdup(i8* %21)
  %23 = bitcast i8* %22 to %struct.func_list*
  %24 = load %struct.func_list*, %struct.func_list** %10, align 8
  %25 = getelementptr inbounds %struct.func_list, %struct.func_list* %24, i32 0, i32 1
  store %struct.func_list* %23, %struct.func_list** %25, align 8
  %26 = load %struct.func_list*, %struct.func_list** %10, align 8
  %27 = getelementptr inbounds %struct.func_list, %struct.func_list* %26, i32 0, i32 1
  %28 = load %struct.func_list*, %struct.func_list** %27, align 8
  %29 = icmp ne %struct.func_list* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  br label %67

31:                                               ; preds = %15
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strdup(i8* %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.func_list*, %struct.func_list** %10, align 8
  %39 = getelementptr inbounds %struct.func_list, %struct.func_list* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.func_list*, %struct.func_list** %10, align 8
  %41 = getelementptr inbounds %struct.func_list, %struct.func_list* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %60

45:                                               ; preds = %34
  br label %49

46:                                               ; preds = %31
  %47 = load %struct.func_list*, %struct.func_list** %10, align 8
  %48 = getelementptr inbounds %struct.func_list, %struct.func_list* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.func_list*, %struct.func_list** %10, align 8
  %52 = getelementptr inbounds %struct.func_list, %struct.func_list* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.func_list*, %struct.func_list** %10, align 8
  %54 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %55 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %54, i32 0, i32 1
  store %struct.func_list* %53, %struct.func_list** %55, align 8
  %56 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %57 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  store i32 0, i32* %5, align 4
  br label %71

60:                                               ; preds = %44
  %61 = load %struct.func_list*, %struct.func_list** %10, align 8
  %62 = getelementptr inbounds %struct.func_list, %struct.func_list* %61, i32 0, i32 1
  %63 = load %struct.func_list*, %struct.func_list** %62, align 8
  %64 = call i32 @free(%struct.func_list* %63)
  %65 = load %struct.func_list*, %struct.func_list** %10, align 8
  %66 = getelementptr inbounds %struct.func_list, %struct.func_list* %65, i32 0, i32 1
  store %struct.func_list* null, %struct.func_list** %66, align 8
  br label %67

67:                                               ; preds = %60, %30
  %68 = load %struct.func_list*, %struct.func_list** %10, align 8
  %69 = call i32 @free(%struct.func_list* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %49, %14
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.func_list* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.func_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
