; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_enable.c_build_merkle_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_enable.c_build_merkle_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.merkle_tree_params = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ahash_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.merkle_tree_params*, i32*)* @build_merkle_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_merkle_tree(%struct.inode* %0, %struct.merkle_tree_params* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.merkle_tree_params*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ahash_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.merkle_tree_params* %1, %struct.merkle_tree_params** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %22 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32* %20, i32 0, i32 %23)
  store i32 0, i32* %4, align 4
  br label %101

25:                                               ; preds = %3
  %26 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %27 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc(i32 %28, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %32 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ahash_request* @ahash_request_alloc(i32 %35, i32 %36)
  store %struct.ahash_request* %37, %struct.ahash_request** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %42 = icmp ne %struct.ahash_request* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %25
  br label %95

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %49 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %54 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %52, %55
  store i32 %56, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %85, %44
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %60 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ule i32 %58, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %70 = call i32 @build_merkle_tree_level(%struct.inode* %64, i32 %65, i32 %66, %struct.merkle_tree_params* %67, i32* %68, %struct.ahash_request* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %95

74:                                               ; preds = %63
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %77 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %82 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %80, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %57

88:                                               ; preds = %57
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %92 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32* %89, i32* %90, i32 %93)
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %88, %73, %43
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @kfree(i32* %96)
  %98 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %99 = call i32 @ahash_request_free(%struct.ahash_request* %98)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %95, %19
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local %struct.ahash_request* @ahash_request_alloc(i32, i32) #1

declare dso_local i32 @build_merkle_tree_level(%struct.inode*, i32, i32, %struct.merkle_tree_params*, i32*, %struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ahash_request_free(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
