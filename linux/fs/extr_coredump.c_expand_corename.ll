; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_coredump.c_expand_corename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_coredump.c_expand_corename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_name = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@core_name_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.core_name*, i32)* @expand_corename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_corename(%struct.core_name* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.core_name*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.core_name* %0, %struct.core_name** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.core_name*, %struct.core_name** %4, align 8
  %8 = getelementptr inbounds %struct.core_name, %struct.core_name* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @krealloc(i8* %9, i32 %10, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @core_name_size, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* @core_name_size, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @ksize(i8* %25)
  %27 = load %struct.core_name*, %struct.core_name** %4, align 8
  %28 = getelementptr inbounds %struct.core_name, %struct.core_name* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.core_name*, %struct.core_name** %4, align 8
  %31 = getelementptr inbounds %struct.core_name, %struct.core_name* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i8* @krealloc(i8*, i32, i32) #1

declare dso_local i32 @ksize(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
