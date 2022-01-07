; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c_get_unsigned_val.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c_get_unsigned_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.type_descriptor*, i8*)* @get_unsigned_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_unsigned_val(%struct.type_descriptor* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.type_descriptor*, align 8
  %5 = alloca i8*, align 8
  store %struct.type_descriptor* %0, %struct.type_descriptor** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.type_descriptor*, %struct.type_descriptor** %4, align 8
  %7 = call i64 @is_inline_int(%struct.type_descriptor* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.type_descriptor*, %struct.type_descriptor** %4, align 8
  %14 = call i32 @type_bit_width(%struct.type_descriptor* %13)
  %15 = icmp eq i32 %14, 64
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  br label %24

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %20, %16, %9
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i64 @is_inline_int(%struct.type_descriptor*) #1

declare dso_local i32 @type_bit_width(%struct.type_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
