; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__probe_btf_datasec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__probe_btf_datasec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__const.bpf_object__probe_btf_datasec.strs = private unnamed_addr constant [9 x i8] c"\00x\00.data\00", align 1
@BTF_INT_SIGNED = common dso_local global i32 0, align 4
@BTF_KIND_VAR = common dso_local global i32 0, align 4
@BTF_VAR_STATIC = common dso_local global i32 0, align 4
@BTF_KIND_DATASEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*)* @bpf_object__probe_btf_datasec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__probe_btf_datasec(%struct.bpf_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca [9 x i8], align 1
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  %7 = bitcast [9 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.bpf_object__probe_btf_datasec.strs, i32 0, i32 0), i64 9, i1 false)
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* @BTF_INT_SIGNED, align 4
  %10 = call i32 @BTF_TYPE_INT_ENC(i32 0, i32 %9, i32 0, i32 32, i32 4)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  %12 = load i32, i32* @BTF_KIND_VAR, align 4
  %13 = call i32 @BTF_INFO_ENC(i32 %12, i32 0, i32 0)
  %14 = call i32 @BTF_TYPE_ENC(i32 1, i32 %13, i32 1)
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = load i32, i32* @BTF_VAR_STATIC, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @BTF_KIND_DATASEC, align 4
  %19 = call i32 @BTF_INFO_ENC(i32 %18, i32 0, i32 1)
  %20 = call i32 @BTF_TYPE_ENC(i32 3, i32 %19, i32 4)
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds i32, i32* %17, i64 1
  %22 = call i32 @BTF_VAR_SECINFO_ENC(i32 2, i32 0, i32 4)
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %24 = bitcast i32* %23 to i8*
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %26 = call i32 @libbpf__load_raw_btf(i8* %24, i32 20, i8* %25, i32 9)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @close(i32 %33)
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BTF_TYPE_INT_ENC(i32, i32, i32, i32, i32) #2

declare dso_local i32 @BTF_TYPE_ENC(i32, i32, i32) #2

declare dso_local i32 @BTF_INFO_ENC(i32, i32, i32) #2

declare dso_local i32 @BTF_VAR_SECINFO_ENC(i32, i32, i32) #2

declare dso_local i32 @libbpf__load_raw_btf(i8*, i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
