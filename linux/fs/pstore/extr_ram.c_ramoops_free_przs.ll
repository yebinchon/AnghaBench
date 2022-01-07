; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_free_przs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_free_przs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ramoops_context = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ramoops_context*)* @ramoops_free_przs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ramoops_free_przs(%struct.ramoops_context* %0) #0 {
  %2 = alloca %struct.ramoops_context*, align 8
  %3 = alloca i32, align 4
  store %struct.ramoops_context* %0, %struct.ramoops_context** %2, align 8
  %4 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %5 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %24, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %12 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %17 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @persistent_ram_free(i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %29 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %33 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %36 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %43 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %48 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @persistent_ram_free(i32 %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %60 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load %struct.ramoops_context*, %struct.ramoops_context** %2, align 8
  %64 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %34
  ret void
}

declare dso_local i32 @persistent_ram_free(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
