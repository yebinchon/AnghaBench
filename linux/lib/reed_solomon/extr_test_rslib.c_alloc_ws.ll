; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_alloc_ws.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_alloc_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wspace = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rs_codec = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wspace* (%struct.rs_codec*)* @alloc_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wspace* @alloc_ws(%struct.rs_codec* %0) #0 {
  %2 = alloca %struct.wspace*, align 8
  %3 = alloca %struct.rs_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wspace*, align 8
  %6 = alloca i32, align 4
  store %struct.rs_codec* %0, %struct.rs_codec** %3, align 8
  %7 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %8 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %11 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wspace* @kzalloc(i32 48, i32 %13)
  store %struct.wspace* %14, %struct.wspace** %5, align 8
  %15 = load %struct.wspace*, %struct.wspace** %5, align 8
  %16 = icmp ne %struct.wspace* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.wspace* null, %struct.wspace** %2, align 8
  br label %82

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  %22 = mul nsw i32 2, %21
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc_array(i32 %22, i32 4, i32 %23)
  %25 = load %struct.wspace*, %struct.wspace** %5, align 8
  %26 = getelementptr inbounds %struct.wspace, %struct.wspace* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.wspace*, %struct.wspace** %5, align 8
  %28 = getelementptr inbounds %struct.wspace, %struct.wspace* %27, i32 0, i32 5
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %79

32:                                               ; preds = %18
  %33 = load %struct.wspace*, %struct.wspace** %5, align 8
  %34 = getelementptr inbounds %struct.wspace, %struct.wspace* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = load %struct.wspace*, %struct.wspace** %5, align 8
  %40 = getelementptr inbounds %struct.wspace, %struct.wspace* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.wspace*, %struct.wspace** %5, align 8
  %42 = getelementptr inbounds %struct.wspace, %struct.wspace* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = load %struct.wspace*, %struct.wspace** %5, align 8
  %48 = getelementptr inbounds %struct.wspace, %struct.wspace* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.wspace*, %struct.wspace** %5, align 8
  %50 = getelementptr inbounds %struct.wspace, %struct.wspace* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = load %struct.wspace*, %struct.wspace** %5, align 8
  %56 = getelementptr inbounds %struct.wspace, %struct.wspace* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kmalloc_array(i32 %59, i32 4, i32 %60)
  %62 = load %struct.wspace*, %struct.wspace** %5, align 8
  %63 = getelementptr inbounds %struct.wspace, %struct.wspace* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.wspace*, %struct.wspace** %5, align 8
  %65 = getelementptr inbounds %struct.wspace, %struct.wspace* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %32
  br label %79

69:                                               ; preds = %32
  %70 = load %struct.wspace*, %struct.wspace** %5, align 8
  %71 = getelementptr inbounds %struct.wspace, %struct.wspace* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %72, i64 %74
  %76 = load %struct.wspace*, %struct.wspace** %5, align 8
  %77 = getelementptr inbounds %struct.wspace, %struct.wspace* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.wspace*, %struct.wspace** %5, align 8
  store %struct.wspace* %78, %struct.wspace** %2, align 8
  br label %82

79:                                               ; preds = %68, %31
  %80 = load %struct.wspace*, %struct.wspace** %5, align 8
  %81 = call i32 @free_ws(%struct.wspace* %80)
  store %struct.wspace* null, %struct.wspace** %2, align 8
  br label %82

82:                                               ; preds = %79, %69, %17
  %83 = load %struct.wspace*, %struct.wspace** %2, align 8
  ret %struct.wspace* %83
}

declare dso_local %struct.wspace* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @free_ws(%struct.wspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
