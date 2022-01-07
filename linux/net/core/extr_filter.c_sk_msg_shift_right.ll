; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_msg_shift_right.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_msg_shift_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_msg*, i32)* @sk_msg_shift_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_msg_shift_right(%struct.sk_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca %struct.scatterlist, align 4
  %8 = alloca %struct.scatterlist, align 4
  %9 = alloca %struct.scatterlist, align 4
  store %struct.sk_msg* %0, %struct.sk_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sk_msg*, %struct.sk_msg** %3, align 8
  %11 = load i32, i32* @end, align 4
  %12 = call i32 @sk_msg_iter_next(%struct.sk_msg* %10, i32 %11)
  %13 = load %struct.sk_msg*, %struct.sk_msg** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @sk_msg_elem_cpy(%struct.sk_msg* %13, i32 %14)
  %16 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.scatterlist* %6 to i8*
  %18 = bitcast %struct.scatterlist* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sk_msg_iter_var_next(i32 %19)
  %21 = load %struct.sk_msg*, %struct.sk_msg** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sk_msg_elem_cpy(%struct.sk_msg* %21, i32 %22)
  %24 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.scatterlist* %5 to i8*
  %26 = bitcast %struct.scatterlist* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %34, %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.sk_msg*, %struct.sk_msg** %3, align 8
  %30 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = load %struct.sk_msg*, %struct.sk_msg** %3, align 8
  %36 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.scatterlist*, %struct.scatterlist** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i64 %40
  %42 = bitcast %struct.scatterlist* %41 to i8*
  %43 = bitcast %struct.scatterlist* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @sk_msg_iter_var_next(i32 %44)
  %46 = bitcast %struct.scatterlist* %6 to i8*
  %47 = bitcast %struct.scatterlist* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.sk_msg*, %struct.sk_msg** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @sk_msg_elem_cpy(%struct.sk_msg* %48, i32 %49)
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %9, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.scatterlist* %5 to i8*
  %53 = bitcast %struct.scatterlist* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  br label %27

54:                                               ; preds = %27
  ret void
}

declare dso_local i32 @sk_msg_iter_next(%struct.sk_msg*, i32) #1

declare dso_local i32 @sk_msg_elem_cpy(%struct.sk_msg*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sk_msg_iter_var_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
