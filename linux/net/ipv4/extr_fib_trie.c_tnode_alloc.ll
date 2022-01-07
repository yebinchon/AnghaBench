; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_tnode_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_tnode_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32 }

@TNODE_VMALLOC_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tnode* (i32)* @tnode_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tnode* @tnode_alloc(i32 %0) #0 {
  %2 = alloca %struct.tnode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TNODE_VMALLOC_MAX, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.tnode* null, %struct.tnode** %2, align 8
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  %13 = call i64 @TNODE_SIZE(i64 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tnode* @kzalloc(i64 %18, i32 %19)
  store %struct.tnode* %20, %struct.tnode** %2, align 8
  br label %24

21:                                               ; preds = %9
  %22 = load i64, i64* %4, align 8
  %23 = call %struct.tnode* @vzalloc(i64 %22)
  store %struct.tnode* %23, %struct.tnode** %2, align 8
  br label %24

24:                                               ; preds = %21, %17, %8
  %25 = load %struct.tnode*, %struct.tnode** %2, align 8
  ret %struct.tnode* %25
}

declare dso_local i64 @TNODE_SIZE(i64) #1

declare dso_local %struct.tnode* @kzalloc(i64, i32) #1

declare dso_local %struct.tnode* @vzalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
