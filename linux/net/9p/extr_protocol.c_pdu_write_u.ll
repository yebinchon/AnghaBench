; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_protocol.c_pdu_write_u.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_protocol.c_pdu_write_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fcall = type { i64, i32*, i64 }
%struct.iov_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.p9_fcall*, %struct.iov_iter*, i64)* @pdu_write_u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pdu_write_u(%struct.p9_fcall* %0, %struct.iov_iter* %1, i64 %2) #0 {
  %4 = alloca %struct.p9_fcall*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iov_iter, align 4
  store %struct.p9_fcall* %0, %struct.p9_fcall** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.p9_fcall*, %struct.p9_fcall** %4, align 8
  %10 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.p9_fcall*, %struct.p9_fcall** %4, align 8
  %13 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @min(i64 %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %19 = bitcast %struct.iov_iter* %8 to i8*
  %20 = bitcast %struct.iov_iter* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.p9_fcall*, %struct.p9_fcall** %4, align 8
  %22 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.p9_fcall*, %struct.p9_fcall** %4, align 8
  %25 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @copy_from_iter_full(i32* %27, i64 %28, %struct.iov_iter* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.p9_fcall*, %struct.p9_fcall** %4, align 8
  %35 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %38, %39
  ret i64 %40
}

declare dso_local i64 @min(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @copy_from_iter_full(i32*, i64, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
