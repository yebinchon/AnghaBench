; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_kvmalloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_kvmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ext4_kvmalloc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @__GFP_NOWARN, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @kmalloc(i64 %6, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PAGE_KERNEL, align 4
  %17 = call i8* @__vmalloc(i64 %14, i32 %15, i32 %16)
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i8*, i8** %5, align 8
  ret i8* %19
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i8* @__vmalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
