; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_find_option.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64, i32, i64 }

@OPTION_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.option* (%struct.option*, i32, i8*)* @find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.option* @find_option(%struct.option* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca %struct.option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  br label %8

8:                                                ; preds = %41, %3
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OPTION_END, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.option*, %struct.option** %5, align 8
  %19 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %38, label %23

23:                                               ; preds = %17, %14
  %24 = load %struct.option*, %struct.option** %5, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.option*, %struct.option** %5, align 8
  %33 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strcmp(i64 %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31, %17
  %39 = load %struct.option*, %struct.option** %5, align 8
  store %struct.option* %39, %struct.option** %4, align 8
  br label %45

40:                                               ; preds = %31, %28, %23
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.option*, %struct.option** %5, align 8
  %43 = getelementptr inbounds %struct.option, %struct.option* %42, i32 1
  store %struct.option* %43, %struct.option** %5, align 8
  br label %8

44:                                               ; preds = %8
  store %struct.option* null, %struct.option** %4, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.option*, %struct.option** %4, align 8
  ret %struct.option* %46
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
