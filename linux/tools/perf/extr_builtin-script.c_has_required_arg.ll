; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_has_required_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_has_required_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_desc = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @has_required_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_required_arg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.script_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = call %struct.script_desc* @script_desc__new(i32* null)
  store %struct.script_desc* %6, %struct.script_desc** %3, align 8
  %7 = load %struct.script_desc*, %struct.script_desc** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @read_script_info(%struct.script_desc* %7, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.script_desc*, %struct.script_desc** %3, align 8
  %14 = getelementptr inbounds %struct.script_desc, %struct.script_desc* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %39

18:                                               ; preds = %12
  %19 = load %struct.script_desc*, %struct.script_desc** %3, align 8
  %20 = getelementptr inbounds %struct.script_desc, %struct.script_desc* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %35, %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 60
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %22

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %17, %11
  %40 = load %struct.script_desc*, %struct.script_desc** %3, align 8
  %41 = call i32 @script_desc__delete(%struct.script_desc* %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.script_desc* @script_desc__new(i32*) #1

declare dso_local i64 @read_script_info(%struct.script_desc*, i8*) #1

declare dso_local i32 @script_desc__delete(%struct.script_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
