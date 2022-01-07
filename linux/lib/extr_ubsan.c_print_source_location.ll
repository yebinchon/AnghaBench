; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c_print_source_location.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c_print_source_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.source_location = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s %s:%d:%d\0A\00", align 1
@LINE_MASK = common dso_local global i32 0, align 4
@COLUMN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.source_location*)* @print_source_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_source_location(i8* %0, %struct.source_location* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.source_location*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.source_location* %1, %struct.source_location** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.source_location*, %struct.source_location** %4, align 8
  %7 = getelementptr inbounds %struct.source_location, %struct.source_location* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.source_location*, %struct.source_location** %4, align 8
  %10 = getelementptr inbounds %struct.source_location, %struct.source_location* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LINE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.source_location*, %struct.source_location** %4, align 8
  %15 = getelementptr inbounds %struct.source_location, %struct.source_location* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @COLUMN_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %8, i32 %13, i32 %18)
  ret void
}

declare dso_local i32 @pr_err(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
