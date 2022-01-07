; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-debugfs.c_do_c_mask.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-debugfs.c_do_c_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.client_debug_mask = type { i32, i32 }

@cdm_array = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.client_debug_mask**)* @do_c_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_c_mask(i32 %0, i8* %1, %struct.client_debug_mask** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.client_debug_mask**, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.client_debug_mask** %2, %struct.client_debug_mask*** %6, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cdm_array, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %3
  %17 = load %struct.client_debug_mask**, %struct.client_debug_mask*** %6, align 8
  %18 = load %struct.client_debug_mask*, %struct.client_debug_mask** %17, align 8
  %19 = getelementptr inbounds %struct.client_debug_mask, %struct.client_debug_mask* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cdm_array, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %20, %26
  %28 = load %struct.client_debug_mask**, %struct.client_debug_mask*** %6, align 8
  %29 = load %struct.client_debug_mask*, %struct.client_debug_mask** %28, align 8
  %30 = getelementptr inbounds %struct.client_debug_mask, %struct.client_debug_mask* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.client_debug_mask**, %struct.client_debug_mask*** %6, align 8
  %32 = load %struct.client_debug_mask*, %struct.client_debug_mask** %31, align 8
  %33 = getelementptr inbounds %struct.client_debug_mask, %struct.client_debug_mask* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cdm_array, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %34, %40
  %42 = load %struct.client_debug_mask**, %struct.client_debug_mask*** %6, align 8
  %43 = load %struct.client_debug_mask*, %struct.client_debug_mask** %42, align 8
  %44 = getelementptr inbounds %struct.client_debug_mask, %struct.client_debug_mask* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
