; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c_is_inline_int.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c_is_inline_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type_descriptor*)* @is_inline_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_inline_int(%struct.type_descriptor* %0) #0 {
  %2 = alloca %struct.type_descriptor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.type_descriptor* %0, %struct.type_descriptor** %2, align 8
  store i32 64, i32* %3, align 4
  %5 = load %struct.type_descriptor*, %struct.type_descriptor** %2, align 8
  %6 = call i32 @type_bit_width(%struct.type_descriptor* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.type_descriptor*, %struct.type_descriptor** %2, align 8
  %8 = call i32 @type_is_int(%struct.type_descriptor* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ule i32 %13, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @type_bit_width(%struct.type_descriptor*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @type_is_int(%struct.type_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
