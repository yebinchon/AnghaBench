; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf_probes.c_load_sk_storage_btf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf_probes.c_load_sk_storage_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.load_sk_storage_btf.strs = private unnamed_addr constant [25 x i8] c"\00bpf_spin_lock\00val\00cnt\00l\00", align 16
@BTF_INT_SIGNED = common dso_local global i32 0, align 4
@BTF_KIND_STRUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @load_sk_storage_btf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_sk_storage_btf() #0 {
  %1 = alloca [25 x i8], align 16
  %2 = alloca [6 x i32], align 16
  %3 = bitcast [25 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.load_sk_storage_btf.strs, i32 0, i32 0), i64 25, i1 false)
  %4 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %5 = load i32, i32* @BTF_INT_SIGNED, align 4
  %6 = call i32 @BTF_TYPE_INT_ENC(i32 0, i32 %5, i32 0, i32 32, i32 4)
  store i32 %6, i32* %4, align 4
  %7 = getelementptr inbounds i32, i32* %4, i64 1
  %8 = load i32, i32* @BTF_KIND_STRUCT, align 4
  %9 = call i32 @BTF_INFO_ENC(i32 %8, i32 0, i32 1)
  %10 = call i32 @BTF_TYPE_ENC(i32 1, i32 %9, i32 4)
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds i32, i32* %7, i64 1
  %12 = call i32 @BTF_MEMBER_ENC(i32 15, i32 1, i32 0)
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @BTF_KIND_STRUCT, align 4
  %15 = call i32 @BTF_INFO_ENC(i32 %14, i32 0, i32 2)
  %16 = call i32 @BTF_TYPE_ENC(i32 15, i32 %15, i32 8)
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds i32, i32* %13, i64 1
  %18 = call i32 @BTF_MEMBER_ENC(i32 19, i32 1, i32 0)
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = call i32 @BTF_MEMBER_ENC(i32 23, i32 2, i32 32)
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %22 = bitcast i32* %21 to i8*
  %23 = getelementptr inbounds [25 x i8], [25 x i8]* %1, i64 0, i64 0
  %24 = call i32 @libbpf__load_raw_btf(i8* %22, i32 24, i8* %23, i32 25)
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BTF_TYPE_INT_ENC(i32, i32, i32, i32, i32) #2

declare dso_local i32 @BTF_TYPE_ENC(i32, i32, i32) #2

declare dso_local i32 @BTF_INFO_ENC(i32, i32, i32) #2

declare dso_local i32 @BTF_MEMBER_ENC(i32, i32, i32) #2

declare dso_local i32 @libbpf__load_raw_btf(i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
