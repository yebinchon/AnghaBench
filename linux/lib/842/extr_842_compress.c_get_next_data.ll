; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_get_next_data.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_get_next_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i8**, i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw842_param*)* @get_next_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_next_data(%struct.sw842_param* %0) #0 {
  %2 = alloca %struct.sw842_param*, align 8
  store %struct.sw842_param* %0, %struct.sw842_param** %2, align 8
  %3 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %4 = call i8* @get_input_data(%struct.sw842_param* %3, i32 0, i32 64)
  %5 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %6 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %5, i32 0, i32 2
  %7 = load i8**, i8*** %6, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  store i8* %4, i8** %8, align 8
  %9 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %10 = call i8* @get_input_data(%struct.sw842_param* %9, i32 0, i32 32)
  %11 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %12 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %11, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  store i8* %10, i8** %14, align 8
  %15 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %16 = call i8* @get_input_data(%struct.sw842_param* %15, i32 4, i32 32)
  %17 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %18 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* %16, i8** %20, align 8
  %21 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %22 = call i8* @get_input_data(%struct.sw842_param* %21, i32 0, i32 16)
  %23 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %24 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %22, i8** %26, align 8
  %27 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %28 = call i8* @get_input_data(%struct.sw842_param* %27, i32 2, i32 16)
  %29 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %30 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  store i8* %28, i8** %32, align 8
  %33 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %34 = call i8* @get_input_data(%struct.sw842_param* %33, i32 4, i32 16)
  %35 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %36 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  store i8* %34, i8** %38, align 8
  %39 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %40 = call i8* @get_input_data(%struct.sw842_param* %39, i32 6, i32 16)
  %41 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %42 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  store i8* %40, i8** %44, align 8
  ret void
}

declare dso_local i8* @get_input_data(%struct.sw842_param*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
