; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_verify_namespace_is_imported.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_verify_namespace_is_imported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.load_info = type { i32 }
%struct.kernel_symbol = type { i32 }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"import_ns\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"%s: module uses symbol (%s) from namespace %s, but does not import it.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.load_info*, %struct.kernel_symbol*, %struct.module*)* @verify_namespace_is_imported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_namespace_is_imported(%struct.load_info* %0, %struct.kernel_symbol* %1, %struct.module* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.load_info*, align 8
  %6 = alloca %struct.kernel_symbol*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.load_info* %0, %struct.load_info** %5, align 8
  store %struct.kernel_symbol* %1, %struct.kernel_symbol** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %10 = load %struct.kernel_symbol*, %struct.kernel_symbol** %6, align 8
  %11 = call i8* @kernel_symbol_namespace(%struct.kernel_symbol* %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load %struct.load_info*, %struct.load_info** %5, align 8
  %16 = call i8* @get_modinfo(%struct.load_info* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %26, %14
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %41

26:                                               ; preds = %20
  %27 = load %struct.load_info*, %struct.load_info** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @get_next_modinfo(%struct.load_info* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i8* %29, i8** %9, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.module*, %struct.module** %7, align 8
  %32 = getelementptr inbounds %struct.module, %struct.module* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kernel_symbol*, %struct.kernel_symbol** %6, align 8
  %35 = call i32 @kernel_symbol_name(%struct.kernel_symbol* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35, i8* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %30, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i8* @kernel_symbol_namespace(%struct.kernel_symbol*) #1

declare dso_local i8* @get_modinfo(%struct.load_info*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @get_next_modinfo(%struct.load_info*, i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i8*) #1

declare dso_local i32 @kernel_symbol_name(%struct.kernel_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
