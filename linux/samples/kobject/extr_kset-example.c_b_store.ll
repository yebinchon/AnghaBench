; ModuleID = '/home/carl/AnghaBench/linux/samples/kobject/extr_kset-example.c_b_store.c'
source_filename = "/home/carl/AnghaBench/linux/samples/kobject/extr_kset-example.c_b_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_obj = type { i32, i32 }
%struct.foo_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.foo_obj*, %struct.foo_attribute*, i8*, i64)* @b_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_store(%struct.foo_obj* %0, %struct.foo_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.foo_obj*, align 8
  %7 = alloca %struct.foo_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.foo_obj* %0, %struct.foo_obj** %6, align 8
  store %struct.foo_attribute* %1, %struct.foo_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @kstrtoint(i8* %12, i32 10, i32* %10)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load %struct.foo_attribute*, %struct.foo_attribute** %7, align 8
  %20 = getelementptr inbounds %struct.foo_attribute, %struct.foo_attribute* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.foo_obj*, %struct.foo_obj** %6, align 8
  %28 = getelementptr inbounds %struct.foo_obj, %struct.foo_obj* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.foo_obj*, %struct.foo_obj** %6, align 8
  %32 = getelementptr inbounds %struct.foo_obj, %struct.foo_obj* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %16
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
