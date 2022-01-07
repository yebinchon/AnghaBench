; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_ida.c_ida_check_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_ida.c_ida_check_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida*)* @ida_check_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_check_destroy(%struct.ida* %0) #0 {
  %2 = alloca %struct.ida*, align 8
  store %struct.ida* %0, %struct.ida** %2, align 8
  %3 = load %struct.ida*, %struct.ida** %2, align 8
  %4 = load %struct.ida*, %struct.ida** %2, align 8
  %5 = call i32 @ida_is_empty(%struct.ida* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @IDA_BUG_ON(%struct.ida* %3, i32 %8)
  %10 = load %struct.ida*, %struct.ida** %2, align 8
  %11 = call i32 @ida_destroy(%struct.ida* %10)
  %12 = load %struct.ida*, %struct.ida** %2, align 8
  %13 = load %struct.ida*, %struct.ida** %2, align 8
  %14 = call i32 @ida_is_empty(%struct.ida* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @IDA_BUG_ON(%struct.ida* %12, i32 %17)
  %19 = load %struct.ida*, %struct.ida** %2, align 8
  %20 = call i32 @ida_check_destroy_1(%struct.ida* %19, i32 0)
  %21 = load %struct.ida*, %struct.ida** %2, align 8
  %22 = call i32 @ida_check_destroy_1(%struct.ida* %21, i32 1)
  %23 = load %struct.ida*, %struct.ida** %2, align 8
  %24 = call i32 @ida_check_destroy_1(%struct.ida* %23, i32 1023)
  %25 = load %struct.ida*, %struct.ida** %2, align 8
  %26 = call i32 @ida_check_destroy_1(%struct.ida* %25, i32 1024)
  %27 = load %struct.ida*, %struct.ida** %2, align 8
  %28 = call i32 @ida_check_destroy_1(%struct.ida* %27, i32 12345678)
  ret void
}

declare dso_local i32 @IDA_BUG_ON(%struct.ida*, i32) #1

declare dso_local i32 @ida_is_empty(%struct.ida*) #1

declare dso_local i32 @ida_destroy(%struct.ida*) #1

declare dso_local i32 @ida_check_destroy_1(%struct.ida*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
