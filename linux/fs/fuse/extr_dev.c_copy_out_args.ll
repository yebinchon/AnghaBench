; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_copy_out_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_copy_out_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i32 }
%struct.fuse_args = type { i32, i32, %struct.fuse_arg*, i32, i32 }
%struct.fuse_arg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, %struct.fuse_args*, i32)* @copy_out_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_out_args(%struct.fuse_copy_state* %0, %struct.fuse_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_copy_state*, align 8
  %6 = alloca %struct.fuse_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_arg*, align 8
  %10 = alloca i32, align 4
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %5, align 8
  store %struct.fuse_args* %1, %struct.fuse_args** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %11 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %12 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %15 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %14, i32 0, i32 2
  %16 = load %struct.fuse_arg*, %struct.fuse_arg** %15, align 8
  %17 = call i64 @fuse_len_args(i32 %13, %struct.fuse_arg* %16)
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %31 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %84

37:                                               ; preds = %29, %25
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %43 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %42, i32 0, i32 2
  %44 = load %struct.fuse_arg*, %struct.fuse_arg** %43, align 8
  %45 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %46 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fuse_arg, %struct.fuse_arg* %44, i64 %49
  store %struct.fuse_arg* %50, %struct.fuse_arg** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.fuse_arg*, %struct.fuse_arg** %9, align 8
  %56 = getelementptr inbounds %struct.fuse_arg, %struct.fuse_arg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ugt i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %84

62:                                               ; preds = %41
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.fuse_arg*, %struct.fuse_arg** %9, align 8
  %65 = getelementptr inbounds %struct.fuse_arg, %struct.fuse_arg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %37
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %71 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %72 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %75 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %78 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %77, i32 0, i32 2
  %79 = load %struct.fuse_arg*, %struct.fuse_arg** %78, align 8
  %80 = load %struct.fuse_args*, %struct.fuse_args** %6, align 8
  %81 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fuse_copy_args(%struct.fuse_copy_state* %70, i32 %73, i32 %76, %struct.fuse_arg* %79, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %69, %59, %34
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @fuse_len_args(i32, %struct.fuse_arg*) #1

declare dso_local i32 @fuse_copy_args(%struct.fuse_copy_state*, i32, i32, %struct.fuse_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
