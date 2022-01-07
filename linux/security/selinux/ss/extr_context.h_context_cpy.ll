; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_context.h_context_cpy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_context.h_context_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32*, i64, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.context*)* @context_cpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_cpy(%struct.context* %0, %struct.context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.context* %1, %struct.context** %5, align 8
  %7 = load %struct.context*, %struct.context** %5, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.context*, %struct.context** %4, align 8
  %11 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.context*, %struct.context** %5, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.context*, %struct.context** %4, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.context*, %struct.context** %5, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.context*, %struct.context** %4, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.context*, %struct.context** %5, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %2
  %27 = load %struct.context*, %struct.context** %5, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i32* @kstrdup(i32* %29, i32 %30)
  %32 = load %struct.context*, %struct.context** %4, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.context*, %struct.context** %4, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %65

41:                                               ; preds = %26
  %42 = load %struct.context*, %struct.context** %5, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.context*, %struct.context** %4, align 8
  %46 = getelementptr inbounds %struct.context, %struct.context* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %52

47:                                               ; preds = %2
  %48 = load %struct.context*, %struct.context** %4, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.context*, %struct.context** %4, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.context*, %struct.context** %4, align 8
  %54 = load %struct.context*, %struct.context** %5, align 8
  %55 = call i32 @mls_context_cpy(%struct.context* %53, %struct.context* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.context*, %struct.context** %4, align 8
  %60 = getelementptr inbounds %struct.context, %struct.context* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %58, %38
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @kstrdup(i32*, i32) #1

declare dso_local i32 @mls_context_cpy(%struct.context*, %struct.context*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
