; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script_spec__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script_spec__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_spec = type { %struct.scripting_ops*, i32 }
%struct.scripting_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.script_spec* (i8*, %struct.scripting_ops*)* @script_spec__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.script_spec* @script_spec__new(i8* %0, %struct.scripting_ops* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.scripting_ops*, align 8
  %5 = alloca %struct.script_spec*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.scripting_ops* %1, %struct.scripting_ops** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = add i64 16, %7
  %9 = add i64 %8, 1
  %10 = call %struct.script_spec* @malloc(i64 %9)
  store %struct.script_spec* %10, %struct.script_spec** %5, align 8
  %11 = load %struct.script_spec*, %struct.script_spec** %5, align 8
  %12 = icmp ne %struct.script_spec* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.script_spec*, %struct.script_spec** %5, align 8
  %15 = getelementptr inbounds %struct.script_spec, %struct.script_spec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcpy(i32 %16, i8* %17)
  %19 = load %struct.scripting_ops*, %struct.scripting_ops** %4, align 8
  %20 = load %struct.script_spec*, %struct.script_spec** %5, align 8
  %21 = getelementptr inbounds %struct.script_spec, %struct.script_spec* %20, i32 0, i32 0
  store %struct.scripting_ops* %19, %struct.scripting_ops** %21, align 8
  br label %22

22:                                               ; preds = %13, %2
  %23 = load %struct.script_spec*, %struct.script_spec** %5, align 8
  ret %struct.script_spec* %23
}

declare dso_local %struct.script_spec* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
