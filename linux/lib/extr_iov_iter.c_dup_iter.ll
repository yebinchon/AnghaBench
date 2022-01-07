; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_dup_iter.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_dup_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i8*, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dup_iter(%struct.iov_iter* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %9 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %10 = bitcast %struct.iov_iter* %8 to i8*
  %11 = bitcast %struct.iov_iter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %13 = call i32 @iov_iter_is_pipe(%struct.iov_iter* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @WARN_ON(i32 1)
  store i8* null, i8** %4, align 8
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %20 = call i32 @iov_iter_is_discard(%struct.iov_iter* %19)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8* null, i8** %4, align 8
  br label %56

24:                                               ; preds = %18
  %25 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %26 = call i64 @iov_iter_is_bvec(%struct.iov_iter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %33 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @kmemdup(i8* %31, i32 %37, i32 %38)
  %40 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %41 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  store i8* %39, i8** %4, align 8
  br label %56

42:                                               ; preds = %24
  %43 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %44 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %47 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @kmemdup(i8* %45, i32 %51, i32 %52)
  %54 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %55 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  store i8* %53, i8** %4, align 8
  br label %56

56:                                               ; preds = %42, %28, %23, %16
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @iov_iter_is_pipe(%struct.iov_iter*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @iov_iter_is_discard(%struct.iov_iter*) #2

declare dso_local i64 @iov_iter_is_bvec(%struct.iov_iter*) #2

declare dso_local i8* @kmemdup(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
