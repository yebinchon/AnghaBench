; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_u32_test1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_u32_test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }

@idr_u32_test1.warned = internal global i32 0, align 4
@DUMMY_PTR = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vvv Ignore these warnings\0A\00", align 1
@idr_u32_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"^^^ Warnings over\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_u32_test1(%struct.idr* %0, i32 %1) #0 {
  %3 = alloca %struct.idr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.idr* %0, %struct.idr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.idr*, %struct.idr** %3, align 8
  %10 = load i8*, i8** @DUMMY_PTR, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @idr_alloc_u32(%struct.idr* %9, i8* %10, i32* %5, i32 %11, i32 %12)
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.idr*, %struct.idr** %3, align 8
  %21 = load i8*, i8** @DUMMY_PTR, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @idr_alloc_u32(%struct.idr* %20, i8* %21, i32* %5, i32 %22, i32 %23)
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* @idr_u32_test1.warned, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @INT_MAX, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37, %2
  %44 = load %struct.idr*, %struct.idr** %3, align 8
  %45 = call i8* @idr_get_next(%struct.idr* %44, i32* %6)
  store i8* %45, i8** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @INT_MAX, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  br label %69

58:                                               ; preds = %43
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** @DUMMY_PTR, align 8
  %61 = icmp ne i8* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  br label %69

69:                                               ; preds = %58, %49
  %70 = load %struct.idr*, %struct.idr** %3, align 8
  %71 = load i32, i32* @idr_u32_cb, align 4
  %72 = call i32 @idr_for_each(%struct.idr* %70, i32 %71, i32* null)
  %73 = load i32, i32* @idr_u32_test1.warned, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @INT_MAX, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @idr_u32_test1.warned, align 4
  br label %81

81:                                               ; preds = %79, %75, %69
  %82 = load %struct.idr*, %struct.idr** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i8* @idr_remove(%struct.idr* %82, i32 %83)
  %85 = load i8*, i8** @DUMMY_PTR, align 8
  %86 = icmp ne i8* %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.idr*, %struct.idr** %3, align 8
  %90 = call i32 @idr_is_empty(%struct.idr* %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @idr_alloc_u32(%struct.idr*, i8*, i32*, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @idr_get_next(%struct.idr*, i32*) #1

declare dso_local i32 @idr_for_each(%struct.idr*, i32, i32*) #1

declare dso_local i8* @idr_remove(%struct.idr*, i32) #1

declare dso_local i32 @idr_is_empty(%struct.idr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
