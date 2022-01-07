; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_update_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_update_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i32, i64, i32, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbuffer*)* @update_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_pointers(%struct.kbuffer* %0) #0 {
  %2 = alloca %struct.kbuffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.kbuffer* %0, %struct.kbuffer** %2, align 8
  %7 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %8 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %11 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %9, i64 %13
  store i8* %14, i8** %6, align 8
  %15 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @translate_data(%struct.kbuffer* %15, i8* %16, i8** %6, i64* %3, i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %20 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @calc_index(%struct.kbuffer* %23, i8* %24)
  %26 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %27 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %29 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %35 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @translate_data(%struct.kbuffer*, i8*, i8**, i64*, i32*) #1

declare dso_local i32 @calc_index(%struct.kbuffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
