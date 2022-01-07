; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_is_jit_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_is_jit_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"/proc/sys/net/core/bpf_jit_enable\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_jit_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_jit_enabled() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 0, i32* %2, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = load i32, i32* @O_RDONLY, align 4
  %7 = call i32 @open(i8* %5, i32 0, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %22

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @read(i32 %11, i8* %4, i32 1)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 48
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @close(i32 %20)
  br label %22

22:                                               ; preds = %19, %0
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
