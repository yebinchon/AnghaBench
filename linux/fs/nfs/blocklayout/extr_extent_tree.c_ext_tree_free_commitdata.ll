; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_free_commitdata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_free_commitdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_layoutcommit_args = type { i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_layoutcommit_args*, i64)* @ext_tree_free_commitdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext_tree_free_commitdata(%struct.nfs4_layoutcommit_args* %0, i64 %1) #0 {
  %3 = alloca %struct.nfs4_layoutcommit_args*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfs4_layoutcommit_args* %0, %struct.nfs4_layoutcommit_args** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.nfs4_layoutcommit_args*, %struct.nfs4_layoutcommit_args** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_layoutcommit_args, %struct.nfs4_layoutcommit_args* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.nfs4_layoutcommit_args*, %struct.nfs4_layoutcommit_args** %3, align 8
  %11 = getelementptr inbounds %struct.nfs4_layoutcommit_args, %struct.nfs4_layoutcommit_args* %10, i32 0, i32 0
  %12 = icmp ne i32* %9, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @DIV_ROUND_UP(i64 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %30, %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.nfs4_layoutcommit_args*, %struct.nfs4_layoutcommit_args** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_layoutcommit_args, %struct.nfs4_layoutcommit_args* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @put_page(i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.nfs4_layoutcommit_args*, %struct.nfs4_layoutcommit_args** %3, align 8
  %35 = getelementptr inbounds %struct.nfs4_layoutcommit_args, %struct.nfs4_layoutcommit_args* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @vfree(i32 %36)
  %38 = load %struct.nfs4_layoutcommit_args*, %struct.nfs4_layoutcommit_args** %3, align 8
  %39 = getelementptr inbounds %struct.nfs4_layoutcommit_args, %struct.nfs4_layoutcommit_args* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  br label %47

42:                                               ; preds = %2
  %43 = load %struct.nfs4_layoutcommit_args*, %struct.nfs4_layoutcommit_args** %3, align 8
  %44 = getelementptr inbounds %struct.nfs4_layoutcommit_args, %struct.nfs4_layoutcommit_args* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @put_page(i32 %45)
  br label %47

47:                                               ; preds = %42, %33
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
