; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns5.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.sock_filter* }
%struct.sock_filter = type { i32 }

@BPF_MAXINSNS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@BPF_RET = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns5(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_filter, align 4
  %8 = alloca %struct.sock_filter, align 4
  %9 = alloca %struct.sock_filter, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %10 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sock_filter* @kmalloc_array(i32 %11, i32 4, i32 %12)
  store %struct.sock_filter* %13, %struct.sock_filter** %5, align 8
  %14 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %15 = icmp ne %struct.sock_filter* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %74

19:                                               ; preds = %1
  %20 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %21 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %20, i64 0
  %22 = load i32, i32* @BPF_JMP, align 4
  %23 = load i32, i32* @BPF_JA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = sub i32 %25, 2
  %27 = call i32 @__BPF_JUMP(i32 %24, i32 %26, i32 0, i32 0)
  %28 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.sock_filter* %21 to i8*
  %30 = bitcast %struct.sock_filter* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %48, %19
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub i32 %33, 1
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %37, i64 %39
  %41 = load i32, i32* @BPF_RET, align 4
  %42 = load i32, i32* @BPF_K, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @__BPF_STMT(i32 %43, i32 -16843010)
  %45 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = bitcast %struct.sock_filter* %40 to i8*
  %47 = bitcast %struct.sock_filter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sub i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %52, i64 %55
  %57 = load i32, i32* @BPF_RET, align 4
  %58 = load i32, i32* @BPF_K, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @__BPF_STMT(i32 %59, i32 -1414812757)
  %61 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %9, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = bitcast %struct.sock_filter* %56 to i8*
  %63 = bitcast %struct.sock_filter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.sock_filter*, %struct.sock_filter** %5, align 8
  %65 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %66 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store %struct.sock_filter* %64, %struct.sock_filter** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %71 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %51, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.sock_filter* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__BPF_JUMP(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__BPF_STMT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
