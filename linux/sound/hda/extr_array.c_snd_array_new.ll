; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_array.c_snd_array_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_array.c_snd_array_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_array = type { i32, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @snd_array_new(%struct.snd_array* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.snd_array* %0, %struct.snd_array** %3, align 8
  %8 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %9 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %84

17:                                               ; preds = %1
  %18 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %19 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %22 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %17
  %26 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %27 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %30 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %34 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %37 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %43 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 4096
  %48 = zext i1 %47 to i32
  %49 = call i64 @snd_BUG_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %84

52:                                               ; preds = %25
  %53 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %54 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @krealloc(i8* %55, i32 %56, i32 %57)
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store i8* null, i8** %2, align 8
  br label %84

62:                                               ; preds = %52
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i32 @memset(i8* %66, i32 0, i32 %69)
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %73 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %76 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %62, %17
  %78 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %79 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %80 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = call i8* @snd_array_elem(%struct.snd_array* %78, i32 %81)
  store i8* %83, i8** %2, align 8
  br label %84

84:                                               ; preds = %77, %61, %51, %16
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i8* @krealloc(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @snd_array_elem(%struct.snd_array*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
