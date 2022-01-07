; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_loop_readv_writev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_loop_readv_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.file*, i32, i64, i32*)*, i64 (%struct.file*, i32, i64, i32*)* }
%struct.iov_iter = type { i32 }
%struct.iovec = type { i64, i32 }

@RWF_HIPRI = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.iov_iter*, i32*, i32, i32)* @do_loop_readv_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_loop_readv_writev(%struct.file* %0, %struct.iov_iter* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @RWF_HIPRI, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i64, i64* @EOPNOTSUPP, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %6, align 8
  br label %89

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %83, %23
  %25 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %26 = call i64 @iov_iter_count(%struct.iov_iter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %24
  %29 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %30 = call { i64, i32 } @iov_iter_iovec(%struct.iov_iter* %29)
  %31 = bitcast %struct.iovec* %13 to { i64, i32 }*
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %33 = extractvalue { i64, i32 } %30, 0
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %35 = extractvalue { i64, i32 } %30, 1
  store i32 %35, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @READ, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %28
  %40 = load %struct.file*, %struct.file** %7, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64 (%struct.file*, i32, i64, i32*)*, i64 (%struct.file*, i32, i64, i32*)** %43, align 8
  %45 = load %struct.file*, %struct.file** %7, align 8
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 %44(%struct.file* %45, i32 %47, i64 %49, i32* %50)
  store i64 %51, i64* %14, align 8
  br label %65

52:                                               ; preds = %28
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64 (%struct.file*, i32, i64, i32*)*, i64 (%struct.file*, i32, i64, i32*)** %56, align 8
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 %57(%struct.file* %58, i32 %60, i64 %62, i32* %63)
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %52, %39
  %66 = load i64, i64* %14, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %14, align 8
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %71, %68
  br label %87

74:                                               ; preds = %65
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %14, align 8
  %79 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %87

83:                                               ; preds = %74
  %84 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @iov_iter_advance(%struct.iov_iter* %84, i64 %85)
  br label %24

87:                                               ; preds = %82, %73, %24
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %87, %20
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local { i64, i32 } @iov_iter_iovec(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
