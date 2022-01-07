; ModuleID = '/home/carl/AnghaBench/linux/kernel/printk/extr_printk_safe.c_vprintk_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/printk/extr_printk_safe.c_vprintk_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@printk_context = common dso_local global i32 0, align 4
@PRINTK_NMI_DIRECT_CONTEXT_MASK = common dso_local global i32 0, align 4
@logbuf_lock = common dso_local global i32 0, align 4
@LOGLEVEL_DEFAULT = common dso_local global i32 0, align 4
@PRINTK_NMI_CONTEXT_MASK = common dso_local global i32 0, align 4
@PRINTK_SAFE_CONTEXT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vprintk_func(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @printk_context, align 4
  %8 = call i32 @this_cpu_read(i32 %7)
  %9 = load i32, i32* @PRINTK_NMI_DIRECT_CONTEXT_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = call i64 @raw_spin_trylock(i32* @logbuf_lock)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* @LOGLEVEL_DEFAULT, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @vprintk_store(i32 0, i32 %16, i32* null, i32 0, i8* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = call i32 @raw_spin_unlock(i32* @logbuf_lock)
  %21 = call i32 (...) @defer_console_output()
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %12, %2
  %24 = load i32, i32* @printk_context, align 4
  %25 = call i32 @this_cpu_read(i32 %24)
  %26 = load i32, i32* @PRINTK_NMI_CONTEXT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @vprintk_nmi(i8* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %47

33:                                               ; preds = %23
  %34 = load i32, i32* @printk_context, align 4
  %35 = call i32 @this_cpu_read(i32 %34)
  %36 = load i32, i32* @PRINTK_SAFE_CONTEXT_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @vprintk_safe(i8* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %33
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @vprintk_default(i8* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %39, %29, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i64 @raw_spin_trylock(i32*) #1

declare dso_local i32 @vprintk_store(i32, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @defer_console_output(...) #1

declare dso_local i32 @vprintk_nmi(i8*, i32) #1

declare dso_local i32 @vprintk_safe(i8*, i32) #1

declare dso_local i32 @vprintk_default(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
