; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_get_by_fd.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_get_by_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btf*, i32* }

@EBADF = common dso_local global i32 0, align 4
@btf_fops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btf* @btf_get_by_fd(i32 %0) #0 {
  %2 = alloca %struct.btf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf*, align 8
  %5 = alloca %struct.fd, align 8
  %6 = alloca %struct.fd, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_2__* @fdget(i32 %7)
  %9 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %9, align 8
  %10 = bitcast %struct.fd* %5 to i8*
  %11 = bitcast %struct.fd* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EBADF, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.btf* @ERR_PTR(i32 %17)
  store %struct.btf* %18, %struct.btf** %2, align 8
  br label %44

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, @btf_fops
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @fdput(%struct.TYPE_2__* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.btf* @ERR_PTR(i32 %30)
  store %struct.btf* %31, %struct.btf** %2, align 8
  br label %44

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.btf*, %struct.btf** %35, align 8
  store %struct.btf* %36, %struct.btf** %4, align 8
  %37 = load %struct.btf*, %struct.btf** %4, align 8
  %38 = getelementptr inbounds %struct.btf, %struct.btf* %37, i32 0, i32 0
  %39 = call i32 @refcount_inc(i32* %38)
  %40 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @fdput(%struct.TYPE_2__* %41)
  %43 = load %struct.btf*, %struct.btf** %4, align 8
  store %struct.btf* %43, %struct.btf** %2, align 8
  br label %44

44:                                               ; preds = %32, %25, %15
  %45 = load %struct.btf*, %struct.btf** %2, align 8
  ret %struct.btf* %45
}

declare dso_local %struct.TYPE_2__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.btf* @ERR_PTR(i32) #1

declare dso_local i32 @fdput(%struct.TYPE_2__*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
