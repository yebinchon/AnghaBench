; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c_val_to_string.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c_val_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_descriptor = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.type_descriptor*, i8*)* @val_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @val_to_string(i8* %0, i64 %1, %struct.type_descriptor* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.type_descriptor*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.type_descriptor* %2, %struct.type_descriptor** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.type_descriptor*, %struct.type_descriptor** %7, align 8
  %10 = call i64 @type_is_int(%struct.type_descriptor* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %4
  %13 = load %struct.type_descriptor*, %struct.type_descriptor** %7, align 8
  %14 = call i32 @type_bit_width(%struct.type_descriptor* %13)
  %15 = icmp eq i32 %14, 128
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @WARN_ON(i32 1)
  br label %38

18:                                               ; preds = %12
  %19 = load %struct.type_descriptor*, %struct.type_descriptor** %7, align 8
  %20 = call i64 @type_is_signed(%struct.type_descriptor* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.type_descriptor*, %struct.type_descriptor** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @get_signed_val(%struct.type_descriptor* %25, i8* %26)
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, i64, i8*, i32, ...) @scnprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %37

30:                                               ; preds = %18
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.type_descriptor*, %struct.type_descriptor** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @get_unsigned_val(%struct.type_descriptor* %33, i8* %34)
  %36 = call i32 (i8*, i64, i8*, i32, ...) @scnprintf(i8* %31, i64 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %22
  br label %38

38:                                               ; preds = %37, %16
  br label %39

39:                                               ; preds = %38, %4
  ret void
}

declare dso_local i64 @type_is_int(%struct.type_descriptor*) #1

declare dso_local i32 @type_bit_width(%struct.type_descriptor*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @type_is_signed(%struct.type_descriptor*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, ...) #1

declare dso_local i64 @get_signed_val(%struct.type_descriptor*, i8*) #1

declare dso_local i32 @get_unsigned_val(%struct.type_descriptor*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
