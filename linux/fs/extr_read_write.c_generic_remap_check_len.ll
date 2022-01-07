; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_generic_remap_check_len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_generic_remap_check_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@REMAP_FILE_CAN_SHORTEN = common dso_local global i32 0, align 4
@EBADE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, i64, i64*, i32)* @generic_remap_check_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_remap_check_len(%struct.inode* %0, %struct.inode* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i64 @i_blocksize(%struct.inode* %14)
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %12, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = and i64 %20, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %70

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %31, %33
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i64 @i_size_read(%struct.inode* %35)
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30, %25
  %39 = load i64, i64* %12, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %13, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %38, %30
  %44 = load i64, i64* %13, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %70

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @REMAP_FILE_CAN_SHORTEN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* %13, align 8
  %56 = load i64*, i64** %10, align 8
  store i64 %55, i64* %56, align 8
  store i32 0, i32* %6, align 4
  br label %70

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EBADE, align 4
  %64 = sub nsw i32 0, %63
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i32 [ %64, %62 ], [ %67, %65 ]
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %54, %48, %24
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @i_blocksize(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
