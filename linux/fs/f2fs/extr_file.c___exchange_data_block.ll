; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c___exchange_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c___exchange_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, i32, i32, i32, i32)* @__exchange_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__exchange_data_block(%struct.inode* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  br label %18

18:                                               ; preds = %75, %6
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %89

21:                                               ; preds = %18
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call i32 @ADDRS_PER_BLOCK(%struct.inode* %22)
  %24 = mul nsw i32 4, %23
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @min(i32 %24, i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i32 @F2FS_I_SB(%struct.inode* %27)
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @array_size(i32 %29, i32 4)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @f2fs_kvzalloc(i32 %28, i32 %30, i32 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %102

38:                                               ; preds = %21
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i32 @F2FS_I_SB(%struct.inode* %39)
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @array_size(i32 %41, i32 4)
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @f2fs_kvzalloc(i32 %40, i32 %42, i32 %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @kvfree(i32* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %102

52:                                               ; preds = %38
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @__read_out_blkaddrs(%struct.inode* %53, i32* %54, i32* %55, i32 %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %90

62:                                               ; preds = %52
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @__clone_blkaddrs(%struct.inode* %63, %struct.inode* %64, i32* %65, i32* %66, i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %90

75:                                               ; preds = %62
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @kvfree(i32* %85)
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @kvfree(i32* %87)
  br label %18

89:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %102

90:                                               ; preds = %74, %61
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @__roll_back_blkaddrs(%struct.inode* %91, i32* %92, i32* %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @kvfree(i32* %97)
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @kvfree(i32* %99)
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %90, %89, %47, %35
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ADDRS_PER_BLOCK(%struct.inode*) #1

declare dso_local i32* @f2fs_kvzalloc(i32, i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @__read_out_blkaddrs(%struct.inode*, i32*, i32*, i32, i32) #1

declare dso_local i32 @__clone_blkaddrs(%struct.inode*, %struct.inode*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__roll_back_blkaddrs(%struct.inode*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
