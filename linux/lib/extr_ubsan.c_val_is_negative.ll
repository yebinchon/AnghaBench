; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c_val_is_negative.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c_val_is_negative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type_descriptor*, i8*)* @val_is_negative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @val_is_negative(%struct.type_descriptor* %0, i8* %1) #0 {
  %3 = alloca %struct.type_descriptor*, align 8
  %4 = alloca i8*, align 8
  store %struct.type_descriptor* %0, %struct.type_descriptor** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.type_descriptor*, %struct.type_descriptor** %3, align 8
  %6 = call i64 @type_is_signed(%struct.type_descriptor* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.type_descriptor*, %struct.type_descriptor** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @get_signed_val(%struct.type_descriptor* %9, i8* %10)
  %12 = icmp slt i64 %11, 0
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i1 [ false, %2 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i64 @type_is_signed(%struct.type_descriptor*) #1

declare dso_local i64 @get_signed_val(%struct.type_descriptor*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
