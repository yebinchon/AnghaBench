; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__probe_btf_func.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__probe_btf_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__const.bpf_object__probe_btf_func.strs = private unnamed_addr constant [9 x i8] c"\00int\00x\00a\00", align 1
@BTF_INT_SIGNED = common dso_local global i32 0, align 4
@BTF_KIND_FUNC_PROTO = common dso_local global i32 0, align 4
@BTF_KIND_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*)* @bpf_object__probe_btf_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__probe_btf_func(%struct.bpf_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca [9 x i8], align 1
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  %7 = bitcast [9 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.bpf_object__probe_btf_func.strs, i32 0, i32 0), i64 9, i1 false)
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* @BTF_INT_SIGNED, align 4
  %10 = call i32 @BTF_TYPE_INT_ENC(i32 1, i32 %9, i32 0, i32 32, i32 4)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  %12 = load i32, i32* @BTF_KIND_FUNC_PROTO, align 4
  %13 = call i32 @BTF_INFO_ENC(i32 %12, i32 0, i32 1)
  %14 = call i32 @BTF_TYPE_ENC(i32 0, i32 %13, i32 0)
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = call i32 @BTF_PARAM_ENC(i32 7, i32 1)
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @BTF_KIND_FUNC, align 4
  %19 = call i32 @BTF_INFO_ENC(i32 %18, i32 0, i32 0)
  %20 = call i32 @BTF_TYPE_ENC(i32 5, i32 %19, i32 2)
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %22 = bitcast i32* %21 to i8*
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %24 = call i32 @libbpf__load_raw_btf(i8* %22, i32 16, i8* %23, i32 9)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %29 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @close(i32 %31)
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BTF_TYPE_INT_ENC(i32, i32, i32, i32, i32) #2

declare dso_local i32 @BTF_TYPE_ENC(i32, i32, i32) #2

declare dso_local i32 @BTF_INFO_ENC(i32, i32, i32) #2

declare dso_local i32 @BTF_PARAM_ENC(i32, i32) #2

declare dso_local i32 @libbpf__load_raw_btf(i8*, i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
