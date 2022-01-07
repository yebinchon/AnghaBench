; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_file_splice_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_file_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pipe_inode_info = type { i32 }

@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* @relay_file_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relay_file_splice_read(%struct.file* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pipe_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %62, %5
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %66

24:                                               ; preds = %22
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @subbuf_splice_actor(%struct.file* %25, i32* %26, %struct.pipe_inode_info* %27, i64 %28, i32 %29, i32* %14)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %66

34:                                               ; preds = %24
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %37
  br label %66

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %10, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i64 0, i64* %10, align 8
  br label %62

57:                                               ; preds = %47
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %57, %56
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %15

66:                                               ; preds = %45, %33, %22
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @subbuf_splice_actor(%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
